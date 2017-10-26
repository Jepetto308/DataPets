/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import entity.empleados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author WILMAR
 */
public class DaoEmpleado {
    public void guardar(Connection connexion, empleados empleado) throws SQLException{
      try{
         PreparedStatement consulta = null;
        
         //Sentencia de insert into que viene desde la base de datos
         String sqlInsertEmpleado = 
	"INSERT IGNORE"+
	"  INTO empleados("+
	"                CODIGO_TIPO_DOCUMENTO_EMPLEADO,"+
	"                NUMERO_IDENTIFICACION_EMPLEADO,"+
	"                PRIMER_NOMBRE_EMPLEADO,"+
	"                OTROS_NOMBRES_EMPLEADO,"+
	"                PRIMER_APELLIDO_EMPLEADO,"+
	"                SEGUNDO_APELLIDO_EMPLEADO,"+
	"                TELEFONO_EMPLEADO,"+
	"                CELULAR_EMPLEADO,"+
	"                DIRECCION_EMPLEADO,"+
	"                EMAIL_EMPLEADO,"+
	"                FAX_EMPLEADO)"+
        "                CODIGO_PAIS)"+
        "                CODIGO_MUNICIPIO)"+
        "                USUARIO_CREACION)"+
        "                FECHA_CREACION)"+
	"VALUES ("+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
	"        ?,"+
        "        ?,"+
        "        ?,"+
        "        ?,"+
        "        ?,"+
	"        ?)";
         
         //Parametros (get) que se obtienen de la clase cliente.java
         if(empleado.getIdEmpleado() == 0){
            consulta = connexion.prepareStatement(sqlInsertEmpleado.toString());
            consulta.setString(1, empleado.getTipoDocumentoEmpleado());
            consulta.setString(2, empleado.getNumeroDocumentoEmpleado());
            consulta.setString(3, empleado.getPrimerNombreEmpleado());
            
            consulta.setString(4, empleado.getOtrosNombresEmpleado());
            consulta.setString(5, empleado.getPrimerApellidoEmpleado());
            consulta.setString(6, empleado.getSegundoApellidoEmpleado());
            consulta.setString(8, empleado.getTelefonoEmpleado());
            consulta.setString(9, empleado.getCelularEmpleado());
            consulta.setString(10, empleado.getDireccionEmpleado());
            consulta.setString(11, empleado.getCorreoEmpleado());
            consulta.setString(12, empleado.getFaxEmpleado());
            consulta.setString(13, empleado.getCodigoPais());
            consulta.setString(14, empleado.getCodigoMunicipio());
            consulta.setString(15, empleado.getUsuarioCreacion());
            consulta.setTimestamp(16, empleado.getFechaCreacion());
            
            
         }else{
             
         }
         consulta.executeUpdate();
      }catch(SQLException ex){
         throw new SQLException(ex);
      }
   }
    
}
