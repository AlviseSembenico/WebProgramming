/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.result;

import Dao.ProductDao;
import Dao.UserDao;
import Dao.entities.Product;
import java.io.IOException;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import system.Log;

/**
 *
 * @author Utente
 */
public class ResultServlet extends HttpServlet {

    private ProductDao productDao;
    private UserDao userDao;

    public void init() throws ServletException {
        productDao = (ProductDao) super.getServletContext().getAttribute("productDao");
        if (productDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = null;
        String city = null;
        String region = null;
        String radius = null;
        String minPrice = null;
        String maxPrice = null;
        String minRew = null;
        String maxRew = null;
        String star = null;
        String order = null;
        String begin = null;
        String cate = null;
        Integer end;
        Integer len;
        String category;

        name = request.getParameter("name");
        city = request.getParameter("City");
        region = request.getParameter("Region");
        radius = request.getParameter("radius");
        minPrice = request.getParameter("minPrice");
        maxPrice = request.getParameter("maxPrice");
        minRew = request.getParameter("minRew");
        maxRew = request.getParameter("maxRew");
        star = request.getParameter("star");
        order = request.getParameter("order");
        begin = request.getParameter("begin");
        cate = request.getParameter("category");
        if (begin == null) {
            begin = "0";
        }
        LinkedList<Product> product;
        LinkedList<Product> similProd;
        RequestDispatcher RequetsDispatcherObj = null;
        
        
        try {

                product = productDao.doQwery(name, city, region, radius, minPrice, maxPrice, minRew, maxRew, star, order, cate);
            if (product.get(0) != null) {
                request.setAttribute("product", product);
                len = product.size() - 1;
                category = product.get(0).getCategory();
                request.setAttribute("len", len);
                similProd = productDao.getSimilar(category, name);
                request.setAttribute("simil", similProd);
                Integer[] stelle = new Integer[product.size()];
                for (int i = 0; i < product.size(); i++) {
                    stelle[i] = productDao.getStarByProduct(product.get(i)).intValue();
                }
                if (Integer.parseInt(begin) + 8 < len) {
                    end = Integer.parseInt(begin) + 8;
                } else {
                    end = len;
                }
                request.setAttribute("stelle", stelle);
                request.setAttribute("name", name);
                request.setAttribute("begin", begin);
                request.setAttribute("City", city);
                request.setAttribute("Region", region);
                request.setAttribute("minPrice", minPrice);
                request.setAttribute("maxPrice", maxPrice);
                request.setAttribute("minRew", minRew);
                request.setAttribute("maxRew", maxRew);
                request.setAttribute("order", order);
                request.setAttribute("end", end);
                request.setAttribute("category", category);
                request.setAttribute("star",star);
                
            }
                       
            RequetsDispatcherObj = request.getRequestDispatcher("/result.jsp");
        } catch (Exception ex) {
            Log.write(ex);
            RequetsDispatcherObj = request.getRequestDispatcher("/error.jsp");
        }

        RequetsDispatcherObj.forward(request, response);
    }
}
