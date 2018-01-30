/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.modifyUser;

import Dao.UserDao;
import Dao.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import system.Log;

public class ModifyUserServlet extends HttpServlet {

    private UserDao userDao;
    private User user;

    @Override
    public void init() throws ServletException {
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher RequestDispatcherObj = null;
        RequestDispatcherObj = request.getRequestDispatcher("loggedUsers/userProfile.jsp");
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
        HttpSession session = request.getSession(false);
        String lastName = request.getParameter("lastname");
        String firstName = request.getParameter("firstname");
        String email = request.getParameter("email");
        user = (User) session.getAttribute("user");

        if (lastName != null && lastName != "") {
            String contextPath = getServletContext().getContextPath();
            if (!contextPath.endsWith("/")) {
                contextPath += "/";
            }
            try {
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);
                user.setPassword(null);
                int res = userDao.updateDao(user);
                if (res == 0) {
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "/userProfile?error=true"));
                } else {
                    response.sendRedirect("userProfile?result=true");
                }

            } catch (Exception ex) {
                Log.write(ex);
                response.sendRedirect("userProfile?result=false");
            }
        } else {
            String oldPw = request.getParameter("oldPw");
            String newPw = request.getParameter("newPw");
            String confirmNewPw = request.getParameter("confirmNewPw");
            try {
                if (userDao.password(oldPw).equals(user.getPassword())) {
                    if (newPw.equals(confirmNewPw)) {
                        user.setPassword(newPw);
                        int res = userDao.updateDao(user);
                        user.setPassword(userDao.password(newPw));
                        if (res == 0) {
                            response.sendRedirect("userProfile?result=false");
                        } else {
                            response.sendRedirect("userProfile?result=true");
                        }
                    }
                }
            } catch (Exception ex) {
                Log.write(ex);
                response.sendRedirect("userProfile?result=false");
            } finally{
                response.sendRedirect("userProfile?result=false");
            }
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
