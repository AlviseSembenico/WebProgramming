package Dao.entities;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/**
 * @generated
 */
public class Review extends IdOwnerComparable {

    private int globalValue;
    private int quality;
    private int service;
    private String description;
    private Timestamp creationDate;
    private User creator;
    private Product product;

    public int getGlobalValue() {
        return globalValue;
    }

    public void setGlobalValue(int globalValue) {
        this.globalValue = globalValue;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public int getService() {
        return service;
    }

    public void setService(int service) {
        this.service = service;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Timestamp creationDate) {
        this.creationDate = creationDate;
    }

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getDiffTime() {
        long time1 = this.creationDate.getTime();
        Date date = new Date();
        long time2 = date.getTime();
        long millisDiff = (time2 - time1);
        int days = (int) (millisDiff / 86400000);
        return days;
    }

}
