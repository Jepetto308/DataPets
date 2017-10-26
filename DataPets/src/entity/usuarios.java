/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

/**
 *
 * @author WILMAR
 */
public class usuarios {
    
   private int idUsuario;
    private String login;
    private String rol;
    private String password;
    private String tipoUsuario;
    private String estadoUsuario;
    private String numeroIdentificacionUsuario;
    private String nombrePersona;
    private String informacioAdicional;
    private java.sql.Timestamp fechaCreacion;

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getEstadoUsuario() {
        return estadoUsuario;
    }

    public void setEstadoUsuario(String estadoUsuario) {
        this.estadoUsuario = estadoUsuario;
    }

    public String getNumeroIdentificacionUsuario() {
        return numeroIdentificacionUsuario;
    }

    public void setNumeroIdentificacionUsuario(String numeroIdentificacionUsuario) {
        this.numeroIdentificacionUsuario = numeroIdentificacionUsuario;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setNombrePersona(String nombrePersona) {
        this.nombrePersona = nombrePersona;
    }

    public String getInformacioAdicional() {
        return informacioAdicional;
    }

    public void setInformacioAdicional(String informacioAdicional) {
        this.informacioAdicional = informacioAdicional;
    }

    public java.sql.Timestamp getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(java.sql.Timestamp fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
}
