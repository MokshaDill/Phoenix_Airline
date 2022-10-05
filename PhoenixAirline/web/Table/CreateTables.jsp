<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try{
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    
    //String sql="create table flight(flight_id int PRIMARY KEY,flight_name varchar(30), mpilot_name varchar(50),seate int, t_depart varchar(20),t_return varchar(20), duration varchar(20), lowest_budget int, takeoff_time varchar(20), class varchar(20));";
    //String sql2="create table contact(name varchar(30), number int PRIMARY KEY, guests varchar(20), date varchar(20), destination varchar(20));";
    //String sql3="CREATE TABLE admin(name VARCHAR(100), email VARCHAR(100)PRIMARY KEY, mobile bigint, password VARCHAR(100), securityQustion VARCHAR(200), answer VARCHAR(200), address VARCHAR(200),city VARCHAR(200), state VARCHAR(200), country VARCHAR(200));";
      String sql4="CREATE TABLE payment(fname VARCHAR(100), email VARCHAR(100), address VARCHAR(100), city VARCHAR(100), state VARCHAR(100), zip VARCHAR(100), cname VARCHAR(100), cnum int PRIMARY KEY, expm VARCHAR(100), expy VARCHAR(100), cvv VARCHAR(100), check1 VARCHAR(100));";
    //String sql2="create table product(id int NOT NULL AUTO_INCREMENT PRIMARY KEY, id int,name varchar(30), category varchar(30),price int, active varchar(20));";
    
    //System.out.print(sql);
    //System.out.print(sql2);
    //System.out.print(sql3);
    System.out.print(sql4);
    
      //st.execute(sql);
//      st.execute(sql2);
        //st.execute(sql3);
        st.execute(sql4);
    
    System.out.print("Table created");
    con.close();
}catch(Exception e){
    System.out.print(e);
}
%>