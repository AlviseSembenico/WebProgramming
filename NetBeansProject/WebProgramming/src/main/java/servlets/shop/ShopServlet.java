/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.shop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.entities.Shop;
import Dao.ShopDao;
import Dao.entities.Picture;
import Dao.PictureDao;
import Dao.ProductDao;
import Dao.entities.Product;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import system.Log;

/**
 *
 * @author zappi
 */
public class ShopServlet extends HttpServlet {

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
        try {
            ShopDao shopDao = (ShopDao) super.getServletContext().getAttribute("shopDao");
            Shop shop = shopDao.getShopById(id);
            PictureDao pictureDao = (PictureDao) super.getServletContext().getAttribute("pictureDao");
            LinkedList<Picture> pictures = pictureDao.getPictureByShop(shop);
            ProductDao productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
            LinkedList<Product> products = productDao.getProductByShop(shop);
            request.setAttribute("shop", shop);
            request.setAttribute("products", products);
            request.setAttribute("pictures", pictures);
            RequestDispatcher reqDes = request.getRequestDispatcher("/shop.jsp");
            reqDes.forward(request, response);

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
    }// </editor-fold>

}
