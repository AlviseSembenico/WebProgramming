/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc.utilities;

import Dao.entities.IdOwner;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Set;
import org.reflections.Reflections;
import system.Log;
/**
 *
 * @author Alvise
 */
public class JdbcUtilities {
    protected Connection connection = null;
    
     private String camelToSql(String s){
        String res=new String();

        for(char c:s.toCharArray())
            if(c>='A' && c<='Z')
                res+="_"+c;
            else
                res+=c;
        
        return res.toLowerCase();
    }

    private String sqlToCamel(String s) {
        String res = new String();
        boolean cond = false;
        for (char c : s.toCharArray()) {
            if (cond) {
                res += Character.toUpperCase(c);
                cond = false;
            } else if (c == '_') {
                cond = true;
            } else {
                res += c;
            }
        }
        return res;
    }
    
    /**
         * check if connection is operative and try to make a new one if it
         * isn't
         *
         * @return true if connection is locked, false otherwise
     */
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

    protected LinkedList<Object> getObject(Class<?> c, HashMap<String, String> map, String tableName, HashMap<Object, String> param) throws Exception {
        if (!checkConnection()) {
            return null;
        }
        String query = "select * from " + tableName;
        if (param != null) {
            query += " where ";
            for (Object par : param.keySet()) {
                query += param.get(par) + " = ? and ";
            }

        }
        query = query.substring(0, query.length() - 5);
        PreparedStatement stmt = connection.prepareStatement(query);
        if (param != null) {
            int point=1;
            for (Object par : param.keySet()) {
                if (par instanceof String) 
                    stmt.setString(point++, (String) par);
                if (par instanceof Double) 
                    stmt.setDouble(point++, (Double) par);
                if (par instanceof Integer) 
                    stmt.setInt(point++, (int) par);
                
            }
        }
        ResultSet rs = stmt.executeQuery();
        if (!rs.first()) {
            return null;
        }
        LinkedList<Object> result = new LinkedList<Object>();
        if (map == null) {
            do {
                Object o = c.newInstance();
                for (Method m : c.getDeclaredMethods()) {
                    if (m.getName().contains("set")) {
                        String name = m.getName().substring(3);
                        char[] ca = name.toCharArray();
                        name = String.valueOf(ca[0]).toLowerCase() + name.substring(1);
                        if (m.getParameterTypes()[0].equals(String.class)) {
                            m.invoke(o, rs.getString(camelToSql(name)));
                        }
                        if (m.getParameterTypes()[0].equals(Double.class)) {
                            m.invoke(o, rs.getDouble(camelToSql(name)));
                        }
                        if (m.getParameterTypes()[0].equals(Integer.class)) {
                            m.invoke(o, rs.getInt(camelToSql(name)));
                        }
                    }
                }
                result.add(o);
            } while (rs.next());
        }
        return result;
    }
        
    
    /**
     * 
     * @param o is the object which must be inserted into table
     * @param map map class variable name to db column name, if a determined variable is not inserted into map its name will be used into db
     * @param tableName name of table where insert the new data
     * @return id value if it has id field
     * @throws SQLException 
     */
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
                                        JdbcUtilities dD= (JdbcUtilities) jdbcClass.newInstance();
                                        dD.insertDao(obj,map,tableName);
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
    
    /**
     * 
     * @param o is the object which must be updated into table
     * @param map map class variable name to db column name, if a determined variable is not inserted into map its name will be used into db
     * @param tableName name of table where update the new data
     * @return the number of changed rows
     * @throws SQLException 
     */
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
                                        JdbcUtilities dD= (JdbcUtilities) jdbcClass.newInstance();
                                        dD.updateDao(obj,map,tableName);
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
    
    
    public int deletDao(Object o, HashMap<String, String> map, String tableName) throws SQLException {
        if (!checkConnection()) {
            return 0;
        }
        if(map==null)
            map=new <String, String>HashMap();
        String query = new String("delete from " + tableName+" where");
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
                            query+=" = "+m.invoke(o, null) + "and";
                        }
                    }
                    else if ( m.getReturnType().equals(double.class)) {
                        if ((double) m.invoke(o, null) >= 0) {
                            if (map.containsKey(name)) {
                                query += map.get(name) ;
                            } else {
                                query += name ;
                            }
                            query+=" = "+m.invoke(o, null) + "and";
                        }
                    }
                    else if (m.getReturnType().equals(String.class) || m.getReturnType().equals(Date.class)) {
                        if ((Object) m.invoke(o, null) != null) {
                            if (map.containsKey(name)) {
                                query += map.get(name);
                            } else {
                                query += name ;
                            }
                            query+=" = '"+m.invoke(o, null) + "'and";
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
