<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("psw");

session.setAttribute("email", email);

int z=0;
    try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from customer where email='"+email+"' and password='"+password+"'");
        while(rs.next()){
            
            z=1;
            session.setAttribute("email", email);
            response.sendRedirect("login1.html");  // page 
            
            
        }
        
        
       if(z==0){
            response.sendRedirect("userlogin.jsp?msg=notexist");
        }  
    
}catch(Exception e){
    System.out.print(e);
    response.sendRedirect("userlogin.jsp?msg=invalid");
}

%>