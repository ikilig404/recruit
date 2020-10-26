package fxb.java.recruit.service.impl;

import fxb.java.recruit.entity.ApplicationEntity;
import org.springframework.stereotype.Service;
import fxb.java.recruit.mapper.ApplicationMapper;
import fxb.java.recruit.pojo.ApplicationPositionHRBO;
import fxb.java.recruit.service.ApplicationService;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Resource
    private ApplicationMapper applicationMapper;

    @Override
    public boolean applyPosition(int resumeId, int positionId) {

        //获取当前日期时间
        java.util.Date date = new java.util.Date();
        Timestamp recentTime = new Timestamp(date.getTime());

        int result = applicationMapper.saveApplication(recentTime, resumeId, positionId);
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean applyOrNot(int positionId, int resumeId) {
        ApplicationEntity applicationEntity = applicationMapper.getApplication(positionId, resumeId);
        if (applicationEntity != null) {
            return true;
        }
        return false;
    }

    // 取消申请，直接删除申请记录
    @Override
    public boolean removeApplication(int resumeId, int positionId) {
        int result = applicationMapper.removeApplication(resumeId, positionId);
        if (result > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean removeApplicationById(int applicationId) {
        int result = applicationMapper.removeApplicationById(applicationId);
        return false;
    }

    /**
     * 申请处理完成
     * @param resumeId
     * @return
     */
    @Override
    public List<ApplicationPositionHRBO> listApplyInfo(int resumeId){

        return applicationMapper.listAppPosHR(resumeId);
    }

    /**
     * 申请待处理
     * @param resumeId
     * @return
     */
    @Override
    public List<ApplicationPositionHRBO> listApplyInfoPub(int resumeId){

        return applicationMapper.listAppPosHRPub(resumeId);
    }


    @Override
    public List<ApplicationPositionHRBO> listApplyInfoByHr(int hrid) {
        return applicationMapper.listAppPosHR(hrid);

    }
}
