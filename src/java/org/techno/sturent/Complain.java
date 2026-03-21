
package org.techno.sturent;

public class Complain {
    private int complainId;
    private String userId;
    private String complain;
    private String date;
    private String status;
    
    public Complain(){
        
    }

    public Complain(int complainId, String userId, String complain, String date, String status) {
        this.complainId = complainId;
        this.userId = userId;
        this.complain = complain;
        this.date = date;
        this.status = status;
    }

    /**
     * @return the complainId
     */
    public int getComplainId() {
        return complainId;
    }

    /**
     * @param complainId the complainId to set
     */
    public void setComplainId(int complainId) {
        this.complainId = complainId;
    }

    /**
     * @return the userId
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * @return the complain
     */
    public String getComplain() {
        return complain;
    }

    /**
     * @param complain the complain to set
     */
    public void setComplain(String complain) {
        this.complain = complain;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    
}

