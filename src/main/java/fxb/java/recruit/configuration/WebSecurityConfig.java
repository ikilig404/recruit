package fxb.java.recruit.configuration;

import fxb.java.recruit.constant.GlobalConst;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
public class WebSecurityConfig extends WebMvcConfigurerAdapter {


    @Bean
    public SecurityInterceptor getSecurityInterceptor() {
        return new SecurityInterceptor();
    }

    @Bean
    public ManagerSecurityInterceptor getManagerSecurityInterceptor() {
        return new ManagerSecurityInterceptor();
    }

    @Bean
    public HRSecurityInterceptor getHRSecurityInterceptor() {
        return new HRSecurityInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // user
        InterceptorRegistration addInterceptor = registry.addInterceptor(getSecurityInterceptor());
        // 拦截配置
//        addInterceptor.addPathPatterns("");
//        addInterceptor.addPathPatterns("/");
        addInterceptor.addPathPatterns("/user/info");
        addInterceptor.addPathPatterns("/user/resume");
//        addInterceptor.addPathPatterns("#");
        addInterceptor.addPathPatterns("/user/info#");
        addInterceptor.addPathPatterns("/user/resume#");

        // manager
        InterceptorRegistration addInterceptor2 = registry.addInterceptor(getManagerSecurityInterceptor());
//        addInterceptor.addPathPatterns("");
//        addInterceptor.addPathPatterns("/");
        addInterceptor2.addPathPatterns("/manager/index");
        addInterceptor2.addPathPatterns("/manager/contacts");
        addInterceptor2.addPathPatterns("/manager/table_jqgrid");
        addInterceptor2.addPathPatterns("/manager/position-list");
        addInterceptor2.addPathPatterns("/manager/company-review");
        addInterceptor2.addPathPatterns("/manager/company");
//        addInterceptor.addPathPatterns("#");
        addInterceptor2.addPathPatterns("/manager/index#");
        addInterceptor2.addPathPatterns("/manager/contacts#");
        addInterceptor2.addPathPatterns("/manager/table_jqgrid#");
        addInterceptor2.addPathPatterns("/manager/position-list#");
        addInterceptor2.addPathPatterns("/manager/company-review#");
        addInterceptor2.addPathPatterns("/manager/company#");

        // hr
        InterceptorRegistration addInterceptor3 = registry.addInterceptor(getHRSecurityInterceptor());
        // 拦截配置
        addInterceptor3.addPathPatterns("/hr/index");
        addInterceptor3.addPathPatterns("/hr/index_v3");
        addInterceptor3.addPathPatterns("/hr/position");
        addInterceptor3.addPathPatterns("/hr/user");
        addInterceptor3.addPathPatterns("/hr/getuser");
        addInterceptor3.addPathPatterns("/hr/position-new");
        addInterceptor3.addPathPatterns("/hr/position-closed");
        addInterceptor3.addPathPatterns("/hr/user_searching");
        addInterceptor3.addPathPatterns("/hr/index#");
        addInterceptor3.addPathPatterns("/hr/index_v3#");
        addInterceptor3.addPathPatterns("/hr/position#");
        addInterceptor3.addPathPatterns("/hr/user#");
        addInterceptor3.addPathPatterns("/hr/getuser#");
        addInterceptor3.addPathPatterns("/hr/position-closed#");
        addInterceptor3.addPathPatterns("/hr/user_searching#");
    }

    /**
     * 用户系统的登录拦截
     */
    private class SecurityInterceptor extends HandlerInterceptorAdapter {

        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
                throws Exception {
            System.out.println("拦截");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.SESSION_KEY) != null) {
                return true;
            }
            // 跳转登录
            String url = "/user/login";
            response.sendRedirect(url);
            return false;
        }

        @Override
        public void afterCompletion(
                HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
                throws Exception {
            System.out.println("拦截2");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.SESSION_KEY) == null) {
                // 跳转登录
                String url = "/user/login";
                response.sendRedirect(url);
            }
        }
    }

    /**
     * 管理员系统的登录拦截
     */
    private class ManagerSecurityInterceptor extends HandlerInterceptorAdapter {

        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
                throws Exception {
            System.out.println("manager拦截");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.Login_Admin_key) != null) {
                return true;
            }
            // 跳转登录
            String url = "/manager/login";
            response.sendRedirect(url);
            return false;
        }

        @Override
        public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
                throws Exception {
            System.out.println("manager拦截2");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.Login_Admin_key) == null) {
                // 跳转登录
                String url = "/manager/login";
                response.sendRedirect(url);
            }
        }
    }

    /**
     * HR系统的登录拦截
     */
    private class HRSecurityInterceptor extends HandlerInterceptorAdapter {

        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
                throws Exception {
            System.out.println("hr拦截");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.Login_HR_key) != null) {
                return true;
            }
            // 跳转登录
            String url = "/hr/login";
            response.sendRedirect(url);
            return false;
        }

        @Override
        public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
                throws Exception {
            System.out.println("hr拦截2");
            HttpSession session = request.getSession();
            if (session.getAttribute(GlobalConst.Login_HR_key) == null) {
                // 跳转登录
                String url = "/hr/login";
                response.sendRedirect(url);
            }
        }
    }
}
