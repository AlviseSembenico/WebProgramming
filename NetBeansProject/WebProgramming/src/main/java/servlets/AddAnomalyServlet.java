/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Dao.*;
import Dao.entities.*;
import java.io.IOException;
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
 * @author Alvise
 */
public class AddAnomalyServlet extends HttpServlet {

    private PurchaseDao purchaseDao;
    private AnomaliesDao anomalyDao;

    @Override
    public void init() throws ServletException {

        purchaseDao = (PurchaseDao) super.getServletContext().getAttribute("purchaseDao");
        if (purchaseDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }

        anomalyDao = (AnomaliesDao) super.getServletContext().getAttribute("anomaliesDao");
        if (anomalyDao == null) {
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

        try {
            int id = Integer.valueOf(request.getParameter("id"));
            Purchase purchase = purchaseDao.getPurchaseById(id);
            request.setAttribute("purchase", purchase);
            request.setAttribute("product", purchase.getProduct());
            RequestDispatcher reqDes = request.getRequestDispatcher("/loggedUsers/addAnomaly.jsp");
            reqDes.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AddAnomalyServlet.class.getName()).log(Level.SEVERE, null, ex);
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

        try {
            HttpSession session = request.getSession(false);
            Anomalies anomaly = new Anomalies();
            Purchase purchase = purchaseDao.getPurchaseByIdAndUser(0, ((User) session.getAttribute("user")));
            anomaly.setDescription(request.getParameter("description"));
            anomaly.setTag(request.getParameter("tag"));
            anomaly.setPurchase(purchase);
            anomalyDao.insertDao(anomaly);
        } catch (Exception ex) {
            Logger.getLogger(AddAnomalyServlet.class.getName()).log(Level.SEVERE, null, ex);
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
