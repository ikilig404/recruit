package fxb.java.recruit.service;


import fxb.java.recruit.pojo.ApplicationPositionHRBO;

import java.util.List;

public interface ApplicationService {

    boolean applyPosition(int resumeId, int positionId);

    boolean applyOrNot(int positionId, int resumeId);

    boolean removeApplication(int resumeId, int positionId);

    boolean removeApplicationById(int applicationId);

    List<ApplicationPositionHRBO> listApplyInfo(int resumeId);

    List<ApplicationPositionHRBO> listApplyInfoPub(int resumeId);

    List<ApplicationPositionHRBO> listApplyInfoByHr(int hrid);

}
