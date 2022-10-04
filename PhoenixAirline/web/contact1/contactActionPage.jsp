<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

    String name= request.getParameter("Name");
    String number= request.getParameter("Number");
    String guests= request.getParameter("Guests");
    String date= request.getParameter("date");
    String destination= request.getParameter("Destination");
   


    try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?,?,?)");
    ps.setString(1, name);
    ps.setString(2, number);
    ps.setString(3, guests);
    ps.setString(4, date);
    ps.setString(5, destination);

    
    ps.executeUpdate();
    response.sendRedirect("contact.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("Contact.jsp?msg=invalid");
}
%>


