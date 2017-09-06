/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.*;
import Dao.entities.User;
import Dao.jdbc.utilities.JdbcUtilities;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author Alvise
 */
public class JdbcUserDao extends JdbcUtilities implements UserDao{

    @Override
    public User getUserById(int id) throws SQLException, Exception {
        HashMap<Object,String> mappa=new HashMap<Object,String>();
        mappa.put(1,"id" );
        return (User) super.getObject(User.class, null, "users", mappa).get(0);
        
        /*if (!checkConnection()) {
            return null;
        }
        User user=new User();
        String query = "select * from users where id=?";
        PreparedStatement stmt=connection.prepareStatement(query);
        stmt.setInt(1, id);
        ResultSet rs=stmt.executeQuery();
        if (!rs.first()) {
            return null;
        }
        user.setId(rs.getInt("id"));
        user.setFirstName(rs.getString("first_name"));
        user.setLastName(rs.getString("last_name"));
        user.setEmail(rs.getString("email"));
        user.setAvatarPath(rs.getString("avatar_path"));
        return user;*/
    }
    
    @Override
    public int insertDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int updateDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int deleteDao(Object o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User getUserByEmail(String email) throws Exception {
        
        if (!checkConnection()) {
            return null;
        }
        User user=new User();
        String query = "select * from users where email=?";
        PreparedStatement stmt=connection.prepareStatement(query);
        stmt.setString(1, email);
        ResultSet rs=stmt.executeQuery();
        if (!rs.first()) {
            return null;
        }
        user.setId(rs.getInt("id"));
        user.setFirstName(rs.getString("first_name"));
        user.setLastName(rs.getString("last_name"));
        user.setEmail(rs.getString("email"));
        user.setAvatarPath(rs.getString("avatar_path"));
        return user;
    }

    
    
}
