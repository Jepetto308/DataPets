/*
  * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import DAO.DaoMunicipio;
import entity.Municipio;
import Utils.Conexion;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Jeferson Palacios Torres | Correo: jefferson308@hotmail.com
 */
public class ActionMunicipio {
    
    private DaoMunicipio daoMunicipio = new DaoMunicipio();
    private Municipio oMunicipio = new Municipio();
    Conexion oConexion = new Conexion();
    
    public Municipio consultarUsuario(String codigoMunicipio, Map parametros) throws ClassNotFoundException, SQLException{
        oMunicipio = daoMunicipio.consultarMunicipio(codigoMunicipio, parametros, oConexion);
        return oMunicipio;
    }
    
    public List listarMunicipio() throws ClassNotFoundException, SQLException{
        List listaMunicipio = daoMunicipio.listarMunicipio(oConexion);
        return listaMunicipio;
    }
    
}
