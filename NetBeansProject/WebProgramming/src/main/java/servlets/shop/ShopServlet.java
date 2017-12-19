/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.shop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.entities.Shop;
import Dao.ShopDao;
import Dao.entities.Picture;
import Dao.PictureDao;
import Dao.ReviewDao;
import Dao.entities.Review;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import system.Log;

/**
 *
 * @author zappi
 */
public class ShopServlet extends HttpServlet {

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher reqDes = null;
        try {
            ShopDao shopDao = (ShopDao) super.getServletContext().getAttribute("shopDao");
            ReviewDao reviewDao = (ReviewDao) super.getServletContext().getAttribute("reviewDao");
            PictureDao pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");

            Shop shop = shopDao.getShopById(id);
            LinkedList<Review> reviews = reviewDao.getRecentReviewForShop(shop);
            Picture picture = pictureDao.getPictureShop(shop);
            request.setAttribute("reviews", reviews);
            request.setAttribute("shop", shop);
            if (picture != null) {
                request.setAttribute("picture", picture.getPath());
            } else {
                request.setAttribute("picture", "http://via.placeholder.com/350x150");
            }
            reqDes = request.getRequestDispatcher("/shop.jsp");
            
        } catch (Exception e) {
            Log.write(e.toString());
        }
        
            reqDes = request.getRequestDispatcher("/shop.jsp");
            reqDes.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
