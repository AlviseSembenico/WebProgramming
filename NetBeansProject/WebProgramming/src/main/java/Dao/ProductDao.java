/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;
import java.util.LinkedList;

/**
 *
 * @author Alvise
 */
public interface ProductDao extends  DefaultDao, GetById{
    Product getProductById(int id)throws Exception;
    LinkedList<Product> getProductByFilters(String name,double latitude,double longitude,double radius,double minPrice, double maxPrice, double minRew,double maxRew) throws Exception ;
    LinkedList<Product> getProductByName(String name) throws Exception;

    LinkedList<Product> getProductByPrice(double min, double max) throws Exception;

    LinkedList<Product> getProductByCategory(String category) throws Exception;
    LinkedList<Product> getProductByReview(double min,double max) throws Exception;

    public LinkedList<Product> DoQwery(String name, String region, String city, String radius, String minPrice, String maxPrice, String minRew, String maxRew, String star, String order) throws Exception;
    LinkedList<Product> getProductByShop(Shop shop) throws Exception;

    public LinkedList<Product> All()throws Exception;

    public LinkedList<Product> getSimil(String category,String name);
}
