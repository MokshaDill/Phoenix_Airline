<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String mobile = request.getParameter("mobnum");
String tarea = request.getParameter("textarea");


try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?,?,?)");
    
    
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, email);
    ps.setString(4, mobile);
    ps.setString(5, tarea);
    
    ps.executeUpdate();
    response.sendRedirect("experience.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("experience.jsp?msg=invalid");
}

%>