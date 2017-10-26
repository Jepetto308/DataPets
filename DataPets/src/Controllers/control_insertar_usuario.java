/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author WILMAR
 */
@WebServlet(name = "control_insertar_usuario", urlPatterns = {"/control_insertar_usuario"})
public class control_insertar_usuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet control_insertar_usuario</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet control_insertar_usuario at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        } finally {
            
////            public void llenarUsuario(HttpServletRequest request, ) {
////        String stmp = "";
////        
////        //parametros que vienen desde la vista
////        stmp = request.getParameter("hidCliente");
////        oClientes.setIdCliente(stmp == null || stmp == "" ?0:Integer.parseInt(stmp));
////        
////        stmp = request.getParameter("tipoDocumento");
////        oClientes.setTipoDocumentoCliente(stmp);
////        stmp = request.getParameter("numeroDocumento");
////        oClientes.setNumeroDocumentoCliente(stmp);
////        stmp = request.getParameter("primerNombre");
////        oClientes.setPrimerNombreCliente(stmp);
////        stmp = request.getParameter("otrosNombres");
////        oClientes.setOtrosNombresCliente(stmp);
////        stmp = request.getParameter("primerApellido");
////        oClientes.setPrimerApellidoCliente(stmp);
////        stmp = request.getParameter("segundoApellido");
////        oClientes.setSegundoApellidoCliente(stmp);
////        stmp = request.getParameter("razonSocial");
////        oClientes.setRazonSocialCliente(stmp);
////        stmp = request.getParameter("direccion");
////        oClientes.setDireccionCliente(stmp);
////        stmp = request.getParameter("telefono");
////        oClientes.setTelefonoCliente(stmp);
////        stmp = request.getParameter("celular");
////        oClientes.setCelularCliente(stmp);
////        stmp = request.getParameter("fax");
////        oClientes.setFaxCliente(stmp);
////        stmp = request.getParameter("email");
////        oClientes.setEmailCliente(stmp);
////        stmp = request.getParameter("codigoPais");
////        oClientes.setCodigoPais(stmp);
////        stmp = request.getParameter("codigoMunicipio");
////        oClientes.setCodigoMunicipio(stmp);
////    }
            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
