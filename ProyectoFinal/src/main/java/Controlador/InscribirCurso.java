/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Alumno;
import Mapeo.Estudiante;
import Modelo.AlumnoDAO;
import Modelo.EstudianteDAO;
import Modelo.TrabajadorDAO;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author luis
 */
@Controller
public class InscribirCurso {
        
 @Autowired
    private EstudianteDAO ed;
    
    @Autowired
    private AlumnoDAO ad;
    
    @Autowired
    private TrabajadorDAO td;
    
    @RequestMapping(value = "/registro")
    public String registro(){
        return "registro";
    }       
    
    @RequestMapping(value= "/ProyectoFinal/registro", method = RequestMethod.POST)
    public String registrar(ModelMap model,HttpServletRequest request){
    Estudiante estudiante = new Estudiante();
    Alumno alumno = new Alumno();
    String nombre = request.getParameter("nombre");
    String app = request.getParameter("app");
    String apm = request.getParameter("apm");
    String cuenta = request.getParameter("cuenta");
    String carrera = request.getParameter("carrera");
    String password = request.getParameter("password");
    String password2 = request.getParameter("password2");
    //if(password.equals(password2))
    estudiante.setContrasenia(password);
    estudiante.setNombre(nombre);
    estudiante.setApm(apm);
    estudiante.setApp(app);
    estudiante.setRol("ROLE_ALUMNO");
    alumno.setCarrera(carrera);
    alumno.setCuenta(cuenta);
    alumno.setEstudiante(estudiante);
    ed.guardar(estudiante);
    ad.guardar(alumno);
    return "index";
    //BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        //String hash_password = passwordEncoder.encode(password) ;
}
    
}
