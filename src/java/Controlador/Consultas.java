/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author WilangelSalsa
 */
public class Consultas extends Conexion {

    public boolean autenticacion(String usuario, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "select * from usuarios where usuario = ? and pass = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }

            } catch (Exception e) {
                System.err.println("Error " + e);
            }
        }
        return false;
    }

    public boolean registrar(String nombre, String apellido, String usuario, String contraseña) {
        PreparedStatement pst = null;
        try {
            String Consulta = "insert into usuarios (apellido, usuario, nombre, pass) values (?,?,?,?)";
            pst = getConnection().prepareStatement(Consulta);

            pst.setString(1, apellido);
            pst.setString(2, usuario);
            pst.setString(3, nombre);
            pst.setString(4, contraseña);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("Error " + e);
            }

        }
        return false;
    }

}
