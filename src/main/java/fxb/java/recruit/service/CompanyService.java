package fxb.java.recruit.service;

import fxb.java.recruit.entity.CompanyEntity;

import java.util.ArrayList;

public interface CompanyService {

    CompanyEntity getCompany(int comId);

    CompanyEntity getCompany(String companyCode);

    ArrayList<CompanyEntity> getNewCompany();

    int updateStateById(int state, int id);

    boolean registerCompany(CompanyEntity companyEntity);

    int getMaxId();
}
