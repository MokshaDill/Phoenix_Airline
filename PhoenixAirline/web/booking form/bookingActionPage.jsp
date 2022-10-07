<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String from1 = request.getParameter("from");
String to1 = request.getParameter("to");
String depdate = request.getParameter("depdate");
String deptime = request.getParameter("deptime");
String airline = request.getParameter("airline");
String classtype = request.getParameter("class");
String adult = request.getParameter("adult");
String children = request.getParameter("children");
String baby = request.getParameter("kids");
String radio = request.getParameter("radio");
String rdate = request.getParameter("rdate");
String rtime = request.getParameter("rtime");
String message = request.getParameter("message");
String fullname = request.getParameter("fname");
String tel = request.getParameter("pnum");
String email = request.getParameter("email");


try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into ticket values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, email);
    ps.setString(2, fullname);
    ps.setString(3, tel);
    ps.setString(4, from1);
    ps.setString(5, to1);
    ps.setString(6, depdate);
    ps.setString(7, deptime);
    ps.setString(8, airline);
    ps.setString(9, classtype);
    ps.setString(10, adult);
    ps.setString(11, children);
    ps.setString(12, baby);
    ps.setString(13, radio);
    ps.setString(14, rdate);
    ps.setString(15, rtime);
    ps.setString(16, message);
    
    ps.executeUpdate();
    response.sendRedirect("book.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("book.jsp?msg=invalid");
}

%>