/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao.jdbc.utilities;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import system.Log;

/**
 *
 * @author Alvise
 */
public class JdbcConnector {
    String user = "remote";
    String password = "development";
    String ip="35.195.215.0";
    String db="fantacalcio";
    String url = "jdbc:mysql://35.195.215.0/fantacalcio";
    String instanceConnectionName="expanded-run-176814:europe-west1:fantacalcio";
    
    static JdbcConnector connector=null;
    static Connection connection=null;

    JdbcConnector() {
    }
    
    public static Connection connect() throws SQLException{
        if(connection==null || connection.isClosed()){
            init();
            return connection;
        }
        return connection;   
    }
    
    private static boolean init() throws SQLException {
        if(connector==null)
            connector=new JdbcConnector();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Log.Write("Error: unable to load driver class!");
            return false;
        }
        //Connector.url=String.format("jdbc:mysql://google/%s?cloudSqlInstance=%s&"+ "socketFactory=com.google.cloud.sql.mysql.SocketFactory",connector.db,connector.instanceConnectionName);
        connector.url=String.format("jdbc:mysql://35.195.215.0/%s",connector.db);
        connection = DriverManager.getConnection(connector.url,connector.user,connector.password);
        return true;
    }
}
