/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Alumno;
import Mapeo.Estudiante;
import Mapeo.Trabajador;
import Modelo.AlumnoDAO;
import Modelo.EstudianteDAO;
import Modelo.TrabajadorDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author luis
 */
@Controller
public class ICSesion {
   
    @Autowired
    private EstudianteDAO ed;
    
    @Autowired
    private AlumnoDAO ad;
    
    @Autowired
    private TrabajadorDAO td;
    
    @RequestMapping(value = "/")
    public String indexRedirect(){
        return "redirect:/index";
    }
    
    @RequestMapping(value = "/index")
    public String index(){
        return "index";
    }
    
    /**
     * Método para desplegar la vista de opciones
     */
    @RequestMapping(value = "/guardar")
    public String opciones(){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        Estudiante e = new Estudiante();
        e.setNombre("luis");
        e.setApp("soto");
        e.setApm("martinez");
        e.setContrasenia(passwordEncoder.encode("1234"));
        e.setRol("ROLE_ESTUDIANTE");
        ed.guardar(e);
        Estudiante e2 = new Estudiante();
        e2.setNombre("juan");
        e2.setApp("solo");
        e2.setApm("solo");
        e2.setContrasenia(passwordEncoder.encode("4321"));
        e2.setRol("ROLE_ESTUDIANTE");
        ed.guardar(e2);
        Alumno a = new Alumno();
        a.setCarrera("c.Computacion");
        a.setCuenta("311023976");
        a.setEstudiante(e);
        ad.guardar(a);
        Trabajador t = new Trabajador();
        t.setRfc("ASDAS343SDE");
        t.setTrabajo("limpiapipas");
        t.setEstudiante(e2);
        td.guardar(t);
        return "index";
    }
    
    
    @RequestMapping(value = "/informacionIdioma")
    public String  informacionIdioma(){
        return "informacionIdioma";
    }
    
    @RequestMapping(value = "/iniciarSesion")
    public String  iniciarSesion(){
        return "iniciarSesion";
    }
}
