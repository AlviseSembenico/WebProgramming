/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;



/**
 *
 * @author Alvise
 */
public interface ShopDao extends  DefaultDao{
    public Shop getShopById(int id)throws Exception;
}
