/*
  * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import DAO.DaoPais;
import DAO.DaoUsuario;
import entity.Usuario;
import entity.Pais;
import Utils.Conexion;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Jeferson Palacios Torres | Correo: jefferson308@hotmail.com
 */
public class ActionPais {
    
    private DaoPais daoPais = new DaoPais();
    private Pais oPais = new Pais();
    Conexion oConexion = new Conexion();
    
    public Pais consultarUsuario(String codigoPais, Map parametros) throws ClassNotFoundException, SQLException{
        oPais = daoPais.consultarPais(codigoPais, parametros, oConexion);
        return oPais;
    }
    
    public List listarPais() throws ClassNotFoundException, SQLException{
        List listaPais = daoPais.listarPais(oConexion);
        return listaPais;
    }
    
}
