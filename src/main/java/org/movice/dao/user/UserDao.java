package org.movice.dao.user;

import org.movice.bean.OrderInfo;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/10/06
 */
public interface UserDao {

    List<OrderInfo> getUserOrders(int userId);

}
