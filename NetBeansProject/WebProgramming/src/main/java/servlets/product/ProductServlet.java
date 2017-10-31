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
import Dao.ShopDao;
import Dao.entities.Picture;
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
    private UserDao userDao;
    private CartDao cartDao;
    private PictureDao pictureDao;

    @Override
    public void init() throws ServletException {
        productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
        if (productDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
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
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = productDao.getProductById(id);
            LinkedList<Picture> pictures = pictureDao.getPictureByProduct(product);
            request.setAttribute("product", product);
            request.setAttribute("pictures", pictures);
            RequestDispatcher reqDes = request.getRequestDispatcher("/product.jsp");
            reqDes.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int pid = Integer.parseInt(request.getParameter("pid"));
            HttpSession session = request.getSession(false);
            Product product = productDao.getProductById(pid);
            if (product != null) {
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null) {
                    cart = new Cart((User) request.getSession(false).getAttribute("user"));
                }
                cart.AddProducts(product);
                session.setAttribute("cart", cart);
            }
            response.sendRedirect(response.encodeRedirectURL("cart"));
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
