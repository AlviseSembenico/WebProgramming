/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.reviewsResponse;

import Dao.ReviewDao;
import Dao.UserDao;
import Dao.entities.Review;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import system.Log;

/**
 *
 * @author zappi
 */
public class ReviewsReplyServlet extends HttpServlet {

    private UserDao userDao;
    private ReviewDao reviewDao;

    @Override
    public void init() throws ServletException {
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        reviewDao = (ReviewDao) super.getServletContext().getAttribute("reviewDao");
        if (reviewDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }
    static int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            id = Integer.parseInt(request.getParameter("id"));
            Review reviews = reviewDao.getReviewById(id);
            RequestDispatcher reqDes = null;
            request.setAttribute("reviews", reviews);

            reqDes = request.getRequestDispatcher("/loggedUsers/reviewReply.jsp");
            reqDes.forward(request, response);

        } catch (Exception ex) {
            Log.write(ex);
            Logger.getLogger(ReviewsReplyServlet.class.getName()).log(Level.SEVERE, null, ex);
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

        RequestDispatcher reqDes = null;
        try {
            String text = request.getParameter("reply");
            Review reviews = reviewDao.getReviewById(id);
            reviews.setReply(text);
            reviews.setStatus("read");
            reviewDao.updateDao(reviews);
            reqDes = request.getRequestDispatcher("/index.jsp?result=true");
            reqDes.forward(request, response);

        } catch (Exception ex) {
            Log.write(ex);
            reqDes = request.getRequestDispatcher("/index.jsp?result=false");
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
