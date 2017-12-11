/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.pay;

import Dao.UserDao;
import Dao.entities.User;
<<<<<<< HEAD:NetBeansProject/WebProgramming/src/main/java/servlets/pay/servlet/PayServlet.java
import Dao.CartDao;
import Dao.ProductDao;
import Dao.PurchaseDao;
import Dao.entities.Purchase;
import Dao.entities.Cart;
import Dao.entities.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
=======
;
import Dao.*;
import Dao.entities.*;
>>>>>>> Solo-borto:NetBeansProject/WebProgramming/src/main/java/servlets/pay/PayServlet.java
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import java.io.IOException;
<<<<<<< HEAD:NetBeansProject/WebProgramming/src/main/java/servlets/pay/servlet/PayServlet.java
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.LinkedList;
=======
import java.util.Date;
>>>>>>> Solo-borto:NetBeansProject/WebProgramming/src/main/java/servlets/pay/PayServlet.java
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
<<<<<<< HEAD:NetBeansProject/WebProgramming/src/main/java/servlets/pay/servlet/PayServlet.java
    private PurchaseDao purchaseDao;
    
=======
    private UserDao userDao;
    private PurchaseDao purchaseDao;
    private int id;

>>>>>>> Solo-borto:NetBeansProject/WebProgramming/src/main/java/servlets/pay/PayServlet.java
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
        purchaseDao = (PurchaseDao) super.getServletContext().getAttribute("purchaseDao");
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
        try {
<<<<<<< HEAD:NetBeansProject/WebProgramming/src/main/java/servlets/pay/servlet/PayServlet.java
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
            
=======
            User user = (User) request.getAttribute("user");
            Cart cart = (Cart) request.getAttribute("cart");
            RequestDispatcher reqDes = request.getRequestDispatcher("/loggedUsers/payment.jsp");
            reqDes.forward(request, response);
>>>>>>> Solo-borto:NetBeansProject/WebProgramming/src/main/java/servlets/pay/PayServlet.java
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
