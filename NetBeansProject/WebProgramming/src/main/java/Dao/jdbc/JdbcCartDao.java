/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.CartDao;
import Dao.IdOwner;
import Dao.entities.*;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;

/**
 *
 * @author Alvise
 */
public class JdbcCartDao extends JdbcUtilities implements CartDao{
    HashMap<String, String> map;
    private String tableName="cart";
    private Cart cart=null;
    @Override
    public Object getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public void saveStatus(Cart cart){
        this.cart=cart;
    }
    
    public JdbcCartDao(){
        map=new HashMap<String, String>();
        map.put("user", "users_id");
        map.put("product", "products_id");
    }
     
    @Override
    public Cart getByUser(User user) throws Exception{
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(user.getId(),"users_id");
        Cart res=new Cart();
        for(Object o: super.getObject(CartContainer.class, map, tableName, mappa)){
            CartContainer cc=(CartContainer)o;
            res.setUser(cc.getUser());
            res.getProducts().add(cc.getProduct());
        }
        return res;
    } 

    
    @Override
    public int insertDao(Object o) throws SQLException{
        Cart c=(Cart)o;
        for(Product p:c.getProducts())
            return super.insertDao(new CartContainer(c.getUser(),p), null, tableName);
        return 0;
    }

    @Override
    public int updateDao(IdOwner o) throws SQLException{
        Cart c=(Cart)o;
        if(cart==null )
            return 0;
        int res=0;
        for(Product p:c.getProducts()){
            if(!cart.getProducts().contains(p))
                res+=super.insertDao(new CartContainer(c.getUser(),p), null, tableName);
        }
        for(Product p:cart.getProducts()){
            if(!c.getProducts().contains(p))
                res+=super.deleteDao(new CartContainer(c.getUser(),p), null, tableName);
        }
        return res;
    }

    @Override
    public int deleteDao(Object o) throws SQLException{
        Cart c=(Cart)o;
        return super.insertDao(new CartContainer(c.getUser(),null), null, tableName);
    }

 
    

    
}
