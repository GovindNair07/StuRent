package org.techno.sturent;

public class admin
{

 private int adminid;
 private int password;
 private int contact;
 private String mailid;
 
 public admin(int adminid, int password, int contact, String mailid) {
        this.adminid = adminid;
        this.password = password;
        this.contact = contact;
        this.mailid = mailid;
        
 }
       
 
 public admin(){
 }
 

    /**
     * @return the adminid
     */
    public int getAdminid() {
        return adminid;
    }

    /**
     * @param adminid the adminid to set
     */
    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    /**
     * @return the password
     */
    public int getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(int password) {
        this.password = password;
    }

    /**
     * @return the contact
     */
    public int getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(int contact) {
        this.contact = contact;
    }

    /**
     * @return the mailid
     */
    public String getMailid() {
        return mailid;
    }

    /**
     * @param mailid the mailid to set
     */
    public void setMailid(String mailid) {
        this.mailid = mailid;
    }
    
}
 
    