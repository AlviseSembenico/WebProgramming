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
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Utente
 */
public class ProductServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public class productServlet extends HttpServlet {

        private ProductDao productDao;
        private UserDao userDao;
        private CartDao cartDao;

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
                Cookie mioCookie = null;
                Cookie[] c = request.getCookies();
                int i = 0;
                while(i<c.length){
                        if(c[i].getName().equals("userId"))
                            break;
                        i = i+1;
                }
                mioCookie=c[i];
                User user = userDao.getUserById(Integer.parseInt(mioCookie.getValue()));
                int pid = Integer.parseInt(request.getParameter("pid"));
                Product product = productDao.getProductById(pid);
                if (product != null) {
                    Cart cart = cartDao.getByUser(user);
                    cart.AddProducts(product);
                }
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
    }}
    
