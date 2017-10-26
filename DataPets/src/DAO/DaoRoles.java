///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//package DAO;
//
//import entity.roles;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
///**
// *
// * @author WILMAR
// */
//public class DaoRoles {
//    public void guardar(Connection connexion, roles citas) throws SQLException{
////      try{
//         PreparedStatement consulta = null;
//        
//         //Sentencia de insert into que viene desde la base de datos
//         String sqlInsertRoles = 
//	"INSERT IGNORE"+
//	"  INTO roles("+
//	"                CODIGO_ROL"+
//	"                NOMBRE ROL,"+
//	"                DESCRIPCION,"+
//
//	
//
//	"VALUES ("+
//	"        ?,"+
//	"        ?,"+
//	"        ?,";

	
         
//         //Parametros (get) que se obtienen de la clase cliente.java
//         if(Roles.getCodRol() == 0){
//            consulta = connexion.prepareStatement(sqlInsertRoles.toString());
//            consulta.setString(1, citas.getNumeroCita());
//            consulta.setTimestamp(2, citas.getFechaCita());
//            consulta.setString(3, citas.getServicioCita());
//            consulta.setString(4, citas.getEstadoCita());
//            consulta.setString(15, citas.getUsuarioCreacion());
//            consulta.setTimestamp(16, citas.getFechaCreacion());
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
