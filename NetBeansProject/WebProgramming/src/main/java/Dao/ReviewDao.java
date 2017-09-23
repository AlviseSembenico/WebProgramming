/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;
import java.util.List;



/**
 *
 * @author Alvise
 DefaultDao*/
public interface ReviewDao extends  DefaultDao, GetById{
    public Review getReviewById(int id)throws Exception;
    public List<Review> getRewiewByCreator(User user)throws Exception;
    public List<Review> getRewiewByProduct (Product product)throws Exception;
}