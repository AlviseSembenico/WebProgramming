/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.result;

import Dao.ProductDao;
import Dao.UserDao;
import Dao.entities.Product;
import Dao.entities.User;
import java.io.IOException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Utente
 */
public class ResultServlet extends HttpServlet {

    private ProductDao productDao;
    private UserDao userDao;

    public void init() throws ServletException {
        productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
        if (productDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name=null;
        String latitude=null;
        String longitude=null;
        String radius=null;
        String minPrice=null;
        String maxPrice=null;
        String minRew=null;
        String maxRew=null;
        
        try{
        name = request.getParameter("name");
        latitude = request.getParameter("latitude");
        longitude = request.getParameter("latitude");
        radius = request.getParameter("radius");
        minPrice = request.getParameter("minPrice");
        maxPrice = request.getParameter("maxPrice");
        minRew = request.getParameter("minRew");
        maxRew = request.getParameter("maxRew");
        }catch (Exception ex) {
        if (latitude.equals(null)) {
            latitude = "0";
        }
        if (longitude.equals(null)) {
            longitude = "0";
        }
        if (radius.equals(null)) {
            radius = "180";
        }
        if (minPrice.equals(null)) {
            minPrice = "0";
        }
        if (maxPrice.equals(null)) {
            maxPrice = "1000000";
        }
        if (minRew.equals(null)) {
            minRew = "0";
        }
        if (maxRew.equals(null)) {
            maxRew = "5";
        }
        }
        try {
            LinkedList<Product> product = productDao.getProductByFilters(name, Double.parseDouble(latitude), Double.parseDouble(longitude), Double.parseDouble(radius), Double.parseDouble(minPrice), Double.parseDouble(maxPrice), Double.parseDouble(minRew), Double.parseDouble(maxRew));
            request.setAttribute("result", product);
        } catch (Exception ex) {
            Logger.getLogger(ResultServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RequestDispatcher RequetsDispatcherObj = request.getRequestDispatcher("/login");
        RequetsDispatcherObj.forward(request, response);
    }
}
