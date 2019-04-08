/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controlador;

  import  Conexion.Conexion;
             import  java.sql.PreparedStatement;
           import  java.sql.ResultSet;
           public class Conductor extends Conexion implements IConductor{
           PreparedStatement stmt = null;
         @Override
          public ResultSet  Listar() {
                ResultSet rs = null;
            try {
                String sql = "SELECT * FROM user";
                stmt = con().prepareStatement(sql);

              rs = stmt.executeQuery();
           
             } catch (Exception e) {
            }
              return rs;
           } }