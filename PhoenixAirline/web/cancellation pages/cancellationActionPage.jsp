<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String reff = request.getParameter("reff");
String reason = request.getParameter("reason");

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into cancellation values(?,?,?,?)");
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, reff);
    ps.setString(4, reason);
    
    ps.executeUpdate();
    response.sendRedirect("cancel.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("cancel.jsp?msg=invalid");
}

%>