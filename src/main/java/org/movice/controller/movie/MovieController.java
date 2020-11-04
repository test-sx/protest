package org.movice.controller.movie;

import org.movice.bean.MovieInfo;
import org.movice.bean.UserInfo;
import org.movice.service.movie.MovieService;
import org.movice.service.movie.impl.MovieServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
@Controller
public class MovieController {

    private MovieService movieService = new MovieServiceImpl();

    /**
     * 获取电影列表
     * @param req
     * @return
     */
    @RequestMapping(value = "getMovieList")
    public ModelAndView getMovieList(HttpServletRequest req){
        ModelAndView mv = new ModelAndView();
        UserInfo loginUser = (UserInfo) req.getSession().getAttribute("user");
        List<MovieInfo> movieInfos = movieService.getMovieList();
        mv.addObject("movieInfos",movieInfos);
        mv.addObject("username",loginUser.getUserName());
        mv.setViewName("home");
        return mv;
    }

    /**
     * 获取电影详情
     * @param req
     * @param resp
     */
    @RequestMapping(value = "getMovieInfo")
    public ModelAndView getMovieDetail(HttpServletRequest req, HttpServletResponse resp)  {
        //  1、获取请求的参数
        String movieId = req.getParameter("movieId");
        MovieInfo movieInfo = movieService.getMovieInfo(movieId);
        ModelAndView mv = new ModelAndView();
        UserInfo loginUser = (UserInfo) req.getSession().getAttribute("user");
        mv.addObject("username",loginUser.getUserName());
        mv.addObject("movieInfo",movieInfo);
        mv.setViewName("ticket/ticketdetail");
        return mv;

    }

    /**
     * 添加评论
     * @param req
     * @throws UnsupportedEncodingException
     */
    @RequestMapping(value = "/addReview")
    public void addReview(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ModelAndView mv = new ModelAndView();
        String review = req.getParameter("review");
        String movieId = req.getParameter("movieId");
        UserInfo loginUser = (UserInfo) req.getSession().getAttribute("user");
        mv.addObject("username",loginUser.getUserName());
        String userName = loginUser.getUserName();
        boolean isAdd = movieService.addReview(movieId,review,userName);
        if (isAdd) {
            System.out.println("添加评论成功！");
        }
        String url = "http://localhost:8080/movie/getMovieInfo？movieId="+movieId;
        resp.sendRedirect(url);
    }

    /**
     * 获取当前电影售票情况
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping(value = "ticketInfo")
    public ModelAndView ticketInfo(HttpServletRequest req, HttpServletResponse resp){
        ModelAndView mv = new ModelAndView();
        String movieId = req.getParameter("movieId");
        String movieName = req.getParameter("movieName");
        String playTime = req.getParameter("playTime");
        String showroom = req.getParameter("showroom");
        List<String> seats = movieService.getSeat(movieId);
        List<HashMap> allSeats = getAllSeats(seats);
        mv.addObject("movieId",movieId);
        mv.addObject("movieName",movieName);
        mv.addObject("playTime",playTime);
        mv.addObject("showroom",showroom);
        mv.addObject("seats",seats);
        mv.addObject("allSeats",allSeats);
        mv.setViewName("ticket/buyticket");
        return mv;
    }

    /**
     * 买票
     * @param req
     * @param resp
     */
    @RequestMapping(value = "buyTicket")
    public void buyTicket(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String[] seatNum = req.getParameterValues("seatNum");
        UserInfo loginUser = (UserInfo) req.getSession().getAttribute("user");
        String movieId = req.getParameter("movieId");
        String playTime = req.getParameter("playTime");
        String showroom = req.getParameter("showroom");
        if (seatNum!=null&&seatNum.length>0) {
            boolean[] isBuy = new boolean[seatNum.length];
            for (int i = 0; i < seatNum.length; i++) {
                isBuy[i] = movieService.buyTicket(loginUser.getId(), movieId, seatNum[i], showroom, playTime);
            }
            if (isBuy != null) {
                boolean isOk = true;
                for (int i = 0; i < isBuy.length; i++) {
                    if (!isBuy[i]) {
                        System.out.println("购票失败");
                        isOk = false;
                    }
                }
                if (isOk) {
                    System.out.println("购票成功");
                }
            } else {
                System.out.println("购票失败");
            }
        } else {
            System.out.println("未选择座位，购票失败");
        }
        resp.sendRedirect("http://localhost:8080/movie/getUserOrder");
    }

    /**
     * 获取所有座位
     * @return
     */
    private List<HashMap> getAllSeats(List<String> seats){
        List<HashMap> allSeats = new ArrayList<>();
        for (int i = 1; i < 17; i++) {
            Map<String, Integer> map = new HashMap<>();
            for (int j = 0; j < 10; j++) {
                String seatNum = j + "排-" + i+"座";
                if (seats!=null&&seats.size()>0) {
                    for (int s = 0; s < seats.size(); s++) {
                        String seat = seats.get(s);
                        if (seat.equals(seatNum)) {
                            map.put(seatNum, 1);
                            break;
                        } else {
                            map.put(seatNum, 0);
                        }
                    }
                } else {
                    map.put(seatNum,0);
                }
            }
            allSeats.add((HashMap) map);
        }
        return allSeats;
    }
}
