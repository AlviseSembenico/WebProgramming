/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.loadImage;

import Dao.PictureDao;
import Dao.ShopDao;
import Dao.UserDao;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author zappi
 */
public class loadImage extends HttpServlet {

    private static final String SAVE_DIR = "img" + File.separator;
    private int maxFileSize = 50 * 1024;
    private int maxMemSize = 4 * 1024;
    private ShopDao shopDao;
    private PictureDao pictureDao;

    @Override
    public void init() throws ServletException {
        shopDao = (ShopDao) super.getServletContext().getAttribute("shopDao");
        if (shopDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");
        if (pictureDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String appPath = request.getServletContext().getRealPath("");

        int id = Integer.parseInt(request.getParameter("id"));

        String savePath = appPath + SAVE_DIR;

        File fileSaveDir = new File(savePath);

        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        Part part = request.getPart("file");
        String fileName = extractFileName(part);

        fileName = new File(fileName).getName();
        part.write(savePath + fileName);

    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        throw new ServletException("GET method used with "
                + getClass().getName() + ": POST method required.");
    }
}
