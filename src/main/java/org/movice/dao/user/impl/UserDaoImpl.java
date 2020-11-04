package org.movice.dao.user.impl;

import org.movice.bean.OrderInfo;
import org.movice.dao.user.UserDao;
import org.movice.utils.BaseDao;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/10/06
 */
public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public List<OrderInfo> getUserOrders(int userId) {
        List<OrderInfo> orderInfos = new ArrayList<>();
        String sql = "SELECT u.`userName`,m.`movieName`,m.`actors`,m.`playTime`,m.`showroom`,t.`seatNum`,t.`ticketStatus` " +
                "FROM `buyticketinfo` t LEFT JOIN `movieinfo` m ON t.`movieId`=m.`id` " +
                "LEFT JOIN `userinfo` u ON t.`userId`=u.`id` " +
                "WHERE u.`id`=?";
        orderInfos = queryForList(OrderInfo.class,sql,userId);
        return orderInfos;
    }
}
