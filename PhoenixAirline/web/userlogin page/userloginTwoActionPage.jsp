<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String password= request.getParameter("psw");
String mobile = request.getParameter("mobile");
String address="";
String city="";
String state="";
String country="";

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?)");
    ps.setString(1, uname);
    ps.setString(2, email);
    ps.setString(3, password);
    ps.setString(4, mobile);
    ps.setString(5, address);
    ps.setString(6, city);
    ps.setString(7, state);
    ps.setString(8, country);
    
    ps.executeUpdate();
    response.sendRedirect("userlogin.jsp?msg2=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("userlogin.jsp?msg2=invalid");
}

%>