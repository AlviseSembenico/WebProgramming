
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.ProductDao;
import Dao.entities.Product;
import Dao.entities.Shop;
import Dao.jdbc.utilities.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alvise
 */
public class JdbcProductDao extends JdbcUtilities implements ProductDao {

    HashMap<String, String> map;
    private String tableName = "products";

    public JdbcProductDao() {
        map = new HashMap<String, String>();
        map.put("shop", "shops_id");
    }

    public LinkedList<Product> DoQwery(String name, String city, String region, String radius, String minPrice, String maxPrice, String maxRew, String minRew, String star, String order) throws SQLException, Exception {
        if (!checkConnection()) {
            return null;
        }
        String query = new String("");
        String place = new String(" ");
        String reg = new String(" ");
        String price = new String(" ");
        String rew = new String(" ");
        String str = new String(" ");
        String ord = new String(" ");
        if (name == "") {
            query = "select * from products p join shops s on p.shops_id=s.id";
        } else {
            query = "select p.* from products p join shops s on p.shops_id=s.id where soundex(p.name)=soundex(?)";
        }
        if (city != null) {
            place = " and s.city=?";
        }
        if (region != null) {
            reg = " and s.region=?";
        }
        if (maxPrice != null && !"".equals(maxPrice)) {
            price = " and (p.price>=? and p.price<=?)";
        }
        if (maxRew != null) {
            rew = " and ((select avg(r.global_value) from reviews r where r.products_id=o.id)>=? and (select avg(r.global_value) from reviews r where r.products_id=o.id)<=?)";
        }
        if (star != null) {
            str = " and (p.starValue/p.numberPeople)>=?";
        }
        if (order == null || ord == "price") {
            ord = " order by price";
        } else if (order == "star") {
            ord = " order by (starValue/numberPeople) desc";
        } else if (order == "category") {
            ord = " order by catgory";
        }
        PreparedStatement stmt = connection.prepareStatement(query + place + price + rew + str + ord);
        Integer i = new Integer(0);
        if (name != "") {
            i++;
            stmt.setString(i, name);
        }
        if (city != null) {
            i++;
            stmt.setString(i, city);
        }
        if (region != null) {
            i++;
            stmt.setString(i, region);
        }
        if (maxPrice != null && !"".equals(maxPrice)) {
            i++;
            stmt.setDouble(i, Double.parseDouble(minPrice));
            i++;
            stmt.setDouble(i, Double.parseDouble(maxPrice));
        }
        if (maxRew != null) {
            i++;
            stmt.setDouble(i, Double.parseDouble(minRew));
            i++;
            stmt.setDouble(i, Double.parseDouble(maxRew));
        }
        if (star != null) {
            i++;
            stmt.setDouble(i, Double.parseDouble(star));
        }
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;

    }

    public LinkedList<Product> getProductByFilters(String name, double latitude, double longitude, double radius, double minPrice, double maxPrice, double minRew, double maxRew) throws Exception {
        if (!checkConnection()) {
            return null;
        }
        String query = "select p.* from products p join shops s on p.shops_id=s.id where soundex(p.name)=soundex(?)";
        String dist = " and sqrt( pow(?-p.latitude,2)+pow(?-p.longitude,2))<=?";
        String price = " and (p.price>=? and p.price<=?)";
        String rew = " and ((select avg(r.global_value) from reviews r where r.products_id=o.id)>=? and (select avg(r.global_value) from reviews r where r.products_id=o.id)<=?)";
        PreparedStatement stmt = connection.prepareStatement(query + dist + price + rew);
        stmt.setString(1, name);
        stmt.setDouble(2, latitude);
        stmt.setDouble(3, longitude);
        stmt.setDouble(4, radius);
        stmt.setDouble(5, minPrice);
        stmt.setDouble(6, minPrice);
        stmt.setDouble(7, minRew);
        stmt.setDouble(8, maxRew);
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;
    }

    @Override
    public LinkedList<Product> getProductByName(String name) throws Exception {
        if (!checkConnection()) {
            return null;
        }
        String query = "select * from products where soundex(name)=soundex(?)";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setString(1, name);
        LinkedList<Product> res = new LinkedList<>();
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;

    }

    @Override
    public LinkedList<Product> getProductByPrice(double min, double max) throws Exception {
        String query = "select * from products where price>= ? and price<=?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setDouble(1, min);
        stmt.setDouble(2, max);
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;
    }

    @Override
    public LinkedList<Product> getProductByCategory(String category) throws Exception {
        HashMap<Object, String> mappa = new HashMap<Object, String>();
        mappa.put(category, "category");
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.getObject(Product.class, map, tableName, mappa)) {
            res.add((Product) o);
        }
        return res;
    }

    @Override
    public LinkedList<Product> getProductByReview(double min, double max) throws Exception {
        String query = "select p.* from products p natural join(\n"
                + "select p.id as id,avg(r.global_value) as mean from products p join reviews r on r.products_id=p.id group by p.id) as supp\n"
                + "where supp.mean>=? and supp.mean <=?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setDouble(1, min);
        stmt.setDouble(2, max);
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;
    }

    @Override
    public LinkedList<Product> getProductByShop(Shop shop) throws Exception {
        HashMap<Object, String> mappa = new HashMap<Object, String>();
        mappa.put(shop.getId(), "shops_id");
        LinkedList<Product> res = new LinkedList<Product>();
        for (Object o : super.getObject(Product.class, map, tableName, mappa)) {
            res.add((Product) o);
        }
        return res;
    }

    @Override
    public int insertDao(Object o) throws SQLException {
        return super.insertDao(o, map, tableName);
    }

    @Override
    public int deleteDao(Object o) throws SQLException {
        return super.deleteDao(o, map, tableName);
    }

    @Override
    public int updateDao(IdOwner o) throws SQLException {
        return super.updateDao(o, map, tableName);
    }

    @Override
    public Product getProductById(int id) throws Exception {
        HashMap<Object, String> mappa = new HashMap<Object, String>();
        mappa.put(id, "id");
        return (Product) super.getObject(Product.class, map, tableName, mappa).get(0);
    }

    @Override
    public Object getById(int id) {
        try {
            return getProductById(id);
        } catch (Exception ex) {
            Logger.getLogger(JdbcProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public LinkedList<Product> All() throws Exception {
        if (!checkConnection()) {
            return null;
        }
        String query = "select * from products";

        LinkedList<Product> res = new LinkedList<Product>();
        PreparedStatement stmt = connection.prepareStatement(query);
        for (Object o : super.fillResult(Product.class, map, stmt.executeQuery())) {
            res.add((Product) o);
        }
        return res;

    }

}
