package fxb.java.recruit.service;

import fxb.java.recruit.entity.*;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

public interface BackManagerService {
    int backLogin(Long userid, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException;

    ArrayList<UserAreaEntity> userArea();

    ArrayList<CompanyEntity> getAllCompanies();

    ArrayList<UserEntity> getAllUsers();

    ArrayList<PositionEntity> getAllPosition();

    WebCountEntity getWebCount();

    int addCompany(String companyName, String companyCode, String description);

    AdminEntity getManagerById(Long id);
}
