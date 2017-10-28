/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Business.ActionUsuario;

/**
 *
 * @author WILMAR
 */
@WebServlet(name = "control_insertar_usuario", urlPatterns = {"/control_insertar_usuario"})
public class ControlUsuario extends HttpServlet {
	
	ActionUsuario oActionUsuario = new ActionUsuario();
	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
    	
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0); // Proxies.
        
        String accion = request.getParameter("accion");
        accion = "".equals(accion) || accion == null? "L":accion;
        
        switch (accion) {
        	case "L":
        		listarUsuarios(request, response);
        		break;
        	default:
        	
        		break;
        }
        
    }
    
    
    public void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
    	
        List listaUsuarios = oActionUsuario.listarUsuarios();
        
        request.setAttribute("listaUsuarios", listaUsuarios);
        request.getRequestDispatcher("/JSP/buscar_usuarios.jsp").forward(request,response);
    }
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
			processRequest(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
			processRequest(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

}
