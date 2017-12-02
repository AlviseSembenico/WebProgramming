/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.product;

import Dao.ProductDao;
import Dao.entities.Product;
import Dao.entities.Cart;
import Dao.entities.User;
import Dao.UserDao;
import Dao.CartDao;
import Dao.PictureDao;
import Dao.ReviewDao;
import Dao.ShopDao;
import Dao.entities.Picture;
import Dao.entities.Review;
import Dao.entities.Shop;
import java.io.IOException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Utente
 */
public class ProductServlet extends HttpServlet {

    private ProductDao productDao;
    private PictureDao pictureDao;
    private ReviewDao reviewDao;


    @Override
    public void init() throws ServletException {

    }

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
        RequestDispatcher reqDes = null;
        try {
            productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
            pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");
            reviewDao = (ReviewDao) super.getServletContext().getAttribute("reviewDao");
            
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = productDao.getProductById(id);
            LinkedList<Picture> pictures = pictureDao.getPictureByProduct(product);
            Shop shop = product.getShop();
            LinkedList<Review> review = reviewDao.getRewiewByProduct(product);
            Double star = productDao.getStarByProduct(product);
            request.setAttribute("star", star);
            request.setAttribute("product", product);
            request.setAttribute("pictures", pictures);
            request.setAttribute("shop", shop);
            request.setAttribute("reviews", review);
            reqDes = request.getRequestDispatcher("/product.jsp");

        } catch (Exception ex) {
            reqDes = request.getRequestDispatcher("/error.jsp");
        }
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
