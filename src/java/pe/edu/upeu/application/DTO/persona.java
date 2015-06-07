/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.application.DTO;

/**
 *
 * @author Jose
 */
public class persona {
    private  String nombre;
    private  String a;
    private  String v;
    private  String c;

    public persona(String nombre, String a, String v, String c) {
        this.nombre = nombre;
        this.a = a;
        this.v = v;
        this.c = c;
    }
    public persona() {
        this.nombre = "";
        this.a = "";
        this.v = "";
        this.c = "";
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getV() {
        return v;
    }

    public void setV(String v) {
        this.v = v;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }
    
}
