/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;
<<<<<<< HEAD
=======
import java.util.LinkedList;
>>>>>>> master



/**
 *
 * @author Alvise
 DefaultDao*/
<<<<<<< HEAD
public interface ReviewDao extends  DefaultDao, GetById{
    public Review getReviewById(int id)throws Exception;
    public Review getRewiewByCreator(User user)throws Exception;
    public Review getRewiewByProduct (Product product)throws Exception;
=======
public interface ReviewDao extends  DefaultDao,GetById{
    public LinkedList<Review> getRewiewByProduct(Product product) throws Exception;
    public LinkedList<Review> getRewiewByCreator(User user) throws Exception; 
    public Review getReviewById(int id) throws Exception;
>>>>>>> master
}
