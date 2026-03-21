package org.techno.sturent;

import java.io.File;

public class StudentSignup 
{

    
    private String uid;
    private String pwd;
    private String fnm;
    private String cont;
    private String mailId;
    private String adharNo;
    private String gender;
    private File photo;
    private String address;
    private String city;
    private String dOB;
    private String time;
    private String npwd;
    private String cnpwd;

    public StudentSignup() {
    }

    public StudentSignup(String uid, String pwd, String fnm, String cont, String mailId, String adharNo, String gender, File photo, String address, String city, String dOB, String time) {
        this.uid = uid;
        this.pwd = pwd;
        this.fnm = fnm;
        this.cont = cont;
        this.mailId = mailId;
        this.adharNo = adharNo;
        this.gender = gender;
        this.photo = photo;
        this.address = address;
        this.city = city;
        this.dOB = dOB;
        this.time = time;
    }

    /**
     * @return the uid
     */
    public String getUid() {
        return uid;
    }

    /**
     * @param uid the uid to set
     */
    public void setUid(String uid) {
        this.uid = uid;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * @return the fnm
     */
    public String getFnm() {
        return fnm;
    }

    /**
     * @param fnm the fnm to set
     */
    public void setFnm(String fnm) {
        this.fnm = fnm;
    }

    /**
     * @return the cont
     */
    public String getCont() {
        return cont;
    }

    /**
     * @param cont the cont to set
     */
    public void setCont(String cont) {
        this.cont = cont;
    }

    /**
     * @return the mailId
     */
    public String getMailId() {
        return mailId;
    }

    /**
     * @param mailId the mailId to set
     */
    public void setMailId(String mailId) {
        this.mailId = mailId;
    }

    /**
     * @return the adharNo
     */
    public String getAdharNo() {
        return adharNo;
    }

    /**
     * @param adharNo the adharNo to set
     */
    public void setAdharNo(String adharNo) {
        this.adharNo = adharNo;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the photo
     */
    public File getPhoto() {
        return photo;
    }

    /**
     * @param photo the photo to set
     */
    public void setPhoto(File photo) {
        this.photo = photo;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the dOB
     */
    public String getdOB() {
        return dOB;
    }

    /**
     * @param dOB the dOB to set
     */
    public void setdOB(String dOB) {
        this.dOB = dOB;
    }

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }
    /**
     * @return the npwd
     */
    public String getNpwd() {
        return npwd;
    }

    /**
     * @param npwd the npwd to set
     */
    public void setNpwd(String npwd) {
        this.npwd = npwd;
    }

    /**
     * @return the cnpwd
     */
    public String getCnpwd() {
        return cnpwd;
    }

    /**
     * @param cnpwd the cnpwd to set
     */
    public void setCnpwd(String cnpwd) {
        this.cnpwd = cnpwd;
    }
    
    
}
