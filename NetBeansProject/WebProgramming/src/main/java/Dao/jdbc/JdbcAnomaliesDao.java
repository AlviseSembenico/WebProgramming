/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.AnomaliesDao;
import Dao.IdOwner;
import Dao.jdbc.utilities.JdbcUtilities;

/**
 *
 * @author Alvise
 */
public class JdbcAnomaliesDao  extends JdbcUtilities implements AnomaliesDao{

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
