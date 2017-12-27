/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.resolveAnomaly;

import Dao.AnomaliesDao;
import Dao.UserDao;
import Dao.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zappi
 */
public class resolve extends HttpServlet {

    private AnomaliesDao anomaliesDao;
    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        anomaliesDao = (AnomaliesDao) super.getServletContext().getAttribute("anomaliesDao");
        if (anomaliesDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
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
        int id = Integer.parseInt(request.getParameter("id"));
        User user = null;
        try {
            user = userDao.getUserById(id);
        } catch (Exception ex) {
            Logger.getLogger(reject.class.getName()).log(Level.SEVERE, null, ex);
        }
        RequestDispatcher reqDes = null;
        request.setAttribute("u", user);
        request.setAttribute("mode", "refound");
        reqDes = request.getRequestDispatcher("/loggedUsers/email.jsp");
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

    }
}
