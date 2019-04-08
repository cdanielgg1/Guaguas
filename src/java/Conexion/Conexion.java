/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
         import java.sql.DriverManager;
         import java.sql.SQLException;
         import javax.swing.JOptionPane;
         public class Conexion {
         private Connection cn = null;
         String driver = "com.mysql.jdbc.Driver";
         String url = "jdbc:mysql://localhost:3306/guaguas";
         String usuario = "root";
         String clave = "";
         public Connection con() {
              try {
                Class.forName(driver);
                    cn = DriverManager.getConnection(url, usuario, clave);
                } catch (SQLException ex) {
               JOptionPane.showMessageDialog(null, ex);
               } catch (Exception e) {
                 JOptionPane.showMessageDialog(null, e);
               }
              return cn;
              }
          }
