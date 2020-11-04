package org.movice.controller.login;

import org.movice.bean.UserInfo;
import org.movice.service.login.LoginService;
import org.movice.service.login.impl.LoginServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 登录
 * @author 宋晓旭
 * @date 2020/09/14
 */
@Controller
public class LoginController {

    private LoginService loginService = new LoginServiceImpl();

    /**
     * 登录
     * @param req
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ModelAndView mv = new ModelAndView();
        req.setCharacterEncoding("utf-8");
        //  1、获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        // 调用 userService.login()登录处理业务
        UserInfo loginUser = loginService.login(new UserInfo(username,password));
        // 如果等于null,说明登录 失败!
        if (loginUser == null) {
            //登录失败
            req.setAttribute("errorMsg","用户名或密码错误");
            mv.addObject("errorMsg","用户名或密码错误");
            mv.setViewName("user/login");
            return mv;
        } else {
            // 登录 成功
            req.getSession().setAttribute("user",loginUser);
            resp.sendRedirect("http://localhost:8080/movie/getMovieList");
            return null;
        }

    }


}
