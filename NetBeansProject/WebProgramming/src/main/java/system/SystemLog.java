/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package system;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Alvise
 */
@Path("system")
public class SystemLog {

    String pwd="pernico";
    
    @Context
    private UriInfo context;

    /**
     * Creates a new instance of SystemLog
     */
    public SystemLog() {
    }

    /**
     * Retrieves representation of an instance of Dao.SystemLog
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getJson(@QueryParam("pwd") String password) {
        if(password ==null || !password.equals(pwd))
            return "Password not correct";
        File f = Log.getLog();
        if (f == null) {
            return "ERROR 501, Log not exists yet!";
        }

        BufferedReader br = null;
        FileReader fr = null;
        String res=new String();
        try {
            //br = new BufferedReader(new FileReader(FILENAME));
            fr = new FileReader(f);
            br = new BufferedReader(fr);
            String sCurrentLine;
            
            while ((sCurrentLine = br.readLine()) != null) {
                res+=sCurrentLine;
                System.out.println(sCurrentLine);
            }
        } catch (IOException e) {

            e.printStackTrace();
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
                if (fr != null) {
                    fr.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return res;

    }

    /**
     * PUT method for updating or creating an instance of SystemLog
     *
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public void putJson(String content) {
    }
}
