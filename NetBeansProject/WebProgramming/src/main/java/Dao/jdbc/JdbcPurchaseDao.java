/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.PurchaseDao;
import Dao.entities.Purchase;
import Dao.entities.Shop;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Alvise
 */
public class JdbcPurchaseDao extends JdbcUtilities implements PurchaseDao{
    HashMap<String, String> map;
    
    JdbcPurchaseDao(){
        map=new HashMap<String, String>();
        map.put("product", "product_id");
        map.put("user", "user_id");
    }
    
    @Override
    public Purchase getPurchaseById(int id) throws Exception{
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id");
        Purchase res=(Purchase)  super.getObject(Purchase.class, map, "purchases", mappa).get(0);
        return res;
    }

    @Override
    public LinkedList<Purchase> getPurchaseByUser(User user) throws Exception{
        LinkedList<Purchase> res=new LinkedList<Purchase> ();
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(user.getId(),"user_id");
        for(Object o:super.getObject(Purchase.class, map, "purchases",mappa))
            res.add((Purchase) o);
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
            return getPurchaseById(id);
        } catch (Exception ex) {
            Logger.getLogger(JdbcPurchaseDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
