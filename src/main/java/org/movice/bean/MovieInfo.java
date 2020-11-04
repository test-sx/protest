package org.movice.bean;

import java.util.List;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
public class MovieInfo {
    private String id;
    private String movieName;
    private String actors;
    private String movieDetail;
    private String playTime;
    private String company;
    private String movieType;
    private String showroom;
    private List<MovieReview> movieReview;

    public MovieInfo() {
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType;
    }

    public String getShowroom() {
        return showroom;
    }

    public void setShowroom(String showroom) {
        this.showroom = showroom;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public String getMovieDetail() {
        return movieDetail;
    }

    public void setMovieDetail(String movieDetail) {
        this.movieDetail = movieDetail;
    }

    public String getPlayTime() {
        return playTime;
    }

    public void setPlayTime(String playTime) {
        this.playTime = playTime;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public List<MovieReview> getMovieReview() {
        return movieReview;
    }

    public void setMovieReview(List<MovieReview> movieReview) {
        this.movieReview = movieReview;
    }
}
