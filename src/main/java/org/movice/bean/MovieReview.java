package org.movice.bean;

/**
 * @author 宋晓旭
 * @date 2020/09/28
 */
public class MovieReview {
    private String id;
    private String movieReview;
    private String userName;

    public MovieReview() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMovieReview() {
        return movieReview;
    }

    public void setMovieReview(String movieReview) {
        this.movieReview = movieReview;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
