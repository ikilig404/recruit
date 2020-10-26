package fxb.java.recruit.service;

import fxb.java.recruit.entity.ResumeEntity;

public interface ResumeService {

    ResumeEntity getResumeById(int userId);

    boolean updateResume(ResumeEntity resumeEntity);

    boolean createResume(ResumeEntity resumeEntity);
}
