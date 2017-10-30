package Business;

import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import entity.Cliente;
import net.sf.jasperreports.engine.JRException;
import DAO.DaoCliente;
import Utils.Conexion;
import Utils.GenerarReporte;;

public class ActionCliente {
	private DaoCliente oDaoCliente = new DaoCliente();
	
	public List listarClientes(){
		Conexion oConexion = new Conexion();
		List lista = new ArrayList();
        try {
			lista = oDaoCliente.listarClientes(oConexion);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
        
        return lista;
	}
	
	public Map guardarActualizarCliente(Cliente oCliente) throws ClassNotFoundException, SQLException{
		Map datos = new HashMap();
		
		Conexion oConexion = new Conexion();
		oDaoCliente.guardarActualizarCliente(oConexion, oCliente, datos);
		datos.put("oCliente", oCliente);
		
		return datos;
	}
	
	public Map consultarCliente(int idCliente,Map parametros) throws ClassNotFoundException, SQLException{
		Map datos = new HashMap();
		
		Conexion oConexion = new Conexion();
		Cliente oCliente = oDaoCliente.consularCliente(idCliente, parametros, oConexion);
		datos.put("oCliente", oCliente);
		
		return datos;
	}
	
	  public void exportar(String sRutaDirectorioJasper, Map parametros, OutputStream out, boolean maps, String formato){
	    	try {
	            
	    		Conexion oConexion = new Conexion();
	    		List listaClientes = oDaoCliente.listarClientes(oConexion);
	    		
				GenerarReporte.exportar(sRutaDirectorioJasper+"/reporteClientes.jasper", listaClientes, parametros, out, maps, formato);
			} catch (JRException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
}
