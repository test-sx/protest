package org.movice.service.movie.impl;

import org.movice.bean.MovieInfo;
import org.movice.bean.MovieReview;
import org.movice.bean.buyTicketInfo;
import org.movice.dao.movie.MovieDao;
import org.movice.dao.movie.impl.MovieDaoImpl;
import org.movice.service.movie.MovieService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
@Service
public class MovieServiceImpl implements MovieService {

    private MovieDao movieDao = new MovieDaoImpl();

    public List<MovieInfo> getMovieList(){
        List<MovieInfo> movieInfos = movieDao.getMovieList();
        return movieInfos;
    }

    /**
     * 获取电影列表
     * @param movieId
     * @return
     */
    @Override
    public MovieInfo getMovieInfo(String movieId) {
        MovieInfo movieInfo = movieDao.getMovieInfo(movieId);
        List<MovieReview> movieReviews = movieDao.getMovieReview(movieId);
        movieInfo.setMovieReview(movieReviews);
        return movieInfo;
    }

    @Override
    public boolean addReview(String movieId, String review, String userName) {
        return movieDao.addReview(movieId,review,userName);
    }

    /**
     * 买票
     * @param userId
     * @param movieId
     * @param seatNum
     * @return
     */
    @Override
    public boolean buyTicket(int userId, String movieId, String seatNum, String showroom, String playtime) {
        boolean result = movieDao.buyTicket(userId,movieId,seatNum,showroom,playtime);
        return result;
    }

    /**
     * 查询订单详情
     * @param userName
     * @return
     */
    @Override
    public List<buyTicketInfo> getBuyInfo(String userName) {
        List<buyTicketInfo> buyTicketInfos = movieDao.getBuyInfo(userName);
        return buyTicketInfos;
    }

    @Override
    public boolean updateBuyInfo(int id, String ticketStatus) {
        boolean result = movieDao.updateBuyInfo(id,ticketStatus);
        return result;
    }

    @Override
    public List<String> getSeat(String movieId) {
        List<String> seats = movieDao.getSeat(movieId);
        return seats;
    }




}
