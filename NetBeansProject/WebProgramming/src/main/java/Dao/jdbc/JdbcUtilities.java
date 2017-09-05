/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc;

import Dao.DefaultDao;
import Dao.entities.IdOwner;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;
import java.util.Set;
import org.reflections.Reflections;
import system.Log;
/**
 *
 * @author Alvise
 */
public class JdbcUtilities {
    protected Connection connection = null;

    protected boolean checkConnection() {
        if (connection == null) {
            try {
                connection = JdbcConnector.connect();
            } catch (SQLException ex) {
                Log.Write(ex.toString());
                return false;
            }
        }
        return connection != null;
    }
    
    public int insertDao(Object o, HashMap<String, String> map, String tableName) throws SQLException {
        if (!checkConnection()) {
            return 0;
        }
        if(map==null)
            map=new <String, String>HashMap();
        String query = new String("insert into " + tableName + " (");
        String values = "values(";
        Class<?> c = o.getClass();
        try {
            for (Method m : c.getDeclaredMethods()) {
                if (m.getName().contains("get")) {
                    String name = m.getName().substring(3);
                    char[] ca = name.toCharArray();
                    name = String.valueOf(ca[0]).toLowerCase() + name.substring(1);
                    if (m.getReturnType().equals(int.class)) {
                        
                        if ((int) m.invoke(o, null) >= 0) {
                            values += m.invoke(o, null) + ",";
                            if (map.containsKey(name)) {
                                query += map.get(name) + ",";
                            } else {
                                query += name + ",";
                            }
                        }
                    }
                    else if (m.getReturnType().equals(double.class) ) {
                        if ((double) m.invoke(o, null) >= 0) {
                            values += m.invoke(o, null) + ",";
                            if (map.containsKey(name)) {
                                query += map.get(name) + ",";
                            } else {
                                query += name + ",";
                            }
                        }
                    }
                    else if (m.getReturnType().equals(String.class)) {
                        if ((Object) m.invoke(o, null) != null) {
                            values += "'" + m.invoke(o, null) + "',";
                            if (map.containsKey(name)) {
                                query += map.get(name) + ",";
                            } else {
                                query += name + ",";
                            }
                        }
                    } 
                    else{
                        Object obj = m.invoke(o, null);
                        if (obj != null) {
                            
                            if (obj instanceof IdOwner) {
                                IdOwner id = (IdOwner) obj;
                                values += "'" + id.getId() + "',";
                                if (map.containsKey(name)) {
                                    query += map.get(name) + ",";
                                } else {
                                    query += name + ",";
                                }
                            } else {
                                Class<?> entityClass=obj.getClass();
                                Reflections reflections = new Reflections("xoft.fantacalcio.resources.database.dao.jdbc");
                                Set<Class<?>> allClasses = reflections.getSubTypesOf(Object.class);
                                for(Class<?> jdbcClass:allClasses){
                                    if(jdbcClass.getName().contains(entityClass.getName())){
                                        DefaultDao dD= (DefaultDao) jdbcClass.newInstance();
                                        dD.insertDao(obj);
                                    }
                                        
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            return 0;
        }
        query = query.substring(0, query.length() - 1);
        query+=") ";
        values = values.substring(0, values.length() - 1);
        values+=") ;";
        query +=values;
        PreparedStatement stmt=connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
        stmt.executeUpdate();
        ResultSet rs=stmt.getGeneratedKeys();
        rs.next();
        return rs.getInt(1);
    }
    
    public int updateDao(Object o, HashMap<String, String> map, String tableName) throws SQLException {
        if (!checkConnection()) {
            return 0;
        }
        if(map==null)
            map=new <String, String>HashMap();
        String query = new String("update " + tableName +" set ");
        Class<?> c = o.getClass();
        int id=0;
        try {
            for (Method m : c.getDeclaredMethods()) {
                if (m.getName().contains("get")) {
                    String name = m.getName().substring(3);
                    char[] ca = name.toCharArray();
                    name = String.valueOf(ca[0]).toLowerCase() + name.substring(1);
                    if(name.equals("id"))
                        id=(int) m.invoke(o, null);
                    else if (m.getReturnType().equals(int.class)) {
                        if ((int) m.invoke(o, null) >= 0) {
                            if (map.containsKey(name)) {
                                query += map.get(name) ;
                            } else {
                                query += name ;
                            }
                            query+=" = "+m.invoke(o, null) + ",";
                        }
                    }
                    else if ( m.getReturnType().equals(double.class)) {
                        if ((double) m.invoke(o, null) >= 0) {
                            if (map.containsKey(name)) {
                                query += map.get(name) ;
                            } else {
                                query += name ;
                            }
                            query+=" = "+m.invoke(o, null) + ",";
                        }
                    }
                    else if (m.getReturnType().equals(String.class) || m.getReturnType().equals(Date.class)) {
                        if ((Object) m.invoke(o, null) != null) {
                            if (map.containsKey(name)) {
                                query += map.get(name);
                            } else {
                                query += name ;
                            }
                            query+=" = '"+m.invoke(o, null) + "',";
                        }
                    }
                    else{
                        Object obj = m.invoke(o, null);
                        if (obj != null) {
                            if (obj instanceof IdOwner) {
                                IdOwner idOwner = (IdOwner) obj;
                                if (map.containsKey(name)) {
                                    query += map.get(name);
                                } else {
                                    query += name ;
                                }
                                query+="="+idOwner.getId()+",";
                            } else {
                                Class<?> entityClass=obj.getClass();
                                Reflections reflections = new Reflections("xoft.fantacalcio.resources.database.dao.jdbc");
                                Set<Class<?>> allClasses = reflections.getSubTypesOf(Object.class);
                                for(Class<?> jdbcClass:allClasses){
                                    if(jdbcClass.getName().contains(entityClass.getName())){
                                        DefaultDao dD= (DefaultDao) jdbcClass.newInstance();
                                        dD.updateDao(obj);
                                    }
                                        
                                }
                            }
                        }
                    }
                    

                }
            }
        } catch (Exception ex) {
            return 0;
        }
        query = query.substring(0, query.length() - 1);
        
        if(query.length()<20)
            return 2;
        if(id>0)
            query+=" where id ="+id;
        PreparedStatement stmt=connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);

        return stmt.executeUpdate();
    }
    
}
