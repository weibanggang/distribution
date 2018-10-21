package test.dao;

import java.util.List;
import test.entity.Province;

public interface ProvinceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table province
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String proId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table province
     *
     * @mbg.generated
     */
    int insert(Province record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table province
     *
     * @mbg.generated
     */
    Province selectByPrimaryKey(String proId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table province
     *
     * @mbg.generated
     */
    List<Province> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table province
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Province record);
}