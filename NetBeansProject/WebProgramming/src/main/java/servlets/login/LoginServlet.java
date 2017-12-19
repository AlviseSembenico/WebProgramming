/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.login;

import Dao.*;
import Dao.entities.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import system.Log;

/**
 *
 * @author Alvise
 */
public class LoginServlet extends HttpServlet {

    private UserDao userDao;
    private CartDao cartDao;

    @Override
    public void init() throws ServletException {
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        cartDao = (CartDao) super.getServletContext().getAttribute("cartDao");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String contextPath = getServletContext().getContextPath();
        if (!contextPath.endsWith("/")) {
            contextPath += "/";
        }
        try {
            User user = userDao.getUserByEmailPassword(email, password);
            if (user == null) {
                response.sendRedirect(response.encodeRedirectURL(contextPath + "login" + "?error=true"));
            } else {
                if (user.getConferma().equals("SI")) {
                    request.getSession().setAttribute("user", user);
                    Cart cart = (Cart) request.getSession().getAttribute("cart");
                    if (cart != null) {
                        cart.setUser(user);
                        request.getSession().setAttribute("cart", cart);
                    }
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "index"));
                }
                else
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "login" + "?error=true"));
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
    }
}
