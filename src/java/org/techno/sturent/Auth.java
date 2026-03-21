
package org.techno.sturent;


public class Auth {
    private String id;
    private String pwd;
    private String npwd;
    private String cnpwd;

    public Auth(){
        
    }
    public Auth(String id, String pwd) {
        this.id = id;
        this.pwd = pwd;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
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
