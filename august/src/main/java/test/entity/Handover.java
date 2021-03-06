package test.entity;

import java.util.Date;

public class Handover {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_start_city
     *
     * @mbg.generated
     */
    private String hanStartCity;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_end_city
     *
     * @mbg.generated
     */
    private String hanEndCity;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_now_city
     *
     * @mbg.generated
     */
    private String hanNowCity;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_state
     *
     * @mbg.generated
     */
    private Integer hanState;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_date
     *
     * @mbg.generated
     */
    private Date hanDate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column handover.han_remarks
     *
     * @mbg.generated
     */
    private String hanRemarks;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_start_city
     *
     * @return the value of handover.han_start_city
     *
     * @mbg.generated
     */
    public String getHanStartCity() {
        return hanStartCity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_start_city
     *
     * @param hanStartCity the value for handover.han_start_city
     *
     * @mbg.generated
     */
    public void setHanStartCity(String hanStartCity) {
        this.hanStartCity = hanStartCity == null ? null : hanStartCity.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_end_city
     *
     * @return the value of handover.han_end_city
     *
     * @mbg.generated
     */
    public String getHanEndCity() {
        return hanEndCity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_end_city
     *
     * @param hanEndCity the value for handover.han_end_city
     *
     * @mbg.generated
     */
    public void setHanEndCity(String hanEndCity) {
        this.hanEndCity = hanEndCity == null ? null : hanEndCity.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_now_city
     *
     * @return the value of handover.han_now_city
     *
     * @mbg.generated
     */
    public String getHanNowCity() {
        return hanNowCity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_now_city
     *
     * @param hanNowCity the value for handover.han_now_city
     *
     * @mbg.generated
     */
    public void setHanNowCity(String hanNowCity) {
        this.hanNowCity = hanNowCity == null ? null : hanNowCity.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_state
     *
     * @return the value of handover.han_state
     *
     * @mbg.generated
     */
    public Integer getHanState() {
        return hanState;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_state
     *
     * @param hanState the value for handover.han_state
     *
     * @mbg.generated
     */
    public void setHanState(Integer hanState) {
        this.hanState = hanState;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_date
     *
     * @return the value of handover.han_date
     *
     * @mbg.generated
     */
    public Date getHanDate() {
        return hanDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_date
     *
     * @param hanDate the value for handover.han_date
     *
     * @mbg.generated
     */
    public void setHanDate(Date hanDate) {
        this.hanDate = hanDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column handover.han_remarks
     *
     * @return the value of handover.han_remarks
     *
     * @mbg.generated
     */
    public String getHanRemarks() {
        return hanRemarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column handover.han_remarks
     *
     * @param hanRemarks the value for handover.han_remarks
     *
     * @mbg.generated
     */
    public void setHanRemarks(String hanRemarks) {
        this.hanRemarks = hanRemarks == null ? null : hanRemarks.trim();
    }
}