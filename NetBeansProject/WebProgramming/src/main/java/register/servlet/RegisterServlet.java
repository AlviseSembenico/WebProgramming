package register.servlet;

import Dao.UserDao;
import Dao.entities.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import system.Log;

public class RegisterServlet extends HttpServlet {
    
    private UserDao userDao;
    
    @Override
    public void init() throws ServletException {
        userDao= (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
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
        String lastName = request.getParameter("lastname");
        String firstName = request.getParameter("firstname");
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (lastName != "") {
            String contextPath = getServletContext().getContextPath();
            if (!contextPath.endsWith("/")) {
                contextPath += "/";
            }
            try{
                User user= new User(firstName,lastName,email,password);
                int res = userDao.insertDao(user);
                if(res == 0)
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "/register"+"?error=true"));
                else{
                    request.getSession().setAttribute("authenticatedUser", user);
                    response.sendRedirect(response.encodeRedirectURL(contextPath + "index"));
                }
            }
            catch(Exception e){
                Log.write(e.toString());
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
