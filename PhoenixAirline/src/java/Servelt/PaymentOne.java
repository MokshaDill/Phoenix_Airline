
package Servelt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "PaymentOne", urlPatterns = {"/PaymentOne"})
public class PaymentOne extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentOne</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentOne at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            
            
            String fname=request.getParameter("firstname");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String zip=request.getParameter("zip");
            String cname=request.getParameter("cardname");
            String cnum=request.getParameter("cardnumber");
            String expm=request.getParameter("expmonth");
            String expy=request.getParameter("expyear");
            String cvv=request.getParameter("cvv");
            String check=request.getParameter("check");
            
            
            payment A = new payment();
        
            A.pay(fname, email, address, city, state, zip, cname, cnum, expm, expy, cvv, check);
        } catch (SQLException ex) {
            Logger.getLogger(PaymentOne.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
