package fxb.java.recruit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import fxb.java.recruit.entity.CompanyEntity;
import org.apache.ibatis.annotations.Update;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *       private int companyId;
 private String companyName;
 private int companyLogo;
 private String description;
 private int state;
 private String companyCode;
 * </p>
 */
public interface CompanyMapper {

    @Select("select * from company where companyId = #{comId}")
    CompanyEntity getCompanyById(@Param("comId") int comId);

    @Select("select * from company where companyCode = #{companyCode}")
    CompanyEntity getCompanyByCode(@Param("companyCode") String companyCode);

    @Insert("insert into company(companyName,state,companyCode,credit) values(#{companyName},#{state},#{companyCode},#{credit})")
    int saveCompany(CompanyEntity companyEntity);

    @Select("select * from company where state = 0")
    ArrayList<CompanyEntity> getNewCompany();

    @Update("update company set state = #{state} where companyId = #{id}")
    int updateStateById(@Param("state") int state, @Param("id") int id);

    @Select("select max(companyId) from company")
    int getMaxId();
//    @Update("update company set companyCode = #{companyCode} where companyId = #{companyId}")
//    int updateCompany(int companyCode,int companyId);
}
