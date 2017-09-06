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
public interface PictureDao  extends  DefaultDao{
    public Picture getPictureById(int id);
    public Picture getPictureByProduct(Product product);
    public Picture getPictureByShop(Shop shop);
}
