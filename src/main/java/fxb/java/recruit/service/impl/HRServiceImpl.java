package fxb.java.recruit.service.impl;

import fxb.java.recruit.entity.PositionEntity;
import fxb.java.recruit.mapper.PositionMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import fxb.java.recruit.entity.HREntity;
import fxb.java.recruit.mapper.HRMapper;
import fxb.java.recruit.service.HRService;
//import sun.misc.BASE64Encoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class HRServiceImpl implements HRService {
    private static final Logger LOGGER = LogManager.getLogger();

    @Resource
    private HRMapper HRMapper;

    @Resource
    private PositionMapper positionMapper;

    @Override
    public HREntity getHR(int HRId) {
        return HRMapper.getHR(HRId);
    }

    @Override
    public boolean updateHR(HREntity HREntity) {

        int result = HRMapper.updateHR(HREntity);
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean registerHR(HREntity HREntity) {

        String password = HREntity.getHrPassword();
        String mobile = HREntity.getHrMobile();


        if (HRMapper.getHRByMobile(mobile) != null) {
            return false;
        }

        int result = -1;
        try {
            String encPass = this.EncodingByMd5(password);
            HREntity.setHrPassword(encPass);
            result = HRMapper.saveHR(HREntity);

        } catch (NoSuchAlgorithmException e) {
            System.out.println("md5加密出错");
        } catch (UnsupportedEncodingException e) {
            System.out.println("编码转化出错");
        } finally {
            if (result > 0) {
                return true;
            }
            return false;
        }
    }

    @Override
    public boolean loginHR(String mobile, String password) {

        String passwordDB = HRMapper.getHRByMobile(mobile).getHrPassword();
        System.out.println(passwordDB);
        try{
            System.out.println(this.EncodingByMd5(password));
        } catch (Exception e) {
            System.out.println("error");
            e.printStackTrace();
        }

        System.out.println(password);

        try {
            if (this.EncodingByMd5(password).equals(passwordDB)) {
                System.out.println("return true;");
                return true;
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println("return false;");
        return false;
    }

    @Override
    public HREntity getHRByMobile(String mobile) {
        return HRMapper.getHRByMobile(mobile);
    }

    @Override
    public ArrayList<PositionEntity> getPosition012(int id) {
        return positionMapper.getPosition012(id);
    }

    @Override
    public ArrayList<PositionEntity> getPosition4(int id) {
        return positionMapper.getPosition4(id);
    }

    @Override
    public ArrayList<PositionEntity> getPosition3(int id) {
        return positionMapper.getPosition3(id);
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
