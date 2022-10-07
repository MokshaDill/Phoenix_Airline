<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String flight_id = request.getParameter("flight_id");
String flight_name = request.getParameter("flight_name");
String mpilot_name = request.getParameter("mpilot_name");
String seate = request.getParameter("seate");
String t_depart = request.getParameter("t_depart");
String t_return = request.getParameter("t_return");
String duration = request.getParameter("duration");
String lowest_budget = request.getParameter("lowest_budget");
String takeoff_time = request.getParameter("takeoff_time");
String class1 = request.getParameter("class");


try{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into flight values(?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1, flight_id);
    ps.setString(2, flight_name);
    ps.setString(3, mpilot_name);
    ps.setString(4, seate);
    ps.setString(5, t_depart);
    ps.setString(6, t_return);
    ps.setString(7, duration);
    ps.setString(8, lowest_budget);
    ps.setString(9, takeoff_time);
    ps.setString(10, class1);
    
    ps.executeUpdate();
    response.sendRedirect("AddFlightPage.jsp?msg=valid");
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("AddFlightPage.jsp?msg=invalid");
}

%>