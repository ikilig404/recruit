package fxb.java.recruit.service.impl;

import fxb.java.recruit.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fxb.java.recruit.mapper.BackManagerMapper;
import fxb.java.recruit.service.BackManagerService;
//import sun.misc.BASE64Encoder;
import java.util.Base64;
import java.util.Base64.Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

@Service
public class BackManagerServiceImpl implements BackManagerService{

    @Autowired
    private BackManagerMapper backManagerMapper;

    @Override
    public int backLogin(Long userid, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        return backManagerMapper.backLogin(userid,this.EncodingByMd5(password));
    }

    @Override
    public ArrayList<UserAreaEntity> userArea(){
        return backManagerMapper.userArea();
    }

    @Override
    public ArrayList<CompanyEntity> getAllCompanies() {
        return backManagerMapper.getAllCompanies();
    }

    @Override
    public ArrayList<UserEntity> getAllUsers() {
        return backManagerMapper.getAllUsers();
    }

    @Override
    public ArrayList<PositionEntity> getAllPosition() {
        return backManagerMapper.getAllPosition();
    }

    @Override
    public WebCountEntity getWebCount(){
        return backManagerMapper.getWebCount();
    }

    @Override
    public int addCompany(String companyName,String companyCode,String description){
        return backManagerMapper.addCompany(companyName,companyCode,description);
    }

    @Override
    public AdminEntity getManagerById(Long id) {
        AdminEntity admin = backManagerMapper.getAdminById(id);

        return admin;
    }

    public String EncodingByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {

        //确定计算方法
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        Encoder base64en = Base64.getEncoder();

        //加密后的字符串
        byte[] encStr = base64en.encode(md5.digest(str.getBytes("utf-8")));
        return new String(encStr);
    }
}
