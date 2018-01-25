/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.addReview;

import Dao.entities.*;
import Dao.*;
import java.io.IOException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlets.product.ProductServlet;
import system.Log;

/**
 *
 * @author alvise
 */
public class AddReviewServlet extends HttpServlet {

    PurchaseDao purchaseDao;
    PictureDao pictureDao;
    ReviewDao reviewDao;
    ShopDao shopDao;
    ProductDao productDao;

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

        shopDao = (ShopDao) super.getServletContext().getAttribute("shopDao");
        if (shopDao == null) {
            throw new ServletException("Impossible to get dao factory for picture storage system");
        }
        productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
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
            if (purchase == null) {
                response.sendError(401);
            }
            request.setAttribute("purchase", purchase);
            request.setAttribute("picture", pictureDao.getPictureByProduct(purchase.getProduct()));
            RequestDispatcher reqDes = request.getRequestDispatcher("/loggedUsers/addReview.jsp");
            reqDes.forward(request, response);
        } catch (Exception ex) {
            Log.write(ex);
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
        RequestDispatcher reqDes = null;
        try {
            HttpSession session = request.getSession(false);
            User user = (User) session.getAttribute("user");
            int id = Integer.valueOf(request.getParameter("id"));
            Purchase purchase = purchaseDao.getPurchaseByIdAndUser(Integer.valueOf(request.getParameter("id")), user);
            if (purchase == null) {
                response.sendError(401);
            } else if (reviewDao.getRewiewByCreatorAndProduct(user, purchase.getProduct()).get(0) != null) {
                response.sendError(403);
            } else {
                int global = Integer.valueOf(request.getParameter("star"));
                int service = Integer.valueOf(request.getParameter("stars"));
                String description = request.getParameter("description");
                Review rw = new Review();
                rw.setQuality(global);
                rw.setService(service);
                rw.setDescription(description);
                rw.setCreationDate(new Date());
                rw.setGlobalValue(666);
                rw.setStatus("not read");
                rw.setCreator(user);
                rw.setProduct(purchase.getProduct());

                Shop shop = purchase.getProduct().getShop();
                int sum = shop.getGlobalValue() + global;
                shop.setGlobalValue(sum);

                Product product = purchase.getProduct();
                product.setNumberPeople(product.getNumberPeople() + 1);
                product.setStarValue(global);

                shopDao.updateDao(shop);
                productDao.updateDao(product);
                reviewDao.insertDao(rw);
                response.sendRedirect("myOrders?result=true");
            }
        } catch (Exception ex) {
            Log.write(ex);
            response.sendRedirect("myOrders?result=false");
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
