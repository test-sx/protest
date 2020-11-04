package org.movice.dao.movie;

import org.movice.bean.MovieInfo;
import org.movice.bean.MovieReview;
import org.movice.bean.buyTicketInfo;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
public interface MovieDao {

    List<MovieInfo> getMovieList();

    /**
     * 获取电影评论
     *
     * @param movieName
     * @return
     */
    List<MovieReview> getMovieReview(String movieName);

    /**
     * 获取电影列表
     *
     * @param movieId
     * @return
     */
    MovieInfo getMovieInfo(String movieId);

    /**
     * 添加电影评论
     * @param movieId
     * @param review
     * @param userName
     * @return
     */
    boolean addReview(String movieId, String review, String userName);

    /**
     * 买票
     *
     * @param userId
     * @param movieId
     * @param seatNum
     * @return
     */
    boolean buyTicket(int userId, String movieId, String seatNum, String showroom, String playtime);

    /**
     * 查询订单信息
     * @param userName
     * @return
     */
    List<buyTicketInfo> getBuyInfo(String userName);

    /**
     * 修改订单
     * @param id
     * @param ticketStatus
     * @return
     */
    boolean updateBuyInfo(int id,String ticketStatus);

    /**
     * 获取当前以占的座位
     * @param movieId
     * @return
     */
    List<String> getSeat(String movieId);



}
