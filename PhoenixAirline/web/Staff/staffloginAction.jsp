<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String grade = request.getParameter("grade");
String password = request.getParameter("password");


    int z=0;
    try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from staff where email='"+email+"' and grade='"+grade+"' and password='"+password+"'");
        while(rs.next()){
            
            z=1;
            session.setAttribute("email", email);
            response.sendRedirect("staffsignup.jsp");
            
            
        }
        
        
       if(z==0){
            response.sendRedirect("stafflogin.jsp?msg=notexist");
        }  
        
    }catch(Exception e){
        System.out.print(e);
        response.sendRedirect("stafflogin.jsp?msg=invalid");
    }

%>