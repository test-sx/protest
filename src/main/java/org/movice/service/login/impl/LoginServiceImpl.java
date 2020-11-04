package org.movice.service.login.impl;

import org.movice.bean.UserInfo;
import org.movice.dao.login.LoginDao;
import org.movice.dao.login.impl.LoginDaoImpl;
import org.movice.service.login.LoginService;
import org.springframework.stereotype.Service;

/**
 * 用户登录注册
 * @author 宋晓旭
 * @date 2020/09/14
 */
@Service
public class LoginServiceImpl implements LoginService {
    private LoginDao userDao = new LoginDaoImpl();

    @Override
    public void registUser(UserInfo user) {
        userDao.saveUser(user);
    }

    @Override
    public UserInfo login(UserInfo user) {
        return userDao.queryUserByUsernameAndPassword(user.getUserName(), user.getUserPwd());
    }

    @Override
    public boolean existsUsername(String username) {
        if (userDao.queryUserByUsername(username) == null) {
            // 等于null,说明没查到，没查到表示可用
            return false;
        }
        return true;
    }
}
