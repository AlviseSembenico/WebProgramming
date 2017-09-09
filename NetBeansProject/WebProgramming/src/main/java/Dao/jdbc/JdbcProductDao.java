/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.ProductDao;
import Dao.entities.Product;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author Alvise
 */
public class JdbcProductDao extends JdbcUtilities implements ProductDao{
    HashMap<String, String> map;
    
    public JdbcProductDao(){
        map=new HashMap<String, String>();
        map.put("shop", "shops_id");
    }
    
    
    @Override
    public LinkedList<Product> getProductByName(String name) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public LinkedList<Product> getProductByPrice(double min, double max) throws Exception {
        String query = "select * from products where price>= ? and price<=?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setDouble(1, min);
        stmt.setDouble(2, max);
        LinkedList<Product> res=new LinkedList<Product> ();
        for(Object o:super.executeQuery(Product.class, map, stmt.executeQuery()))
            res.add((Product) o);
        return res;
    }

    @Override
    public LinkedList<Product> getProductByCategory(String category) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(category,"category" );
        LinkedList<Product> res=new LinkedList<Product> ();
        for(Object o:super.getObject(Product.class, map, "products", mappa))
            res.add((Product) o);
        return res;
    }

    @Override
    public LinkedList<Product> getProductByReview(double min, double max) throws Exception {
        String query = "select p.* from products p natural join(\n" +
                    "select p.id as id,avg(r.global_value) as mean from products p join reviews r on r.products_id=p.id group by p.id) as supp\n" +
                    "where supp.mean>=? and supp.mean <=?";
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setDouble(1, min);
        stmt.setDouble(2, max);
        LinkedList<Product> res=new LinkedList<Product> ();
        for(Object o:super.executeQuery(Product.class, map, stmt.executeQuery()))
            res.add((Product) o);
        return res;
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
    public int insertDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int updateDao(IdOwner o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int deleteDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Product getProductById(int id) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id" );
        return (Product) super.getObject(Product.class, map, "products", mappa).get(0);
    }

    
}
