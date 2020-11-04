package org.movice.controller.register;

import org.movice.bean.UserInfo;
import org.movice.service.login.LoginService;
import org.movice.service.login.impl.LoginServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 注册
 * @author 宋晓旭
 * @date 2020/09/14
 */
@Controller
public class RegisterController {

    private LoginService loginService = new LoginServiceImpl();

    @RequestMapping(value = "register")
    public ModelAndView register(HttpServletRequest req, HttpServletResponse resp) {
        ModelAndView mv = new ModelAndView();
        //  1、获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String userPhone = req.getParameter("userphone");
        String code = req.getParameter("code");

//        2、检查 验证码是否正确  === 写死,要求验证码为:abcde
        if ("abcde".equalsIgnoreCase(code)) {
//        检查 用户名是否可用
            if (loginService.existsUsername(username)) {
                String registerMsg = "用户名 "+username+" 已存在";
                mv.addObject("registerMsg",registerMsg);
                mv.setViewName("user/register");
            } else {
//                调用Sservice保存到数据库
                loginService.registUser(new UserInfo(username,userPhone,password,email));
//                跳到注册成功页面 regist_success.html
                mv.setViewName("user/login");
            }
        } else {
            String registerMsg = "验证码[" + code + "]错误";
            mv.addObject("registerMsg",registerMsg);
            mv.setViewName("user/register");
        }
        return mv;
    }
}
