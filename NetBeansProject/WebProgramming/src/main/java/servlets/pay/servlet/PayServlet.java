/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.pay.servlet;

import Dao.UserDao;
import Dao.entities.User;
import Dao.CartDao;
import Dao.ProductDao;
import Dao.PurchaseDao;
import Dao.entities.Purchase;
import Dao.entities.Cart;
import Dao.entities.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import system.Log;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.LinkedList;
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
    private PurchaseDao purchaseDao;
    
    @Override
    public void init() throws ServletException {
        cartDao = (CartDao) super.getServletContext().getAttribute("cartDao");
        if (cartDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        purchaseDao = (PurchaseDao)super.getServletContext().getAttribute("purchaseDao");
        if (purchaseDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher RequestDispatcherObj = null;        
        RequestDispatcherObj = request.getRequestDispatcher("payment.jsp");
        RequestDispatcherObj.forward(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String contextPath = getServletContext().getContextPath();
        if (!contextPath.endsWith("/")) {
            contextPath += "/";
        }

        try {
            HttpSession session = request.getSession(false);
            Cart cart = (Cart)session.getAttribute("cart");
            User user = (User)session.getAttribute("user");
            
            LinkedList<Product> prodotti = (LinkedList<Product>)cart.getProducts();
            
            int res;          
            java.util.Date dt = new java.util.Date();
            Date d = new Date(dt.getTime());
            dt = (java.util.Date)d;
            
            int counter = 0;
            int rt = 0;
            
            String ritiro;
            String interroga;
            
            for(Product p:prodotti)
            {    
                interroga = "ritiro" + Integer.toString(rt);
                ritiro = request.getParameter(interroga);
                if(p.getRetractable() > 0)
                {
                    if(ritiro != null)
                    {
                        if(ritiro.equals("on"))
                        {
                            rt = 3;
                            counter++;
                        }
                        else
                        {
                            rt = 0;
                        } 
                    }
                    else
                    {
                        rt = 0;
                    }
                }
                else
                    rt = 0;
                Purchase purc = new Purchase(p,user,rt, dt);
                res = purchaseDao.insertDao(purc);
                
            }
            
            cart.emptyCart();
            res = cartDao.updateDao(cart);
            
            if(res > 0)
                response.sendRedirect(response.encodeRedirectURL(contextPath + "payment"+"?error=true"));
            else{
                session.setAttribute("user", user);
                session.setAttribute("cart", cart);
                response.sendRedirect(response.encodeRedirectURL(contextPath + "Purchase"));
            }
            
        } catch (Exception e) {

            Log.write(e.toString());
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
