/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.cart;

import Dao.CartDao;
import Dao.PictureDao;
import Dao.ProductDao;
import Dao.entities.Cart;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlets.product.ProductServlet;

/**
 *
 * @author zappi
 */
public class CartServlet extends HttpServlet {

    private ProductDao productDao;
    private CartDao cartDao;
    private PictureDao pictureDao;

    @Override
    public void init() throws ServletException {
        productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
        if (productDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        cartDao = (CartDao) super.getServletContext().getAttribute("cartDao");
        if (cartDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");
        if (pictureDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }

    }

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
        try {
            HttpSession session = request.getSession(false);
           // User user;
            Cart cart;
            //if (session != null) {
               // user = (User) session.getAttribute("user");
            //}
            cart = (Cart) session.getAttribute("cart");
            //request.setAttribute("cart", cart);
            request.setAttribute("pictureDao", pictureDao);
            request.setAttribute("productDao", productDao);
            request.setAttribute("cart", cart);
            RequestDispatcher reqDes = request.getRequestDispatcher("/cart.jsp");
            reqDes.forward(request, response);

        } catch (Exception ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
