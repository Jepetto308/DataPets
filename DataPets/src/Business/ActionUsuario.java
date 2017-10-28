/*
  * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import DAO.DaoUsuario;
import entity.Usuario;
import Utils.Conexion;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Jeferson Palacios Torres | Correo: jefferson308@hotmail.com
 */
public class ActionUsuario {
    
    private DaoUsuario daoUsuario = new DaoUsuario();
    private Usuario oUsuario = new Usuario();
    Conexion oConexion = new Conexion();
    
    public boolean insertarUsuario(Usuario oUsuario) throws FileNotFoundException, ClassNotFoundException, SQLException{
        Connection conn = oConexion.openConexion();
        return daoUsuario.insertarUsuario(oUsuario, conn);
   }
    
    public Usuario consultarUsuario(String numeroIdentificacion) throws ClassNotFoundException, SQLException{
        Connection conn = oConexion.openConexion();
        oUsuario = daoUsuario.consultarUsuario(numeroIdentificacion, conn);
        
        return oUsuario;
    }
    
    public List listarUsuarios() throws ClassNotFoundException, SQLException{
        Connection conn = oConexion.openConexion();
        List listaUsuarios = daoUsuario.listarUsuarios(conn);
        
        return listaUsuarios;
    }
    
    public boolean existeUsuarioByNumeroIdentificacion(String numeroIdentificacion) throws ClassNotFoundException, SQLException{
        return daoUsuario.existeUsuarioConNumeroIdentificacion(numeroIdentificacion);
    }
    
    public boolean existeUsuarioByUsername(String username) throws ClassNotFoundException, SQLException{
        return daoUsuario.existeUsuarioConUsername(username);
    }
    
    public Usuario login(String username,String password) throws ClassNotFoundException, SQLException{
        Connection conn = oConexion.openConexion();
        oUsuario = daoUsuario.login(username, password, conn);
        return oUsuario;
    }   
    
}
