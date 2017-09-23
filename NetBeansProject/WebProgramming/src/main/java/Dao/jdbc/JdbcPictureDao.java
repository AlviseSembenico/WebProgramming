/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.PictureDao;
import Dao.jdbc.utilities.JdbcUtilities;
import Dao.entities.Picture;
import Dao.entities.Product;
import Dao.entities.Shop;
import Dao.entities.User;
import java.util.HashMap;

/**
 *
 * @author Alvise
 */
public class JdbcPictureDao extends JdbcUtilities implements PictureDao {

    HashMap<String, String> map;
    public JdbcPictureDao(){
        map=new HashMap<String, String>();
        map.put("product", "products_id");
        map.put("shop", "shops_id");
    }
    
    @Override
    public Picture getPictureById(int id) throws Exception{ 
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id");
        return (Picture) super.getObject(Picture.class, map, "shops", mappa).get(0);
    } 
   
    @Override
    public Picture getPictureByProduct(Product product) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(product.getId(),"products_id");
        return (Picture) super.getObject(Picture.class, map, "shops", mappa).get(0);
    }

    @Override
    public Picture getPictureByShop(Shop shop) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(shop.getId(),"shops_id");
        return (Picture) super.getObject(Picture.class, map, "shops", mappa).get(0);
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
}