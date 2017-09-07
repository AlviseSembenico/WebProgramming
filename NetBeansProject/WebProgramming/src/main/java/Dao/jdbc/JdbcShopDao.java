/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.*;
import Dao.entities.Shop;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.ResultSet;
import java.util.HashMap;



/**
 *
 * @author Alvise
 */
public class JdbcShopDao extends JdbcUtilities implements ShopDao{
    HashMap<String, String> map;
    
    public JdbcShopDao(){
        map=new HashMap<String, String>();
        map.put("owner", "owner_id");
        map.put("creator", "owner_id");
    }

    @Override
    public Shop getShopById(int id) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id" );
        Shop res=(Shop) super.getObject(Shop.class, map, "shops", mappa).get(0);/*
        ResultSet rs=getLastRs();
        res.setOwner(new JdbcUserDao().getUserById(rs.getInt("owner_id")));
        res.setOwner(new JdbcUserDao().getUserById(rs.getInt("creator_id")));
        res.setShippingMethod(rs.getString("shipping_method"));*/
        return res;
    }

    @Override
    public Shop getShopByName(String name) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Shop getShopByOwner(User owner) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insertDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int deleteDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int updateDao(IdOwner o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
