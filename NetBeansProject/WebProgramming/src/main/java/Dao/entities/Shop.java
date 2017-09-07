package Dao.entities;

import system.Log;


/**
* @generated
*/
public class Shop extends IdOwnerComparable{
    private int id;
    private String name;
    private String description;
    private String webSiteUrl;
    private int globalValue;
    private User owner;
    private User creator;
    private double latitude;
    private double longitute;
    private ShippingMethod shippingMethod;
    private Timetable timeTable;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWebSiteUrl() {
        return webSiteUrl;
    }

    public void setWebSiteUrl(String webSiteUrl) {
        this.webSiteUrl = webSiteUrl;
    }

    public int getGlobalValue() {
        return globalValue;
    }

    public void setGlobalValue(int globalValue) {
        this.globalValue = globalValue;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User user) {
        this.owner = user;
    }

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitute() {
        return longitute;
    }

    public void setLongitute(double longitute) {
        this.longitute = longitute;
    }

    public String getShippingMethod() {
        return shippingMethod.name();
    }

    public void setShippingMethod(String shippingMethod) {
        //this.shippingMethod = ShippingMethod.valueOf(shippingMethod);
    }

    public Timetable getTimeTable() {
        return timeTable;
    }

    public void setTimeTable(Timetable timeTable) {
        this.timeTable = timeTable;
    }
}
