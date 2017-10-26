/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package DAO;
//import entity.usuarios;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
///**
// *
// * @author WILMAR
// */
//public class DaoUsuarios {
//         public void guardar(Connection connexion, usuarios citas) throws SQLException{
//      try{
//         PreparedStatement consulta = null;
//        
//         //Sentencia de insert into que viene desde la base de datos
//         String sqlInsertUsuarios = 
//	"INSERT IGNORE"+
//	"  INTO empleados("+
//	"                ID_USUARIO,"+
//	"                LOGIN,"+
//	"                PASSWORD,"+
//	"                TIPO_EMPLEADO,"+
//	"                NUMERO_IDENTIFICACION,"+
//	"                NOMBRE_PERSONA,"+
//	"                INFORMACION_ADICIONAL,"+
//	"                ACTIVO,"+
//
//	"VALUES ("+
//	"        ?,"+
//	"        ?,"+
//	"        ?,"+
//	"        ?,"+
//	"        ?,"+
//	"        ?,"+
//	"        ?,"+
//	"        ?,";
//         
//         //Parametros (get) que se obtienen de la clase cliente.java
//         if(citas.getIdUsuario() == 0){
//            consulta = connexion.prepareStatement(sqlInsertUsuarios.toString());
//            consulta.setString(1, usuarios.getLogin());
//            consulta.setString(2, usuarios.getPassword());
//            consulta.setString(3, usuarios.getTipo_Empleado());
//            consulta.setString(4, usuarios.getEstadoCita());
//            consulta.setString(15, usuarios.getUsuarioCreacion());
//            consulta.setTimestamp(16, usuarios.getFechaCreacion());
//            consulta.setTimestamp(16, usuarios.getFechaCreacion());
//            
//            
//            
//         }else{
//             
//         }
//         consulta.executeUpdate();
//      }catch(SQLException ex){
//         throw new SQLException(ex);
//      }
//   }
//}
