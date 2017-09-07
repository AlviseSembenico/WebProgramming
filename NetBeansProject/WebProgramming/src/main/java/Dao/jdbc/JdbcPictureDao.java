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

/**
 *
 * @author Alvise
 */
public class JdbcPictureDao extends JdbcUtilities implements PictureDao {

    @Override
    public Picture getPictureById(int id){ 
       return null;
    } 
   
    @Override
    public Picture getPictureByProduct(Product product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Picture getPictureByShop(Shop shop) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

   
}