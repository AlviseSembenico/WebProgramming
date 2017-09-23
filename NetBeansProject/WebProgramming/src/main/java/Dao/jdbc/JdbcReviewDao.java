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


/**
 *
 * @author Alvise
<<<<<<< HEAD
 * 
 */
public class JdbcReviewDao extends JdbcUtilities implements ReviewDao{
    HashMap<String, String> map;
    private String tableName="reviews";
    
    
    public JdbcReviewDao(){
        map=new HashMap<String, String>();
    }
    
    @Override
    public Review getReviewById(int id) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id");
        Review res=(Review)  super.getObject(Review.class, map, tableName, mappa).get(0);
        return res;
    }

    @Override
    public LinkedList<Review> getRewiewByCreator(User user) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(user.getId(),"creator_id");
        LinkedList<Review> res=new LinkedList<Review>();
        for(Object o:super.getObject(Review.class, map, tableName, mappa))
            res.add((Review) o);
        return res;
    }

    @Override
    public LinkedList<Review> getRewiewByProduct(Product product) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(product.getId(),"products_id");
        LinkedList<Review> res=new LinkedList<Review>();
        for(Object o:super.getObject(Review.class, map, tableName, mappa))
            res.add((Review) o);
        return res;
    }
    
    @Override
    public int insertDao(Object o) throws SQLException {
        return super.insertDao(o, map, tableName);
    }

    @Override
    public int deleteDao(Object o) throws SQLException {
        return super.deleteDao(o, map, tableName);
=======
 */public class JdbcReviewDao extends JdbcUtilities implements ReviewDao{

    @Override
    public int insertDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> parent of e080225... Merge branch 'master' into Borto
    }

    @Override
    public int updateDao(IdOwner o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int deleteDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
