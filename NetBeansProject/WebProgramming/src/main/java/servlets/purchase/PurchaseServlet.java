/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.purchase;

import Dao.PurchaseDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author skat96
 */
@WebServlet(name = "PurchaseServlet", urlPatterns = {"/Purchase"})
public class PurchaseServlet extends HttpServlet {

    private PurchaseDao purchaseDao;
    
    @Override
    public void init() throws ServletException {
        purchaseDao= (PurchaseDao) super.getServletContext().getAttribute("purchaseDao");
        if (purchaseDao == null) {
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
            throws ServletException, IOException 
    {
        RequestDispatcher RequestDispatcherObj = null;        
        RequestDispatcherObj = request.getRequestDispatcher("/loggedUsers/purchases.jsp");
        RequestDispatcherObj.forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
