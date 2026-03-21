package org.techno.sturent;

public class feedback
{
    
 private int studentid;
 private String feedback;
 private int productid;
 
 public feedback(int studentid, String feedback, int productid) {
        this.studentid = studentid;
        this.feedback= feedback;
        this.productid = productid;
        
 }

    /**
     * @return the studentid
     */
    public int getStudentid() {
        return studentid;
    }

    /**
     * @param studentid the studentid to set
     */
    public void setStudentid(int studentid) {
        this.studentid = studentid;
    }

    /**
     * @return the feedback
     */
    public String getFeedback() {
        return feedback;
    }

    /**
     * @param feedback the feedback to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    /**
     * @return the productid
     */
    public int getProductid() {
        return productid;
    }

    /**
     * @param productid the productid to set
     */
    public void setProductid(int productid) {
        this.productid = productid;
    }
 

}