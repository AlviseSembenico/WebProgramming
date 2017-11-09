/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.pay.servlet;

import Dao.UserDao;
import Dao.entities.User;
import Dao.CartDao;
import Dao.entities.Cart;
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
    private int id;
    
    @Override
    public void init() throws ServletException {
        cartDao= (CartDao) super.getServletContext().getAttribute("cartDao");
        if (cartDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        } 
        userDao= (UserDao) super.getServletContext().getAttribute("userDao");
        if (cartDao == null) {
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
               
            String contextPath = getServletContext().getContextPath();
            if (!contextPath.endsWith("/")) {
                contextPath += "/";
            }
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            User user;
            Cart cart;
            int res;    
            
            try
            { 
                user = userDao.getUserById(id);
                cart = cartDao.getByUser(user);
                
                
                res = 0;   
                
                response.sendRedirect("http://localhost:8080/WebProgramming/index");
                if(res == 0)
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "/payment"+"?error=true"));
                else{
                    
                    request.getSession().setAttribute("authenticatedUser", user);
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "index"));
                }
                
                
            }
            catch(Exception e){
                
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
