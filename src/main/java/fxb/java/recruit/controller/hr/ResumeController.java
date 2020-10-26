package fxb.java.recruit.controller.hr;

import fxb.java.recruit.controller.BaseController;
import fxb.java.recruit.entity.HREntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import fxb.java.recruit.controller.BaseController;
import fxb.java.recruit.entity.HREntity;

import javax.servlet.http.HttpServletRequest;

@RestController
public class ResumeController extends BaseController {


    @PostMapping("/hr/applyInfo")
    public String ResumeInfo(HttpServletRequest request) {
        HREntity hr = this.getHR(request);
        if(hr == null) {
            return errorDirect_404();
        }
        return null;
    }


}
