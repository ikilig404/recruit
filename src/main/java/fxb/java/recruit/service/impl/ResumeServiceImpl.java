package fxb.java.recruit.service.impl;

import org.springframework.stereotype.Service;
import fxb.java.recruit.entity.ResumeEntity;
import fxb.java.recruit.mapper.ResumeMapper;
import fxb.java.recruit.service.ResumeService;

import javax.annotation.Resource;

@Service
public class ResumeServiceImpl implements ResumeService {

    @Resource
    private ResumeMapper resumeMapper;

    @Override
    public ResumeEntity getResumeById(int userId) {

        return resumeMapper.getResumeById(userId);
    }

    @Override
    public boolean updateResume(ResumeEntity resumeEntity) {

        if (resumeMapper.saveResume(resumeEntity) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean createResume(ResumeEntity resumeEntity) {

        if (resumeMapper.createResume(resumeEntity) > 0) {
            return true;
        }
        return false;
    }

}
