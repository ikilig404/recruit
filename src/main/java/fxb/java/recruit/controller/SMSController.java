package fxb.java.recruit.controller;

import fxb.java.recruit.util.SMSUtil.Sender;
import fxb.java.recruit.util.SMSUtil.Verify;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "sms")
public class SMSController {

    @ResponseBody
    @PostMapping(value = "/sendCode")
    public void smssendCode(@RequestParam String mobile) {
        Sender.sendCode(mobile);
    }

    @ResponseBody
    @PostMapping(value = "/verifyCode")
    public String smsverifyCode(@RequestParam String mobile, @RequestParam String code) {
        int state = Verify.verifyCode(mobile, code);
        if (state == Integer.valueOf("1")) {
            return "1";
        } else {
            return "0";
        }
    }

}

