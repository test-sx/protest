package org.movice.interceptors;

import org.movice.bean.UserInfo;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * @author 宋晓旭
 * @date 2020/10/04
 */
public class MyInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)throws Exception {
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("user");
        String path = request.getServletPath();
        if ((!"/login".equals(path))&&(!"/register".equals(path))&&userInfo==null){
            response.sendRedirect("http://localhost:8080/movie");
            return false;
        }
        return true;
    }
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler,
                                Exception ex) throws Exception {
    }

}
