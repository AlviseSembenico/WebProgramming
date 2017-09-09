/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.ReviewDao;
import Dao.entities.Product;
import Dao.entities.Review;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Alvise
 */
public class JdbcReviewDao extends JdbcUtilities implements ReviewDao{
    HashMap<String, String> map;
    
    public JdbcReviewDao(){
        map=new HashMap<String, String>();
        map.put("creator", "creator_id");
        map.put("product", "products_id");
    }
    
    @Override
    public Review getReviewById(int id) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id");
        Review res=(Review)  super.getObject(Review.class, map, "reviews", mappa).get(0);
        return res;
    }

    @Override
    public Review getRewiewByCreator(User user) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(user.getId(),"creator_id");
        Review res=(Review)  super.getObject(Review.class, map, "reviews", mappa).get(0);
        return res;    }

    @Override
    public Review getRewiewByProduct(Product product) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(product.getId(),"products_id");
        Review res=(Review)  super.getObject(Review.class, map, "reviews", mappa).get(0);
        return res;
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
    public Object getById(int id) {
        try {
            return getReviewById(id);
        } catch (Exception ex) {
            Logger.getLogger(JdbcReviewDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
