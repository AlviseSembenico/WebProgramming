/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;
import java.util.LinkedList;



/**
 *
 * @author Alvise
 */
public interface ShopDao extends  DefaultDao,GetById  {
    public Shop getShopById(int id)throws Exception;
    public Shop getShopByName(String name)throws Exception;
    public LinkedList<Shop> getShopByOwner(User owner)throws Exception;
    public int getShopGlobalValue(int id);
    public Shop getShopByProduct(Product product)throws Exception;
}
