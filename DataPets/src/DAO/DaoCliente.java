/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;

import entity.clientes;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.imageio.ImageIO;

import Utils.Conexion;

/**
 *
 * @author USER
 */
public class DaoCliente {
	
    public void guardarActualizarCliente(Conexion oConexion, clientes cliente, Map datos) throws SQLException, ClassNotFoundException{
      try{
         PreparedStatement consulta = null;
        
         //Sentencia de insert into que viene desde la base de datos
         String sqlInsertCliente = "INSERT IGNORE INTO clientes(CODIGO_TIPO_DOCUMENTO_CLIENTE, NUMERO_IDENTIFICACION_CLIENTE, PRIMER_NOMBRE_CLIENTE, OTROS_NOMBRES_CLIENTE, PRIMER_APELLIDO_CLIENTE, SEGUNDO_APELLIDO_CLIENTE, RAZON_SOCIAL_CLIENTE, TELEFONO_CLIENTE, CELULAR_CLIENTE, DIRECCION_CLIENTE, EMAIL_CLIENTE, FAX_CLIENTE, CODIGO_PAIS, CODIGO_MUNICIPIO, FECHA_CREACION) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";         
         String sqlUpdateCliente = "UPDATE clientes SET CODIGO_TIPO_DOCUMENTO_CLIENTE = ?, NUMERO_IDENTIFICACION_CLIENTE = ?, PRIMER_NOMBRE_CLIENTE = ?, OTROS_NOMBRES_CLIENTE = ?, PRIMER_APELLIDO_CLIENTE = ?, SEGUNDO_APELLIDO_CLIENTE = ?, RAZON_SOCIAL_CLIENTE = ?, TELEFONO_CLIENTE = ?, CELULAR_CLIENTE = ?, DIRECCION_CLIENTE = ?, EMAIL_CLIENTE = ?, FAX_CLIENTE = ?, CODIGO_PAIS = ?, CODIGO_MUNICIPIO = ?, FECHA_CREACION = ? WHERE ID_CLIENTE = ?";
         
         //Parametros (get) que se obtienen de la clase cliente.java
         if(cliente.getIdCliente() == 0){
            consulta = oConexion.openConexion().prepareStatement(sqlInsertCliente.toString());
            consulta.setString(1, cliente.getTipoDocumentoCliente());
            consulta.setInt(2, cliente.getNumeroDocumentoCliente());
            consulta.setString(3, cliente.getPrimerNombreCliente());
            
            consulta.setString(4, cliente.getOtrosNombresCliente());
            consulta.setString(5, cliente.getPrimerApellidoCliente());
            consulta.setString(6, cliente.getSegundoApellidoCliente());
            consulta.setString(7, cliente.getRazonSocialCliente());
            consulta.setString(8, cliente.getTelefonoCliente());
            consulta.setString(9, cliente.getCelularCliente());
            consulta.setString(10, cliente.getDireccionCliente());
            consulta.setString(11, cliente.getEmailCliente());
            consulta.setString(12, cliente.getFaxCliente());
            consulta.setString(13, cliente.getCodigoPais());
            consulta.setString(14, cliente.getCodigoMunicipio());
            consulta.setTimestamp(15, cliente.getFechaCreacion());
            
            datos.put("okMensaje", "Registro ingresado exitosamente");
         }else{
        	 consulta = oConexion.openConexion().prepareStatement(sqlUpdateCliente.toString());
             consulta.setString(1, cliente.getTipoDocumentoCliente());
             consulta.setInt(2, cliente.getNumeroDocumentoCliente());
             consulta.setString(3, cliente.getPrimerNombreCliente());
             
             consulta.setString(4, cliente.getOtrosNombresCliente());
             consulta.setString(5, cliente.getPrimerApellidoCliente());
             consulta.setString(6, cliente.getSegundoApellidoCliente());
             consulta.setString(7, cliente.getRazonSocialCliente());
             consulta.setString(8, cliente.getTelefonoCliente());
             consulta.setString(9, cliente.getCelularCliente());
             consulta.setString(10, cliente.getDireccionCliente());
             consulta.setString(11, cliente.getEmailCliente());
             consulta.setString(12, cliente.getFaxCliente());
             consulta.setString(13, cliente.getCodigoPais());
             consulta.setString(14, cliente.getCodigoMunicipio());
             consulta.setTimestamp(15, cliente.getFechaCreacion());
             
             consulta.setInt(16, cliente.getIdCliente());
             datos.put("okMensaje", "Registro actualizado exitosamente");
         }
         consulta.executeUpdate();
      }catch(SQLException ex){
         throw new SQLException(ex);
      }finally{
    	  oConexion.closeConexion();
      }
   }
    
    public List listarClientes(Conexion oConexion) throws SQLException, ClassNotFoundException{
        List<clientes> listaClientes = new ArrayList();
        try {
            Statement s = oConexion.openConexion().createStatement(); 
            ResultSet rs = s.executeQuery ("SELECT CODIGO_TIPO_DOCUMENTO_CLIENTE, NUMERO_IDENTIFICACION_CLIENTE, PRIMER_NOMBRE_CLIENTE, OTROS_NOMBRES_CLIENTE, PRIMER_APELLIDO_CLIENTE, SEGUNDO_APELLIDO_CLIENTE, RAZON_SOCIAL_CLIENTE, TELEFONO_CLIENTE, CELULAR_CLIENTE, DIRECCION_CLIENTE, EMAIL_CLIENTE, FAX_CLIENTE, CODIGO_PAIS, CODIGO_MUNICIPIO, FECHA_CREACION,ID_CLIENTE FROM clientes");
            while (rs.next()) 
            {       
                 clientes oCliente = new clientes();
                 oCliente.setTipoDocumentoCliente(rs.getString(1));
                 oCliente.setNumeroDocumentoCliente(rs.getInt(2));
                 oCliente.setPrimerNombreCliente(rs.getString(3));
                 oCliente.setOtrosNombresCliente(rs.getString(4));
                 oCliente.setPrimerApellidoCliente(rs.getString(5));
                 oCliente.setSegundoApellidoCliente(rs.getString(6));
                 oCliente.setRazonSocialCliente(rs.getString(7));
                 oCliente.setTelefonoCliente(rs.getString(8));
                 oCliente.setCelularCliente(rs.getString(9));
                 oCliente.setIdCliente(rs.getInt(16));
                 
                listaClientes.add(oCliente);                
            }
        } catch (SQLException ex) {
            System.err.println("Error listando los Clientes");
            System.out.println(ex.getMessage());
        }finally{
			oConexion.closeConexion();
        }
        return listaClientes;
    }
    
    
    public clientes consularCliente(int idCliente,Map parametros, Conexion oConexion) throws SQLException, ClassNotFoundException{
        clientes oCliente = new clientes();
        try {
            Statement s = oConexion.openConexion().createStatement(); 
            ResultSet rs = s.executeQuery ("SELECT CODIGO_TIPO_DOCUMENTO_CLIENTE, NUMERO_IDENTIFICACION_CLIENTE, PRIMER_NOMBRE_CLIENTE, OTROS_NOMBRES_CLIENTE, PRIMER_APELLIDO_CLIENTE, SEGUNDO_APELLIDO_CLIENTE, RAZON_SOCIAL_CLIENTE, TELEFONO_CLIENTE, CELULAR_CLIENTE, DIRECCION_CLIENTE, EMAIL_CLIENTE, FAX_CLIENTE, CODIGO_PAIS, CODIGO_MUNICIPIO, FECHA_CREACION,ID_CLIENTE FROM clientes WHERE ID_CLIENTE ="+idCliente);
            while (rs.next()) 
            {       
                 oCliente.setTipoDocumentoCliente(rs.getString(1));
                 oCliente.setNumeroDocumentoCliente(rs.getInt(2));
                 oCliente.setPrimerNombreCliente(rs.getString(3));
                 oCliente.setOtrosNombresCliente(rs.getString(4));
                 oCliente.setPrimerApellidoCliente(rs.getString(5));
                 oCliente.setSegundoApellidoCliente(rs.getString(6));
                 oCliente.setRazonSocialCliente(rs.getString(7));
                 oCliente.setTelefonoCliente(rs.getString(8));
                 oCliente.setCelularCliente(rs.getString(9));
                 oCliente.setIdCliente(rs.getInt(16));
                 
            }
        } catch (SQLException ex) {
            System.err.println("Error listando los Clientes");
            System.out.println(ex.getMessage());
        }finally{
			oConexion.closeConexion();
        }
        return oCliente;
    }
    
}
