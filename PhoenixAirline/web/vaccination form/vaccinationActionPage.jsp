<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

    String fname= request.getParameter("fname");
    String lname= request.getParameter("lname");
    String email= request.getParameter("email");
    String address= request.getParameter("address");
    String month= request.getParameter("month");
    String dayd= request.getParameter("day");
    String year= request.getParameter("year");
    String optionq= request.getParameter("option");
    String checkq= request.getParameter("check");
    


    try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into vaccination values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, email);
    ps.setString(4, address);
    ps.setString(5, month);
    ps.setString(6, dayd);
    ps.setString(7, year);
    ps.setString(8, optionq);
    ps.setString(9, checkq);

    
    ps.executeUpdate();
    response.sendRedirect("vaccination.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("vaccination.jsp?msg=invalid");
}
%>
