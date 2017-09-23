package Dao.entities;

import java.sql.Time;
import system.Log;


/**
* @generated
*/
public class Shop extends IdOwnerComparable{

    private String name;
    private String description;
    private String webSiteUrl;
    private int globalValue;
    private User owner;
    private User creator;
    private double latitude;
    private double longitute;
    private int shippingMethod;
    private String closeDay;
    private Time openTime;
    private Time closeTime;
    private String region;
    private String street;
    private String regionS;
    private String city;
    
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.regionS = region;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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

    public int getShippingMethod() {
        return shippingMethod;
    }

    public void setShippingMethod(int shippingMethod) {
        
        this.shippingMethod = shippingMethod;
    }

    public String getCloseDay() {
        return closeDay;
    }

    public void setCloseDay(String closeDay) {
        this.closeDay = closeDay;
    }

    public Time getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Time openTime) {
        this.openTime = openTime;
    }

    public Time getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Time closeTime) {
        this.closeTime = closeTime;
    }
}
