package org.movice.bean;

/**
 * 用户信息
 * @author 宋晓旭
 * @date 2020/09/14
 */
public class UserInfo {
    /**
     * 主键
     */
    private int id;
    /**
     * 姓名
     */
    private String userName;
    /**
     * 电话
     */
    private String userPhone;
    /**
     * 密码
     */
    private String userPwd;
    /**
     * email
     */
    private String userEmail;

    public UserInfo(String userName, String userPhone, String userPwd, String userEmail) {
        this.userName = userName;
        this.userPhone = userPhone;
        this.userPwd = userPwd;
        this.userEmail = userEmail;
    }

    public UserInfo(String userName, String userPwd) {
        this.userName = userName;
        this.userPwd = userPwd;
    }

    public UserInfo(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userEmail='" + userEmail + '\'' +
                '}';
    }
}
