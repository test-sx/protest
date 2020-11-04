package org.movice.dao.login;

import org.movice.bean.UserInfo;

/**
 * 登录注册
 * @author 宋晓旭
 * @date 2020/09/14
 */
public interface LoginDao {
    /**
     * 根据用户名查询用户信息
     * @param username 用户名
     * @return 如果返回null,说明没有这个用户。反之亦然
     */
    public UserInfo queryUserByUsername(String username);

    /**
     * 根据 用户名和密码查询用户信息
     * @param username
     * @param password
     * @return 如果返回null,说明用户名或密码错误,反之亦然
     */
    public UserInfo queryUserByUsernameAndPassword(String username, String password);

    /**
     * 保存用户信息
     * @param user
     * @return 返回-1表示操作失败，其他是sql语句影响的行数
     */
    public int saveUser(UserInfo user);
}
