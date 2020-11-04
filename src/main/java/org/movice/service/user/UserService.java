package org.movice.service.user;

import org.movice.bean.OrderInfo;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/10/06
 */
public interface UserService {

    /**
     * 获取订单列表
     * @param userId
     * @return
     */
    List<OrderInfo> getUserOrders(int userId);

}
