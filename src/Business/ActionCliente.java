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

import javax.servlet.http.HttpServletRequest;

import entity.Cliente;
import entity.Filtro;
import net.sf.jasperreports.engine.JRException;
import DAO.DaoCliente;
import Utils.Conexion;
import Utils.GenerarReporte;;

public class ActionCliente {
	private DaoCliente oDaoCliente = new DaoCliente();
	
	public List listarClientes(HttpServletRequest request){
		Conexion oConexion = new Conexion();
		List lista = new ArrayList();
		List<Filtro> filtros = new ArrayList();
		
		Filtro oFiltro = new Filtro();
		String numeroDocumento = request.getParameter("f_numeroDocumento");
		String nombreCliente = request.getParameter("f_nombreCliente");
		
		if(numeroDocumento != null && !numeroDocumento.equals("")) {
			oFiltro.setCampo("A.NUMERO_IDENTIFICACION_CLIENTE");
			oFiltro.setOperador("LIKE");
			oFiltro.setValor(numeroDocumento+'%');
			filtros.add(oFiltro);
			
			request.setAttribute("f_numeroDocumento", numeroDocumento);
		}
		
		if(nombreCliente != null && !nombreCliente.equals("")) {
			oFiltro = new Filtro();
			oFiltro.setCampo("CONCAT(A.PRIMER_NOMBRE_CLIENTE,' ',A.OTROS_NOMBRES_CLIENTE)");
			oFiltro.setOperador("LIKE");
			oFiltro.setValor(nombreCliente+'%');
			filtros.add(oFiltro);
			
			request.setAttribute("f_nombreCliente", nombreCliente);
		}
		
        try {
			lista = oDaoCliente.listarClientes(oConexion, filtros);
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
	    	
		  	HttpServletRequest request = (HttpServletRequest) parametros.get("request");
		  	List<Filtro> filtros = new ArrayList();
			
			Filtro oFiltro = new Filtro();
			String numeroDocumento = request.getParameter("f_numeroDocumento");
			String nombreCliente = request.getParameter("f_nombreCliente");
			
			if(numeroDocumento != null && !numeroDocumento.equals("")) {
				oFiltro.setCampo("A.NUMERO_IDENTIFICACION_CLIENTE");
				oFiltro.setOperador("LIKE");
				oFiltro.setValor(numeroDocumento+'%');
				filtros.add(oFiltro);
				
				request.setAttribute("f_numeroDocumento", numeroDocumento);
			}
			
			if(nombreCliente != null && !nombreCliente.equals("")) {
				oFiltro = new Filtro();
				oFiltro.setCampo("CONCAT(A.PRIMER_NOMBRE_CLIENTE,' ',A.OTROS_NOMBRES_CLIENTE)");
				oFiltro.setOperador("LIKE");
				oFiltro.setValor(nombreCliente+'%');
				filtros.add(oFiltro);
				
				request.setAttribute("f_nombreCliente", nombreCliente);
			}
		  	
		  	try {
	            
	    		Conexion oConexion = new Conexion();
	    		List listaClientes = oDaoCliente.listarClientes(oConexion,filtros);
	    		
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
