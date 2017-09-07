/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.IdOwner;
import Dao.*;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alvise
 */
public class JdbcUserDao extends JdbcUtilities implements UserDao{
    HashMap<String, String> map;
    
    public JdbcUserDao(){
        map=new HashMap<String, String>();
        map.put("firstName", camelToSql("firstName"));
        map.put("lastName", camelToSql("lastName"));
        map.put("avatarPath", camelToSql("avatarPath"));
        
    }
    
    @Override
    public User getUserById(int id) throws SQLException, Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(id,"id" );
        return (User) super.getObject(User.class, null, "users", mappa).get(0);
        
    }

    @Override
    public User getUserByEmail(String email) throws Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(email,"email" );
        return (User) super.getObject(User.class, null, "users", mappa).get(0);
    }

    @Override
    public LinkedList<User> getAllUser() throws Exception {
        LinkedList<User> res=new LinkedList<User> ();
        for(Object o:super.getObject(User.class, null, "users",null))
            res.add((User) o);
        return res;
    }

    
    @Override
    public int insertDao(Object o) throws SQLException{
        return super.insertDao(o, map, "users");
    }


    @Override
    public int deleteDao(Object o) throws SQLException{
        return super.deletDao(o, map, "users");
    }

    @Override
    public int updateDao(IdOwner o) throws SQLException{
        return super.updateDao(o, map, "users");
    }

    @Override
    public Object getById(int id) {
        try {
            return getUserById(id);
        } catch (Exception ex) {
            Logger.getLogger(JdbcUserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
  
}
