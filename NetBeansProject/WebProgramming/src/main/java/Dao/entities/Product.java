package Dao.entities;

import Dao.ShopDao;

/**
 * @generated
 */
public class Product extends IdOwnerComparable {

    private String name;
    private String description;
    private double price;
    private String category;
    private Shop shop;
    private int retractable;
    private int numberPeople;
    private int starValue;

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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public void setRetractable(int r) {
        retractable = r;
    }

    public int getRetractable() {
        return retractable;
    }

    /**
     * @return the numberPeople
     */
    public int getNumberPeople() {
        return numberPeople;
    }

    /**
     * @param numberPeople the numberPeople to set
     */
    public void setNumberPeople(int numberPeople) {
        this.numberPeople = numberPeople;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Product)) {
            return false;
        }
        return this.id == ((Product) o).getId();
    }

    /**
     * @return the starValue
     */
    public int getStarValue() {
        return starValue;
    }

    /**
     * @param starValue the starValue to set
     */
    public void setStarValue(int starValue) {
        this.starValue = starValue;
    }

}
