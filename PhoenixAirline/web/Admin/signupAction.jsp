<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");
String securityQustion = request.getParameter("securityQustion");
String answer = request.getParameter("answer");
String address="";
String city="";
String state="";
String country="";

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, mobile);
    ps.setString(4, password);
    ps.setString(5, securityQustion);
    ps.setString(6, answer);
    ps.setString(7, address);
    ps.setString(8, city);
    ps.setString(9, state);
    ps.setString(10, country);
    
    ps.executeUpdate();
    response.sendRedirect("signup.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("signup.jsp?msg=invalid");
}

%>