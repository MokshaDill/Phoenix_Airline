<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String grade = request.getParameter("grade");
String password = request.getParameter("password");
String address="";
String city="";
String state="";
String country="";

try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into staff values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, mobile);
    ps.setString(4, grade);
    ps.setString(5, password);
    ps.setString(6, address);
    ps.setString(7, city);
    ps.setString(8, state);
    ps.setString(9, country);
    
    ps.executeUpdate();
    response.sendRedirect("staffsignup.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("staffsignup.jsp?msg=invalid");
}

%>