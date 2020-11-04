package org.movice.dao.movie.impl;

import org.movice.bean.MovieInfo;
import org.movice.bean.MovieReview;
import org.movice.bean.buyTicketInfo;
import org.movice.dao.movie.MovieDao;
import org.movice.utils.BaseDao;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
public class MovieDaoImpl extends BaseDao implements MovieDao {

    @Override
    public List<MovieInfo> getMovieList(){
        String sql = "SELECT * FROM movieinfo t";
        List<MovieInfo> movieInfos = queryForList(MovieInfo.class,sql);
        return movieInfos;
    }

    @Override
    public List<MovieReview> getMovieReview(String movieId) {
        String sql = "SELECT t.`id`,t.`movieReview`,t.`userName` FROM moviereview t WHERE t.`movieId`= ?";
        List<MovieReview> movieReviews = queryForList(MovieReview.class, sql, movieId);
        return movieReviews;
    }


    @Override
    public MovieInfo getMovieInfo(String movieId) {
        String sql = "SELECT * FROM movieinfo t WHERE t.`id`= ?";
        MovieInfo movieInfo = queryForOne(MovieInfo.class, sql, movieId);
        return movieInfo;
    }

    @Override
    public boolean addReview(String movieId, String review, String userName) {
        String sql = "INSERT INTO `moviereview`(`movieId`,`movieReview`,`userName`) VALUES(?,?,?)";
        int result = update(sql,movieId,review,userName);
        if (result>0){
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean buyTicket(int userId, String movieId, String seatNum, String showroom, String playtime) {
        String ticketStatus = "完成";

        String sql = "INSERT INTO `buyticketinfo`(`userId`,`movieId`,`ticketStatus`,`seatNum`,`showroom`,`playtime`) VALUE(?,?,?,?,?,?)";
        int result = update(sql,userId,movieId,ticketStatus,seatNum,showroom,playtime);
        if (result>0){
            return true;
        }
        return false;
    }

    @Override
    public List<buyTicketInfo> getBuyInfo(String userName) {
        String sql = "SELECT `id`, `userName`,`movieName`,`seatNum`,`showroom`,`playtime`,`ticketStatus` FROM `buyticketinfo` WHERE `userName`=?";
        List<buyTicketInfo> buyTicketInfos = queryForList(buyTicketInfo.class,sql,userName);
        return buyTicketInfos;
    }

    @Override
    public boolean updateBuyInfo(int id, String ticketStatus) {
        String sql = "UPDATE `buyticketinfo` SET `ticketStatus`=? WHERE `id`=?";
        int result = update(sql,ticketStatus,id);
        if (result>0){
            return true;
        }
        return false;
    }

    @Override
    public List<String> getSeat(String movieId) {
        String sql = "SELECT `seatNum` FROM `buyticketinfo` WHERE `movieId` = ?";
        List<buyTicketInfo> buyTicketInfos = queryForList(buyTicketInfo.class,sql,movieId);
        List<String> seats = new ArrayList<>();
        if (buyTicketInfos!=null){
            for (int i=0;i<buyTicketInfos.size();i++) {
                seats.add(buyTicketInfos.get(i).getSeatNum());
            }
        }
        return seats;
    }


}
