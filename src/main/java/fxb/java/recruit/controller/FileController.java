package fxb.java.recruit.controller;

import fxb.java.recruit.entity.UserEntity;
import net.sf.json.JSONObject;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Map;
import java.util.TreeMap;

@Controller
public class FileController {

    @GetMapping("/read/resume")
    public void readPdf(HttpServletResponse response, HttpSession session) {
        UserEntity user = (UserEntity) session.getAttribute("user");
        response.reset();
        response.setContentType("application/pdf");
        try {
            File file = new File("D:\\resume\\" + user.getMobile().toString() + "+简历.pdf");
//            File file = new File("/home/projects/recruit1/resume/" + user.getMobile().toString() + "+简历.pdf");
            FileInputStream fileInputStream = new FileInputStream(file);
            OutputStream outputStream = response.getOutputStream();
            IOUtils.write(IOUtils.toByteArray(fileInputStream), outputStream);
            response.setHeader("Content-Disposition",
                    "inline; filename= file");
            outputStream.flush();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @RequestMapping("/upload")
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file, HttpSession httpSession, HttpServletResponse response) {
        UserEntity user = (UserEntity) httpSession.getAttribute("user");
        String fileName = file.getOriginalFilename();
        fileName = user.getMobile() + "+简历.pdf";
        String filePath = "D:\\resume\\";  // 个人电脑开发的文件夹
//        String filePath = "/home/projects/recruit1/resume/";  // 部署到centos的文件夹
        File dest = new File(filePath + fileName);
        Map output = new TreeMap();
        output.put("fileflag", "fall");
        try {
            file.transferTo(dest);
            output.put("fileflag", "success");
            JSONObject jsonObject = JSONObject.fromObject(output);
            return jsonObject.toString();
        } catch (IOException e) {
        }
        JSONObject jsonObject = JSONObject.fromObject(output);
        return jsonObject.toString();
    }
}


