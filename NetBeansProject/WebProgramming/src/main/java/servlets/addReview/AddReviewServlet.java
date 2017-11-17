/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.addReview;

import Dao.entities.*;
import Dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlets.product.ProductServlet;

/**
 *
 * @author alvise
 */
public class AddReviewServlet extends HttpServlet {

    PurchaseDao purchaseDao;
    PictureDao pictureDao;
    ReviewDao reviewDao;
    

    @Override
    public void init() throws ServletException {
        purchaseDao = (PurchaseDao) super.getServletContext().getAttribute("purchaseDao");
        if (purchaseDao == null) {
            throw new ServletException("Impossible to get dao factory for purchase storage system");
        }
        pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");
        if (purchaseDao == null) {
            throw new ServletException("Impossible to get dao factory for picture storage system");
        }
        reviewDao = (ReviewDao) super.getServletContext().getAttribute("reviewDao");
        if (reviewDao == null) {
            throw new ServletException("Impossible to get dao factory for review storage system");
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
            HttpSession session = request.getSession(false);
            User user = (User) session.getAttribute("user");
            Purchase purchase = purchaseDao.getPurchaseByIdAndUser(Integer.valueOf(request.getParameter("id")), user);
            request.setAttribute("purchase", purchase);
            request.setAttribute("picture", pictureDao.getPictureByProduct(purchase.getProduct()));
            RequestDispatcher reqDes = request.getRequestDispatcher("/loggedUsers/addReview.jsp");
            reqDes.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
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
           /* HttpSession session = request.getSession(false);
            User user = (User) session.getAttribute("user");
            String tag = request.getParameter("tag");
            String description = request.getParameter("description");
            int id = Integer.valueOf(request.getParameter("id"));
            Purchase purchase = purchaseDao.getPurchaseByIdAndUser(Integer.valueOf(request.getParameter("id")), user);
            Anomalies anomaly=new Anomalies();
            anomaly.setDescription(description);
            anomaly.setTag(tag);
            anomaly.setPurchase(purchase);
            anomaly.setStatus("not verified");
            anomaliesDao.insertDao(anomaly);
            RequestDispatcher reqDes = request.getRequestDispatcher("/cart.jsp");
            reqDes.forward(request, response);*/
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

}
