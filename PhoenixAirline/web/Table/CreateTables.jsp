<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try{
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    String sql="create table flight(flight_id int PRIMARY KEY,flight_name varchar(30), mpilot_name varchar(50),seate int, t_depart varchar(20),t_return varchar(20), duration varchar(20), lowest_budget int, takeoff_time varchar(20), class varchar(20));";
    
    //String sql2="create table product(id int,name varchar(30), category varchar(30),price int, active varchar(20));";
    
    System.out.print(sql);
    //System.out.print(sql2);
    
      st.execute(sql);
    //st.execute(sql2);
    
    System.out.print("Table created");
    con.close();
}catch(Exception e){
    System.out.print(e);
}
%>