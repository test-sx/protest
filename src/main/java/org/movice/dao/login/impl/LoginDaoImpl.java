package org.movice.dao.login.impl;

import org.movice.bean.UserInfo;
import org.movice.dao.login.LoginDao;
import org.movice.utils.BaseDao;

/**
 * 登录注册
 * @author 宋晓旭
 * @date 2020/09/14
 */
public class LoginDaoImpl extends BaseDao implements LoginDao{

    @Override
    public UserInfo queryUserByUsername(String username) {
        String sql = "select `userName`,`userPwd`,`userEmail`,`userPhone` from userinfo where userName = ? ";
        return queryForOne(UserInfo.class, sql, username);
    }

    @Override
    public UserInfo queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select `id`,`userName`,`userPwd`,`userEmail`,`userPhone` from userinfo where userName = ? and userPwd = ?";
        return queryForOne(UserInfo.class, sql, username,password);
    }

    @Override
    public int saveUser(UserInfo user) {
        String sql = "insert into userinfo(`userName`,`userPwd`,`userEmail`,`userPhone`) values(?,?,?,?)";
        return update(sql, user.getUserName(),user.getUserPwd(),user.getUserEmail(),user.getUserPhone());
    }
}
