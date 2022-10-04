 
package Servelt;

import java.sql.*;


public class ConnectionProvider {
     public static Connection getCon(){
         
         try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixairline","root","");
             return con;
         }catch(Exception e){
             System.out.print(e);
             return null;
         }
         
     }
    
}
