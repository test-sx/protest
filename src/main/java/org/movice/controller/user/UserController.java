package org.movice.controller.user;

import org.movice.bean.OrderInfo;
import org.movice.bean.UserInfo;
import org.movice.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/10/06
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 获取订单详情
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping(value = "getUserOrder")
    public ModelAndView getUserOrder(HttpServletRequest req, HttpServletResponse resp){
        ModelAndView mv = new ModelAndView();
        UserInfo loginUser = (UserInfo) req.getSession().getAttribute("user");
        List<OrderInfo> orderInfos = userService.getUserOrders(loginUser.getId());
        mv.addObject("username",loginUser.getUserName());
        mv.addObject("orderInfos",orderInfos);
        mv.setViewName("user/order");
        return mv;
    }
}
