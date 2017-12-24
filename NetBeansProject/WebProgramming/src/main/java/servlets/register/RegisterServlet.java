package servlets.register;

import Dao.UserDao;
import Dao.entities.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import system.Log;

public class RegisterServlet extends HttpServlet {

    private UserDao userDao;

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
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") == null) {
            RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/register.jsp");
            reqDes.forward(request, response);
        } else {
            response.sendRedirect("/index");
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
        String lastName = request.getParameter("lastname");
        String firstName = request.getParameter("firstname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            if(userDao.getUserByEmail(email)!=null)
                throw new Exception("email already used!");
            
            if (lastName.length() > 0) {
                String contextPath = getServletContext().getContextPath();
                if (!contextPath.endsWith("/")) {
                    contextPath += "/";
                }

                User user = new User(firstName, lastName, email, password);
                int res = userDao.insertDao(user);
                if (res == 0) {
                    reqDes = request.getRequestDispatcher("/publicUsers/register.jsp?result=false");
                } else {
                    request.getSession().setAttribute("user", user);
                    reqDes = request.getRequestDispatcher("/publicUsers/register.jsp?result=true");
                }
            }
        } catch (Exception e) {
            reqDes = request.getRequestDispatcher("/publicUsers/register.jsp?result=false");
        } finally {
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
    }
}
