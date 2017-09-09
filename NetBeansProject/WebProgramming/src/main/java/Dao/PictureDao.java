/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.Picture;
import Dao.entities.Product;
import Dao.entities.Shop;


/**
 *
 * @author Alvise
 */
public interface PictureDao  extends  DefaultDao,GetById{
    public Picture getPictureById(int id) throws Exception;
    public Picture getPictureByProduct(Product product) throws Exception;
    public Picture getPictureByShop(Shop shop) throws Exception;
}
