<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String grade = request.getParameter("grade");
String newpassword = request.getParameter("newpassword");


int check=0;

try{
        Connection con= ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select * from staff where email='"+email+"' and mobile='"+mobile+"' and grade='"+grade+"' and password='"+newpassword+"'  ");
        
        while(rs.next()){
            check=0;
            st.executeUpdate("update staff set password='"+newpassword+"' where email='"+email+"'");
            response.sendRedirect("staffforgotPassword.jsp?msg=done");
        }
        if(check==0){
            response.sendRedirect("staffforgotPassword.jsp?msg=invalid");
        }
        
}catch(Exception e){
    System.out.print(e);
}





%>