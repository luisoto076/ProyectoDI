/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Alumno;
import Mapeo.Estudiante;
import Mapeo.Inscripcion;
import Mapeo.Trabajador;
import Modelo.AlumnoDAO;
import Modelo.EstudianteDAO;
import Modelo.GrupoDAO;
import Modelo.InscripcionDAO;
import Modelo.TrabajadorDAO;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author daniicape
 */
public class Registro {
    
    @Autowired
    private EstudianteDAO estdb;
    
    @Autowired
    private AlumnoDAO aldb;
    
    @Autowired
    private TrabajadorDAO trdb;
    
    @Autowired
    private InscripcionDAO insdb;
    
    @Autowired
    private GrupoDAO grudb;
    
    @RequestMapping(value = "/registro1", method = RequestMethod.GET)
    public ModelAndView getIdioma(@RequestParam("id") int idGrupo) {
        ModelAndView model = new ModelAndView("registro");
        model.addObject("idgrupo", idGrupo);
        return model;

    }
    
    @RequestMapping(value= "/registrar1", method = RequestMethod.POST)
    public String creaCliente(ModelMap model,HttpServletRequest request){
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String password = passwordEncoder.encode(request.getParameter("password"));
        String nombre = request.getParameter("nombre");
        String app = request.getParameter("app");
        String apm = request.getParameter("apm");
        String cuenta = request.getParameter("cuenta");
        String carrera = request.getParameter("carrera");
        String ntrabajador = request.getParameter("ntrabajador");
        String rfc = request.getParameter("rfc");
        String rfce = request.getParameter("rfce");
        String status = request.getParameter("status");
        int idGrupo = Integer.parseInt(request.getParameter("grupo"));
        Estudiante es = new Estudiante();
        es.setNombre(nombre);
        es.setApp(app);
        es.setApm(apm);
        es.setContrasenia(password);
        switch(status){
            case "1":
                es.setRol("ROLE_ALUMNO");
                Alumno al = new Alumno();
                al.setCarrera(carrera);
                al.setCuenta(cuenta);
                al.setEstudiante(es);
                estdb.guardar(es);
                aldb.guardar(al);
                break;
            case "2":
            case "3":
                es.setRol("ROLE_TRABAJADOR");
                Trabajador tr = new Trabajador();
                tr.setRfc(rfc);
                tr.setTrabajo(ntrabajador);
                tr.setEstudiante(es);
                estdb.guardar(es);
                trdb.guardar(tr);
                break;
            default:
        }
        Inscripcion ins = new Inscripcion();
        ins.setEstudiante(es);
        ins.setGrupo(grudb.getGrupo(idGrupo));
        insdb.guardar(ins);
        return "index";   
    }
    
}
