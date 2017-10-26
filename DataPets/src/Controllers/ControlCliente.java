/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import Business.ActionCliente;
import DAO.DaoCliente;
import entity.clientes;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Utils.Conexion;

/**
 *
 * @author WILMAR
 */
@WebServlet(name = "ControlCliente", urlPatterns = {"/ControlCliente"})
public class ControlCliente extends HttpServlet {

	ActionCliente oActionCliente = new ActionCliente();
	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        accion = "".equals(accion) || accion == null? "L":accion;
        
        switch (accion) {
		case "L":
			listarClientes(request, response);
			break;
		case "G":
			guardarCliente(request, response);
			break;
		case "D":
			editarCliente(request, response);
			break;
		case "N":
			nuevoCliente(request, response);
			break;
		case "E":
			exportar(request, response);
			break;
		default:
			break;
		}
        
    }
    
    public void listarClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
    	
        List listaClientes = oActionCliente.listarClientes();
        
        request.setAttribute("listaClientes", listaClientes);
        request.getRequestDispatcher("/JSP/buscar_clientes.jsp").forward(request,response);
    }
    
    public void guardarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
    	//instancias de la la clase cliente,conexion,Daocliente,
       	clientes oCliente = new clientes();
        llenarCliente(request, oCliente);            
        
        Map proceso = oActionCliente.guardarActualizarCliente(oCliente);
        
        request.setAttribute("oCliente", proceso.get("oCliente"));
        request.setAttribute("okMessage", proceso.get("okMensaje"));
        request.getRequestDispatcher("/JSP/editar_clientes.jsp").forward(request,response);
    }
    
    public void editarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
    	//instancias de la la clase cliente,conexion,Daocliente,
    	int idCliente = Integer.parseInt(request.getParameter("hidCliente"));
    	Map parametros = new HashMap();
    	
        Map proceso = oActionCliente.consultarCliente(idCliente, parametros);
        request.setAttribute("oCliente", proceso.get("oCliente"));
        
        request.getRequestDispatcher("/JSP/editar_clientes.jsp").forward(request,response);
    }
    
    public void nuevoCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
    	//instancias de la la clase cliente,conexion,Daocliente,
    	Map parametros = new HashMap();
    	clientes oCliente = new clientes();
        request.setAttribute("oCliente", oCliente);
        
        request.getRequestDispatcher("/JSP/editar_clientes.jsp").forward(request,response);
    }
    
    public void llenarCliente(HttpServletRequest request, clientes oClientes) {
        String stmp = "";
        
        //parametros que vienen desde la vista
        stmp = request.getParameter("hidCliente");
        oClientes.setIdCliente(stmp == "" ?0:Integer.parseInt(stmp));
        
        stmp = request.getParameter("tipoDocumento");
        oClientes.setTipoDocumentoCliente(stmp);
        stmp = request.getParameter("numeroDocumento");
        oClientes.setNumeroDocumentoCliente(Integer.parseInt(stmp));
        stmp = request.getParameter("primerNombre");
        oClientes.setPrimerNombreCliente(stmp);
        stmp = request.getParameter("otrosNombres");
        oClientes.setOtrosNombresCliente(stmp);
        stmp = request.getParameter("primerApellido");
        oClientes.setPrimerApellidoCliente(stmp);
        stmp = request.getParameter("segundoApellido");
        oClientes.setSegundoApellidoCliente(stmp);
        stmp = request.getParameter("razonSocial");
        oClientes.setRazonSocialCliente(stmp);
        stmp = request.getParameter("direccion");
        oClientes.setDireccionCliente(stmp);
        stmp = request.getParameter("telefono");
        oClientes.setTelefonoCliente(stmp);
        stmp = request.getParameter("celular");
        oClientes.setCelularCliente(stmp);
        stmp = request.getParameter("fax");
        oClientes.setFaxCliente(stmp);
        stmp = request.getParameter("email");
        oClientes.setEmailCliente(stmp);
        stmp = request.getParameter("codigoPais");
        oClientes.setCodigoPais(stmp);
        stmp = request.getParameter("codigoMunicipio");
        oClientes.setCodigoMunicipio(stmp);
    }
    
    
    public void exportar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String formato = request.getParameter("formato");
    	if("".equals(formato) || null == formato){
    		formato = "pdf";
    	} 
    	
    	if("pdf".equalsIgnoreCase(formato)){
    		response.setContentType("application/pdf");
    	}else{
    		response.setContentType("application/vnd.ms-excel");
    	}
    	response.setHeader("Pragma", "no-cache");
    	response.setHeader("Content-Disposition", "attachment; filename=\"" + "Clientes" + "."+formato+"\";");
    	OutputStream out = response.getOutputStream();
    	String rutaJasper = getServletContext().getRealPath("/Jasper");
    	Map parametros = new HashMap();
    	
    	oActionCliente.exportar(rutaJasper, parametros, out, false, formato);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControlCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControlCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControlCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ControlCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
