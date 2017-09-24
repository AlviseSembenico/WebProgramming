/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.AnomaliesDao;
import Dao.IdOwner;
import Dao.entities.*;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alvise
 */
public class JdbcAnomalieDao  extends JdbcUtilities implements AnomaliesDao{
    HashMap<String, String> map;
    private String tableName="anomalies";
    
    
    @Override
    public LinkedList<Anomalies> getAnomaliesByPurchase(Purchase p) throws  Exception  {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(p.getId(),"purchase_id" );
        LinkedList<Anomalies> res=new LinkedList<Anomalies> ();
        for(Object o:super.getObject(Anomalies.class, null, tableName,null))
            res.add((Anomalies) o);
        return res;
    }
    
    
    @Override
    public int insertDao(Object o) throws SQLException {
       return super.updateDao(o, null, tableName);
    }

    @Override
    public int updateDao(IdOwner o) throws SQLException {
        return super.updateDao(o, null, tableName);
    }

    @Override
    public int deleteDao(Object o) throws SQLException {
        return super.updateDao(o, null, tableName);
    }

    @Override
    public Object getById(int id) {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id" );
        try {
            return (Anomalies) super.getObject(Anomalies.class, null, tableName, mappa).get(0);
        } catch (Exception ex) {
            Logger.getLogger(JdbcAnomalieDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

   
    
}