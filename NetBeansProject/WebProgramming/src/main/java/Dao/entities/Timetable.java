package Dao.entities;

import java.util.Date;


/**
* @generated
*/
public class Timetable extends IdOwnerComparable{
    private int id;
    private String closeDay;
    private Date openTime;
    private Date closeTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCloseDay() {
        return closeDay;
    }

    public void setCloseDay(String closeDay) {
        this.closeDay = closeDay;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }

   
}