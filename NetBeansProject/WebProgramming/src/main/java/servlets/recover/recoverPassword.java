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
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zappi
 */
@WebServlet(name = "recover", urlPatterns = {"/recover"})
public class recoverPassword extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        userDao = (UserDao) super.getServletContext().getAttribute("userDao");
        if (userDao == null) {
            throw new ServletException("Impossible to get dao factory for user storage system");
        }
    }
    private final String SMTP_HOST = "smtp.gmail.com";
    private final String SMTP_USER = "noreply.webproject@gmail.com";
    private final String SMTP_PASSWD = "Sistemi2";

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") == null) {
            RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/recover.jsp");
            reqDes.forward(request, response);
        } else {
            response.sendRedirect("index");
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
            user = userDao.getUserByEmail((String) request.getParameter("email"));
        } catch (Exception ex) {
            user = null;
        }
        if (user != null) {

            try {
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", SMTP_HOST);
                props.put("mail.smtp.port", "587");

                Session session = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(SMTP_USER, SMTP_PASSWD);
                    }
                });

                String link = request.getRequestURL().toString();
                link = link.substring(0, 36);
                link = link + "/reset?id=" + user.getId();
                StringBuilder bodyText = new StringBuilder();
                bodyText.append("<div>")
                        .append("  Dear User<br/><br/>")
                        .append("  We got your reset password request, Find below link to reset password <br/>")
                        .append("  Please click <a href=\"" + link + "\">here</a> or open below link in browser<br/>")
                        .append("  <a href=\"" + link + "\">" + link + "</a>")
                        .append("  <br/><br/>")
                        .append("  Thanks,<br/>")
                        .append("  SodhanaLibrary Team")
                        .append("</div>");
                Message message = new MimeMessage(session);

                message.setFrom(new InternetAddress(SMTP_USER));

                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(user.getEmail()));
                message.setSubject("Reset Password");
                message.setContent(bodyText.toString(), "text/html; charset=utf-8");
                Transport.send(message);
                RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/recover.jsp?result=true");
                reqDes.forward(request, response);
            } catch (AddressException ex) {
                RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/recover.jsp?result=false");
                reqDes.forward(request, response);
            } catch (MessagingException ex) {
                RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/recover.jsp?result=false");
                reqDes.forward(request, response);
            }
        } else {
            RequestDispatcher reqDes = request.getRequestDispatcher("/publicUsers/recover.jsp?result=false");
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
