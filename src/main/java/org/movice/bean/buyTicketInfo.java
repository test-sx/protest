package org.movice.bean;

/**
 * @author 宋晓旭
 * @date 2020/09/29
 */
public class buyTicketInfo {
    private int id;
    private String userName;
    private String movieName;
    private String seatNum;
    private String showroom;
    private String playtime;
    private String ticketStatus;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public buyTicketInfo() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(String seatNum) {
        this.seatNum = seatNum;
    }

    public String getShowroom() {
        return showroom;
    }

    public void setShowroom(String showroom) {
        this.showroom = showroom;
    }

    public String getPlaytime() {
        return playtime;
    }

    public void setPlaytime(String playtime) {
        this.playtime = playtime;
    }

    public String getTicketStatus() {
        return ticketStatus;
    }

    public void setTicketStatus(String ticketStatus) {
        this.ticketStatus = ticketStatus;
    }
}
