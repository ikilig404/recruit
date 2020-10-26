package fxb.java.recruit.service;

import fxb.java.recruit.entity.HREntity;
import fxb.java.recruit.entity.PositionEntity;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

public interface HRService {

    HREntity getHR(int hrId);

    boolean updateHR(HREntity HREntity);

    boolean registerHR(HREntity HREntity);

    boolean loginHR(String mobile, String password) throws UnsupportedEncodingException, NoSuchAlgorithmException;

    HREntity getHRByMobile(String mobile);

    ArrayList<PositionEntity> getPosition012(int id);

    ArrayList<PositionEntity> getPosition4(int id);

    ArrayList<PositionEntity> getPosition3(int id);
}
