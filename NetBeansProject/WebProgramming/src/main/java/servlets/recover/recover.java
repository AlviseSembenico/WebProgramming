/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.recover;

import Dao.UserDao;
import Dao.entities.User;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zappi
 */
@WebServlet(name = "recover", urlPatterns = {"/recover"})
public class recover extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
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
        User user = null;
        try {
            user = userDao.getUserByEmail(request.getParameter("email"));
        } catch (Exception ex) {
            Logger.getLogger(recover.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (!user.getEmail().isEmpty()) {
            // Recipient's email ID needs to be mentioned.
            String to = user.getEmail();

            // Sender's email ID needs to be mentioned
            String from = "noreplay@o2.ie";

            // Assuming you are sending email from localhost
            String host = "smtp.o2.ie";

            // Get system properties
            Properties properties = System.getProperties();

            // Setup mail server
            properties.setProperty("mail.smtp.host", host);

            // Get the default Session object.
            Session session = Session.getDefaultInstance(properties);

            try {
                // Create a default MimeMessage object.
                MimeMessage message = new MimeMessage(session);
                // Set From: header field of the header.
                message.setFrom(new InternetAddress(from));
                // Set To: header field of the header.
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                // Set Subject: header field
                message.setSubject("Recover password");
                // Now set the actual message
                message.setText("this is your password: " + user.getPassword());
                // Send message
                Transport.send(message);
                response.sendRedirect(response.encodeRedirectURL(getServletContext().getContextPath() + "login"));                
                        
            } catch (MessagingException mex) {
                mex.printStackTrace();
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
    }// </editor-fold>

}
