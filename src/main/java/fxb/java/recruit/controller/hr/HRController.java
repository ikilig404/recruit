package fxb.java.recruit.controller.hr;

import com.google.gson.Gson;
import fxb.java.recruit.constant.GlobalConst;
import fxb.java.recruit.entity.*;
import fxb.java.recruit.pojo.ApplicationPositionHRBO;
import fxb.java.recruit.service.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import fxb.java.recruit.controller.BaseController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class HRController extends BaseController {


    @Autowired
    HRService hrService;

    @Autowired
    ApplicationService applicationService;

    @Autowired
    PositionService positionService;

    @Autowired
    CompanyService companyService;

    @Autowired
    DepartmentService departmentService;

    @Autowired
    private BackManagerService backManagerService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping(value = "hr/login")
    public String hrlogin() {
        return "hr/login";
    }

    @GetMapping(value = "hr/register")
    public String register() {
        return "hr/hr_register";
    }

    @GetMapping(value = "hr/index_v3")
    public String indexV3() {
        return "hr/index_v3";
    }

    @RequestMapping("hr/index")
    public String index() {
        return "hr/index";
    }

    @GetMapping(value = "hr/position")
    public String position() {
        return "hr/position";
    }

    @GetMapping(value = "hr/position-new")
    public String positionNew() {
        return "hr/position-new";
    }

    @GetMapping(value = "hr/position-closed")
    public String positionClosed() {
        return "hr/position-closed";
    }

    @GetMapping(value = "hr/position-add")
    public String positionAdd() {
        return "hr/position-add";
    }

    @GetMapping(value = "hr/user")
    public String userSearching() {
        return "hr/user_searching";
    }

    @PostMapping("hr/register")
    @ResponseBody
    public Map<String, Object> registerPost(String hrMobile, String hrPassword, String hrName,
                                            String hrEmail, String companyName, String departmentName) {
        Map<String, Object> map = new HashMap<>();
        // 先添加公司，然后添加部门，最后添加hr
        CompanyEntity companyEntity = new CompanyEntity();
        companyEntity.setCompanyName(companyName);
        companyEntity.setState(0);
        companyEntity.setCredit("2");
        if (!companyService.registerCompany(companyEntity)) {
            // 公司保存出错，注册失败
            map.put("hrRegister", "0");
            return map;
        }

        // 添加部门, 同时要查询出最新插入的一行公司记录，关联
        DepartmentEntity departmentEntity = new DepartmentEntity();
        departmentEntity.setDepartmentName(departmentName);
        int companyId = companyService.getMaxId();
        departmentEntity.setCompanyId(companyId);
        if (!departmentService.registerDepartment(departmentEntity)) {
            // 部门保存出错，注册失败
            map.put("hrRegister", "0");
            return map;
        }

        // 添加hr，关联部门id
        HREntity hrEntity = new HREntity();
        hrEntity.setHrMobile(hrMobile);
        hrEntity.setHrPassword(hrPassword);
        hrEntity.setHrName(hrName);
        hrEntity.setHrEmail(hrEmail);
        int departmentId = departmentService.getMaxId();
        hrEntity.setDepartmentId(departmentId);
        if (!hrService.registerHR(hrEntity)) {
            // hr保存出错，注册失败
            map.put("hrRegister", "0");
            return map;
        }
        map.put("hrRegister", "1");
        return map;
    }

    @RequestMapping("hr/loginPost")
    @ResponseBody
    public Map<String, Object> login(String username, String password, HttpSession httpSession) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        Map<String, Object> map = new HashMap<>();
        map.put("state", "0");
        boolean loginHR = hrService.loginHR(username, password);
        if (loginHR) {
            map.put("state", "1");
            httpSession.setAttribute("hr", hrService.getHRByMobile(username));
            return map;
        }
        return map;
    }

    /**
     * 用户个人信息 输出
     *
     * @param request
     * @return
     */
    @PostMapping(value = "/hr/info")
    @ResponseBody
    public String showInfo(HttpServletRequest request) {

        //用户个人信息
//        UserEntity user = this.getUser(request);
        HREntity hr = this.getHR(request);
//        int id = hr.getHrId();
//        HREntity user = hrService.getHR(5);
        if (hr == null) {
            this.errorDirect_404();
        }
        int id = hr.getHrId();

        //收件箱
        List<ApplicationPositionHRBO> applyPosList = applicationService.listApplyInfoByHr(id);

        //创建的职位
        List<PositionEntity> positionEntities = positionService.listPositionByHr(id);

        Map output = new TreeMap();
        output.put("hr", hr);
        output.put("applyPosList", applyPosList);
        output.put("positions", positionEntities);

        JSONObject jsonObject = JSONObject.fromObject(output);

        return jsonObject.toString();
    }

    /**
     * <p>
     * private int hrId;
     * private String hrMobile;
     * private String hrPassword;
     * private String hrName;
     * private String hrEmail;
     * private String description;
     * private int departmentId;
     * </p>
     * 个人信息更新 功能
     *
     * @param request
     * @param password
     * @param name
     * @param mobile
     * @param email
     * @param description
     * @param departmentId
     * @return
     */
    @PostMapping("/hr/info/update")
    public String updateInfo(HttpServletRequest request,
                             @RequestParam("hrMobile") String mobile,
                             @RequestParam("hrPassword") String password,
                             @RequestParam("hrName") String name,
                             @RequestParam("hrEmail") String email,
                             @RequestParam("description") String description,
                             @RequestParam("departmentId") int departmentId) {

        int hrId = this.getHRId(request);

        HREntity HREntity = new HREntity();
        HREntity.setHrId(hrId);
        HREntity.setHrPassword(password);
        HREntity.setHrName(name);
        HREntity.setHrEmail(email);
        HREntity.setDepartmentId(departmentId);

        if (!hrService.updateHR(HREntity)) {
            this.errorDirect_404();
        }
        return this.hrDirect("hr_info");
    }

    @RequestMapping("hr/getuser")
    @ResponseBody
    public String getUser() {
        Gson gson = new Gson();
        ArrayList<UserEntity> userEntities = backManagerService.getAllUsers();
        String userInfo = gson.toJson(userEntities);
        return userInfo;
    }

    @RequestMapping("hr/getposition012")
    @ResponseBody
    public String getPosition012(HttpSession httpSession) {
        Gson gson = new Gson();
        HREntity hrEntity = (HREntity) httpSession.getAttribute("hr");
        ArrayList<PositionEntity> positionEntities = hrService.getPosition012(hrEntity.getHrId());
        String positionInfo = gson.toJson(positionEntities);
        return positionInfo;
    }

    @RequestMapping("hr/get-hr-msg")
    @ResponseBody
    public Map<String, Object> getHRMsg(HttpSession httpSession) {
        Map<String, Object> map = new TreeMap<>();
        HREntity hrEntity = (HREntity) httpSession.getAttribute("hr");
        map.put("hrName", hrEntity.getHrName());
        return map;
    }

    /**
     * 获取已关闭职位
     *
     * @param httpSession
     * @return
     */
    @RequestMapping("hr/getposition4")
    @ResponseBody
    public String getPosition4(HttpSession httpSession) {
        Gson gson = new Gson();
        HREntity hrEntity = (HREntity) httpSession.getAttribute("hr");
        ArrayList<PositionEntity> positionEntities = hrService.getPosition4(hrEntity.getHrId());
        String positionInfo = gson.toJson(positionEntities);
        return positionInfo;
    }

    /**
     * 获取待发布职位
     *
     * @param httpSession
     * @return
     */
    @RequestMapping("hr/getposition3")
    @ResponseBody
    public String getPosition3(HttpSession httpSession) {
        Gson gson = new Gson();
        HREntity hrEntity = (HREntity) httpSession.getAttribute("hr");
        ArrayList<PositionEntity> positionEntities = hrService.getPosition3(hrEntity.getHrId());
        String positionInfo = gson.toJson(positionEntities);
        return positionInfo;
    }

    @PostMapping(value = "hr/close-by-id/{id}")
    @ResponseBody
    public Map<String, Object> closePositionById(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("close", "0");

        HREntity hr = (HREntity) httpSession.getAttribute("hr");

        if (hr == null) {
            return map;
        }

        int clo = positionService.updatePositionState(4, id);
        map.put("close", String.valueOf(clo));

        return map;
    }

    @PostMapping(value = "hr/reopen-by-id/{id}")
    @ResponseBody
    public Map<String, Object> reopenPositionById(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("reopen", "0");

        HREntity hrEntity = (HREntity) httpSession.getAttribute("hr");

        if (hrEntity == null) {
            return map;
        }

        int reopen = positionService.updatePositionState(0, id);  // 0 - 合法
        map.put("reopen", String.valueOf(reopen));

        return map;
    }

    @PostMapping(value = "hr/work-desire")
    @ResponseBody
    public String workDesire() {

        List<CategoryEntity> allCategoryList = categoryService.getAll();

        Map output = new TreeMap();
        output.put("allCategoryList", allCategoryList);

        JSONObject jsonObject = JSONObject.fromObject(output);

        return jsonObject.toString();
    }

    @PostMapping(value = "hr/position-add2")
    @ResponseBody
    public Map<String, Object> addPosition(HttpSession httpSession, String title, String requirement,
                              int quantity, int salaryUp, int salaryDown, String city, int dirDesire) {
        HREntity hrEntity = (HREntity) httpSession.getAttribute(GlobalConst.Login_HR_key);
        PositionEntity positionEntity = new PositionEntity();
        positionEntity.setTitle(title);
        positionEntity.setRequirement(requirement);
        positionEntity.setQuantity(quantity);
        positionEntity.setSalaryUp(salaryUp);
        positionEntity.setSalaryDown(salaryDown);
        positionEntity.setWorkCity(city);
        positionEntity.setCategoryId(dirDesire);
//        Date date = new Date();
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String dateStr = sdf.format(date);
//        System.out.println(dateStr);
        // 设置当前时间即可
        positionEntity.setReleaseDate(new Date());
        // 3-新增状态
        positionEntity.setStatePub(3);
        positionEntity.setHrIdPub(hrEntity.getHrId());
        positionEntity.setDepartmentId(hrEntity.getDepartmentId());
        int res = positionService.savePosition(positionEntity);
        Map<String, Object> map = new TreeMap<>();
        map.put("posadd", "failure");
        if (res > 0) {
            map.put("posadd", "success");
            return map;
        }
        return map;
    }

    @PostMapping(value = "/hr/position-edit")
    public String positionEdit(PositionEntity positionEntity) {
        int positionId = positionEntity.getPositionId();
        PositionEntity positionById = positionService.getPositionById(positionId);
        positionById.setTitle(positionEntity.getTitle());
        positionById.setRequirement(positionEntity.getRequirement());
        positionById.setQuantity(positionEntity.getQuantity());
        positionById.setWorkCity(positionEntity.getWorkCity());
        positionById.setSalaryUp(positionEntity.getSalaryUp());
        positionById.setSalaryDown(positionEntity.getSalaryDown());
        System.out.println(positionById.toString());
        int res = positionService.updatePosition(positionById);

        if (res > 0) {
            return "hr/position-new";
        } else {
            return "general/404";
        }
    }

    /**
     * hr注销 功能
     *
     * @param request
     * @return
     */
    @GetMapping(value = "hr/logout")
    public String hrLogout(HttpServletRequest request) {
        // 清除session
        Enumeration<String> em = request.getSession().getAttributeNames();
        while (em.hasMoreElements()) {
            request.getSession().removeAttribute(em.nextElement().toString());
        }
        request.getSession().removeAttribute(GlobalConst.Login_HR_key);
        request.getSession().invalidate();

        return "redirect:/hr/login";
    }
}
