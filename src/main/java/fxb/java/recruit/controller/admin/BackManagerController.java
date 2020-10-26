package fxb.java.recruit.controller.admin;

import com.google.gson.Gson;
import fxb.java.recruit.constant.GlobalConst;
import fxb.java.recruit.entity.*;
import fxb.java.recruit.service.BackManagerService;
import fxb.java.recruit.service.CompanyService;
import fxb.java.recruit.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/manager")
public class BackManagerController {

    @Autowired
    private BackManagerService backManagerService;

    @Autowired
    private PositionService positionService;

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/login")
    public String init(){
        return "manager/login";
    }

    @RequestMapping("/index")
    public String index(){
        return "manager/index";
    }

    @RequestMapping("/index_v3")
    public String index_v3() {
        return "manager/index_v3";
    }

    @RequestMapping("/nestable_list")
    public String teams_board() {
        return "manager/nestable_list";
    }

    @RequestMapping("/contacts")
    public String contacts() {
        return "manager/contacts";
    }

    @RequestMapping("/table_jqgrid")
    public String table() {
        return "manager/table_jqgrid";
    }

    @RequestMapping("/position-list")
    public String managersTable() {
        return "manager/position-list";
    }

    @RequestMapping("/review")
    public String companyReview() {
        return "manager/company-review";
    }

    @RequestMapping("/company")
    public String companyList() {
        return "manager/company";
    }



    @RequestMapping("/widgets")
    public String widgets() {
        return "manager/widgets";
    }

    @RequestMapping("/adminlogin")
    @ResponseBody
    public Map<String,Object> login(HttpSession httpSession, Long username, String password){
        Map<String,Object> map = new HashMap<>();
        int result = 0;
        try {
            result = backManagerService.backLogin(username, password);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        if (result==0){
            map.put("state","0");
        }
        else {
            map.put("state","1");
            // 设置session
            httpSession.setAttribute("manager", backManagerService.getManagerById(username));
        }
        return map;
    }

    @RequestMapping("/addcompany")
    @ResponseBody
    public Map<String,Object> addcompany(String companyName,String companyCode,String description){
        Map<String,Object> map = new HashMap<>();
        int result = backManagerService.addCompany(companyName,companyCode,description);
        if (result==0){
            map.put("state","0");
        }
        else {
            map.put("state","1");
        }
        return map;
    }


    @RequestMapping(value = "/userareachart", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> area(){
        Map<String,Object> map = new HashMap<>();
        ArrayList<UserAreaEntity> area = backManagerService.userArea();
        UserAreaEntity userAreaEntity;
        for(int i=0; i<area.size(); i++){
            userAreaEntity = area.get(i);
            map.put(userAreaEntity.getArea(),userAreaEntity.getUsernum());
        }
        return map;
    }

    @RequestMapping("webcount")
    @ResponseBody
    public Map<String,Object> webcount(){
        Map<String,Object> map = new HashMap<>();
        WebCountEntity webCountEntity = backManagerService.getWebCount();
        map.put("companynum",webCountEntity.getCompanynum());
        map.put("offernum" ,webCountEntity.getOffernum());
        map.put("usernum",webCountEntity.getUsernum());
        map.put("visitnum",webCountEntity.getVisitnum());
        System.out.println(map);
        return map;
    }

    @RequestMapping("getcompany")
    @ResponseBody
    public String getCompany(){
        Gson gson = new Gson();
        ArrayList<CompanyEntity> companyEntities = backManagerService.getAllCompanies();
        String companyInfo = gson.toJson(companyEntities);
        System.out.println(companyInfo);
        return companyInfo;
    }


    @RequestMapping("getuser")
    @ResponseBody
    public String getUser(){
        Gson gson = new Gson();
        ArrayList<UserEntity> userEntities = backManagerService.getAllUsers();
        String userInfo = gson.toJson(userEntities);
        return userInfo;
    }

    @RequestMapping("getposition")
    @ResponseBody
    public String getPosition() {
        Gson gson = new Gson();
        ArrayList<PositionEntity> positionEntities = backManagerService.getAllPosition();
        String positionInfo = gson.toJson(positionEntities);
        return positionInfo;
    }

    @PostMapping(value = "/block-by-id/{id}")
    @ResponseBody
    public Map<String, Object> blockPositionById(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("block", "0");

        AdminEntity adminEntity = (AdminEntity) httpSession.getAttribute("manager");

        if (adminEntity == null) {
            return map;
        }

        int block = positionService.updatePositionState(2, id);
        map.put("block", String.valueOf(block));

        return map;
    }

    @PostMapping(value = "/open-by-id/{id}")
    @ResponseBody
    public Map<String, Object> openPositionById(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("open", "0");

        AdminEntity adminEntity = (AdminEntity) httpSession.getAttribute("manager");

        if (adminEntity == null) {
            return map;
        }

        int block = positionService.updatePositionState(0, id);
        map.put("open", String.valueOf(block));

        return map;
    }

    @PostMapping(value = "/company-pass/{id}")
    @ResponseBody
    public Map<String, Object> companyPass(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("pass", "0");

        AdminEntity adminEntity = (AdminEntity) httpSession.getAttribute("manager");

        if (adminEntity == null) {
            return map;
        }

        int pass = companyService.updateStateById(1, id);
        map.put("pass", String.valueOf(pass));

        return map;
    }

    @PostMapping(value = "/company-refuse/{id}")
    @ResponseBody
    public Map<String, Object> companyRefuse(HttpSession httpSession, @PathVariable int id) {

        Map<String, Object> map = new HashMap<>();
        map.put("refuse", "0");

        AdminEntity adminEntity = (AdminEntity) httpSession.getAttribute("manager");

        if (adminEntity == null) {
            return map;
        }

        int pass = companyService.updateStateById(2, id);
        map.put("refuse", String.valueOf(pass));

        return map;
    }

    @RequestMapping("/get-new-company")
    @ResponseBody
    public String getNewCompany() {
        Gson gson = new Gson();
        ArrayList<CompanyEntity> companyEntities = companyService.getNewCompany();
        String companyInfo = gson.toJson(companyEntities);;
        return companyInfo;
    }

    @GetMapping(value = "/logout")
    public String logout(HttpServletRequest request) {
        // 清除session
        Enumeration<String> em = request.getSession().getAttributeNames();
        while (em.hasMoreElements()) {
            request.getSession().removeAttribute(em.nextElement().toString());
        }
        request.getSession().removeAttribute(GlobalConst.Login_Admin_key);
        request.getSession().invalidate();
        return "redirect:/manager/login";
    }

}
