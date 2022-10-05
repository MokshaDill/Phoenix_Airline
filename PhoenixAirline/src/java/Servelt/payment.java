/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelt;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author moksh
 */
class payment {
    
    Statement st;
    
    void pay(String fname, String email, String address, String city, String state, String zip, String cname, String cnum, String expm, String expy, String cvv, String check) throws SQLException {
        
        connectToDb();
        
        String sql ="INSERT INTO payment(fname, email, address, city, state, zip, cname, cnum, expm, expy, cvv, check1) VALUES('"+fname+"','"+ email +"','"+address+"','"+city+"','"+state+"','"+zip+"','"+cname+"','"+cnum+"','"+expm+"','"+expy+"','"+cvv+"','"+check+"')";
        
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Book.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    

    private void connectToDb() throws SQLException {
        String url="jdbc:mysql://localhost:3306/phoenixairline";
         
        try { 
            
            Class.forName("com.mysql.jdbc.Driver");            
            Connection con = DriverManager.getConnection(url,"root","");
            
            st = con.createStatement();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Book.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
