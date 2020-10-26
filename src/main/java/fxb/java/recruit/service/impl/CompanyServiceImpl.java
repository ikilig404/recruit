package fxb.java.recruit.service.impl;

import org.springframework.stereotype.Service;
import fxb.java.recruit.entity.CompanyEntity;
import fxb.java.recruit.mapper.CompanyMapper;
import fxb.java.recruit.service.CompanyService;
//import sun.misc.BASE64Encoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Resource
    private CompanyMapper companyMapper;

    @Override
    public CompanyEntity getCompany(int comId){
        return companyMapper.getCompanyById(comId);
    }

    @Override
    public CompanyEntity getCompany(String companyCode) {

        return companyMapper.getCompanyByCode(companyCode);
    }

    @Override
    public ArrayList<CompanyEntity> getNewCompany() {
        return companyMapper.getNewCompany();
    }

    @Override
    public int updateStateById(int state, int id) {
        return companyMapper.updateStateById(state, id);
    }

    @Override
    public boolean registerCompany(CompanyEntity companyEntity) {
        String companyCode = companyEntity.getCompanyCode();
        if(companyCode != null) {
            throw new RuntimeException("该公司已存在");
        }
        else {
            String Code = companyEntity.getCompanyName();
            int result = -1;
            try {
                companyCode = this.EncodingByMd5(Code);
                companyEntity.setCompanyCode(companyCode);
                result = companyMapper.saveCompany(companyEntity);

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
    }

    @Override
    public int getMaxId() {
        return companyMapper.getMaxId();
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
