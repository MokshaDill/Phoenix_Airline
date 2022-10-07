<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

    String fname= request.getParameter("firstame");
    String email= request.getParameter("email");
    String address= request.getParameter("address");
    String city= request.getParameter("city");
    String state= request.getParameter("state");
    String zip= request.getParameter("zip");
    String cardname= request.getParameter("cardname");
    String cardnumber= request.getParameter("cardnumber");
    String expmonth= request.getParameter("expmonth");
    String expyear= request.getParameter("expyear");
    String cvv= request.getParameter("cvv");
    String check= request.getParameter("check");
    
   


    try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, fname);
    ps.setString(2, email);
    ps.setString(3, address);
    ps.setString(4, city);
    ps.setString(5, state);
    ps.setString(1, zip);
    ps.setString(2, cardname);
    ps.setString(3, cardnumber);
    ps.setString(4, expmonth);
    ps.setString(5, expyear);
    ps.setString(4, cvv);
    ps.setString(5, check);

    
    ps.executeUpdate();
    response.sendRedirect("animation.html");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("paymentForm.jsp?msg=invalid");
}
%>