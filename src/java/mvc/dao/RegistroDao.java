/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.dao;

/**
 *
 * @author carlos
 */
import mvc.bean.RegistroBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegistroDao 
{
    public String authorizeRegister(RegistroBean registroBean) //create authorizeRegister()function
    {
        String firstname=registroBean.getFirstname();
        
        String username=registroBean.getUsername();  //get all value through registerBean object and store in temporary variable
        String password=registroBean.getPassword();
        
        String url="jdbc:mysql://localhost:3306/guaguas"; //database connection url string
        String uname="root"; //database username
        String pass=""; //database password
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); //load driver
            Connection con=DriverManager.getConnection(url,uname,pass); //create connection
            
            PreparedStatement pstmt=null; //create statement
            
            pstmt=con.prepareStatement("insert into user (firstname,username,password) values(?,?,?)"); //sql insert query
            pstmt.setString(1,firstname);
        
            pstmt.setString(2,username);
            pstmt.setString(3,password); 
            pstmt.executeUpdate(); //execute query
             
            pstmt.close(); //close statement
            
            con.close(); //close connection
           
            return "SUCCESS REGISTER"; //if valid return string "SUCCESS REGISTER" 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
            return "FAIL REGISTER"; //if invalid return string "FAIL REGISTER"
    }
}