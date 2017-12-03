/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.pay;

import Dao.UserDao;
import Dao.entities.User;
;
import Dao.*;
import Dao.entities.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import system.Log;

/**
 *
 * @author skat96
 */
@WebServlet(name = "PayServlet", urlPatterns = {"/PayServlet"})
public class PayServlet extends HttpServlet {

    private CartDao cartDao;
    private UserDao userDao;
    private PurchaseDao purchaseDao;
    private int id;

    @Override
    public void init() throws ServletException {
        cartDao = (CartDao) super.getServletContext().getAttribute("cartDao");
        if (cartDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (cartDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        purchaseDao = (PurchaseDao) super.getServletContext().getAttribute("purchaseDao");
        if (purchaseDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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
            User user = (User) request.getAttribute("user");
            Cart cart = (Cart) request.getAttribute("cart");
            RequestDispatcher reqDes = request.getRequestDispatcher("/loggedUsers/payment.jsp");
            reqDes.forward(request, response);
        } catch (Exception e) {
            Log.write(e.toString());
        }

    }
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         RequestDispatcher reqDes = null;
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            Cart cart=(Cart) session.getAttribute("cart");
            if(cart==null || cart.getProducts().size()==0){
                 reqDes = request.getRequestDispatcher("/loggedUsers/payment.jsp?result=false");
                 throw new Exception();
            }
            
            if(cart!=null){
                for(Product p:cart.getProducts()){
                    Purchase purchase=new Purchase();
                    purchase.setDate(new Date());
                    purchase.setPrice(p.getPrice());
                    purchase.setProduct(p);
                    purchase.setUser(user);
                    purchase.setStatus(1);
                    purchaseDao.insertDao(purchase);
                }
            }
            cartDao.deleteDao(cart);
            session.setAttribute("cart", new Cart());
            
            reqDes = request.getRequestDispatcher("/loggedUsers/payment.jsp?result=true");
        } catch (Exception ex) {
            reqDes = request.getRequestDispatcher("/loggedUsers/payment.jsp?result=false");
        } finally {
            reqDes.forward(request, response);
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
