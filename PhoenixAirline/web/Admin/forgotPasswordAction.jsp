<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String newpassword = request.getParameter("newpassword");
String securityQustion = request.getParameter("securityQustion");
String answer = request.getParameter("answer");

int check=0;

try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from admin where email='"+email+"' and mobile='"+mobile+"' and securityQustion='"+securityQustion+"' and answer='"+answer+"'  ");
        
        while(rs.next()){
            check=0;
            st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        if(check==0){
            response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
        
}catch(Exception e){
    System.out.print(e);
}





%>