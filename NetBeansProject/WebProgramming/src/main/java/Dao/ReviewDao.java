/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Dao.entities.*;
<<<<<<< HEAD
<<<<<<< HEAD
import java.util.List;
=======
>>>>>>> parent of e080225... Merge branch 'master' into Borto
=======
>>>>>>> parent of e080225... Merge branch 'master' into Borto



/**
 *
 * @author Alvise
 DefaultDao*/
public interface ReviewDao extends  DefaultDao, GetById{
    public Review getReviewById(int id)throws Exception;
<<<<<<< HEAD
    public List<Review> getRewiewByCreator(User user)throws Exception;
    public List<Review> getRewiewByProduct (Product product)throws Exception;
}
=======
    public Review getRewiewByCreator(User user)throws Exception;
    public Review getRewiewByProduct (Product product)throws Exception;
}
>>>>>>> parent of e080225... Merge branch 'master' into Borto
