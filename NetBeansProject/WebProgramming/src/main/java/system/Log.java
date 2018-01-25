/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package system;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

/**
 *
 * @author Alvise
 */
public class Log {

    private static BufferedWriter Bw = null;

    private static final String SAVE_DIR = "log/";
    private static final String FILE_NAME = "log.txt";
    private static ServletContext context;

    private static boolean checkFolder() {
        String path = context.getRealPath(SAVE_DIR);
        if (path == null) {
            File theDir = new File(context.getRealPath("") + SAVE_DIR);
            if (!theDir.exists()) {
                return theDir.mkdir();
            } else {
                return false;
            }

        } else {
            return true;
        }
    }

    public static String getPath(String f){
        checkFolder();
        return context.getRealPath("") + SAVE_DIR+f;
    }
    
    public static void config(ServletContextEvent sce) {
        context = sce.getServletContext();
        
    }

    public static File getLog(){
        File f = new File(getPath(FILE_NAME));
        return f;
    }
    
    public static void write(String s) {
        if (Bw == null) {
            try {
                Bw = new BufferedWriter((new FileWriter(getPath(FILE_NAME), true)));
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                Date date = new Date();
                String d = dateFormat.format(date);
                Bw.newLine();
                Bw.append(d + ": ");
                Bw.append(s);
                Bw.append("----\n");
                Bw.close();
                Bw = null;
            } catch (IOException ex) {
                Logger.getLogger(Log.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public static void write(Exception e){
        write(e.toString());
    }

}
