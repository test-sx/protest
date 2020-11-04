package org.movice.service.user.impl;

import org.movice.bean.OrderInfo;
import org.movice.dao.user.UserDao;
import org.movice.dao.user.impl.UserDaoImpl;
import org.movice.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/10/06
 */
@Service
public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public List<OrderInfo> getUserOrders(int userId) {
        List<OrderInfo> orderInfos = userDao.getUserOrders(userId);
        return orderInfos;
    }
}
