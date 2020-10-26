
package fxb.java.recruit.service.impl;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import fxb.java.recruit.entity.UserEntity;
import fxb.java.recruit.mapper.UserMapper;
import fxb.java.recruit.service.UserService;
//import sun.misc.BASE64Encoder;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class UserServiceImpl implements UserService {
    private static final Logger LOGGER = LogManager.getLogger();

    @Resource
    private UserMapper userMapper;

    @Override
    public UserEntity getUser(int userId) {
        return userMapper.getUser(userId);
    }

    @Override
    public boolean updateUser(UserEntity userEntity) {

        String password = userEntity.getPassword();

        int result = -1;
        try {
            String encPass = this.EncodingByMd5(password);
            userEntity.setPassword(encPass);
            result = userMapper.updateUser(userEntity);
        } catch (NoSuchAlgorithmException e) {
            System.out.println("md5加密出错");
        } catch (UnsupportedEncodingException e) {
            System.out.println("编码转化出错");
        }

        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean registerUser(UserEntity userEntity) {

        String mobile = userEntity.getMobile();
        if (userMapper.getUserByMobile(mobile) != null) {
            return false;
        }

        String password = userEntity.getPassword();

        int result = -1;
        try {
            String encPass = this.EncodingByMd5(password);
            userEntity.setPassword(encPass);
            result = userMapper.saveUser(userEntity);

        } catch (NoSuchAlgorithmException e) {
            System.out.println("md5加密出错");
        } catch (UnsupportedEncodingException e) {
            System.out.println("编码转化出错");
        }

        if (result > 0) {
            return true;
        }
        return false;

    }

    @Override
    public boolean loginUser(String mobile, String password) {

        if (userMapper.getUserByMobile(mobile) == null) {
            return false;
        }
        String passwordDB = userMapper.getUserByMobile(mobile).getPassword();

        try {
            if (this.EncodingByMd5(password).equals(passwordDB)) {
                return true;
            }
        } catch (NoSuchAlgorithmException e) {
            System.out.println("md5加密出错");
        } catch (UnsupportedEncodingException e) {
            System.out.println("编码转化错误");
        }
        return false;
    }

    @Override
    public UserEntity getUserByMobile(String mobile) {

        return userMapper.getUserByMobile(mobile);
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

