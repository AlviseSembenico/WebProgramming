/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.login;

import Dao.*;
import Dao.entities.*;
import java.io.IOException;;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/login.jsp");
        reqDes.forward(request, response);
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
        User user = null;
        try {
            user = userDao.getUserByEmailPassword(email, password);
            if (user == null) {
                response.sendRedirect(response.encodeRedirectURL("login" + "?error=true"));
            } else {
                if (user.getConfirm().equals("SI")) {
                    request.getSession().setAttribute("user", user);
                    Cart sessCart = (Cart) request.getSession().getAttribute("cart");
                    if (sessCart == null) {
                        sessCart = new Cart();
                    }
                    Cart userCart = cartDao.getByUser(user);
                    if (userCart != null) {
                        sessCart.setUser(user);
                        for (Product p : sessCart.getProducts()) {
                            userCart.addProduct(p);
                        }
                        cartDao.updateDao(userCart);
                        request.getSession().setAttribute("cart", userCart);
                    } else {
                        sessCart.setUser(user);
                        cartDao.insertDao(sessCart);
                    }
                } else {
                    response.sendError(401);
                }
                response.sendRedirect(response.encodeRedirectURL("index"));
            }
        } catch (Exception ex) {
            Log.write(ex);
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
