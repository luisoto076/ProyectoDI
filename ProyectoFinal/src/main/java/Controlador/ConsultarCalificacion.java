/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Estudiante;
import Mapeo.Inscripcion;
import Modelo.EstudianteDAO;
import Modelo.InscripcionDAO;
import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luis
 */
@Controller
public class ConsultarCalificacion {
    
    @Autowired
    private EstudianteDAO estdb;
    
    @Autowired
    private InscripcionDAO inscdb;
    
    @RequestMapping(value = "estudiante/calificaciones")
    public ModelAndView  iniciarSesion(HttpServletRequest request,Principal principal){
        long idEstudiante = -1;
        if(request.isUserInRole("ROLE_ALUMNO")){
            idEstudiante = inscdb.getAlumno(principal.getName()).getEstudiante().getIdEstudiante();
        }
        boolean enSession = request.isUserInRole("ROLE_TRABAJADOR") || request.isUserInRole("ROLE_ALUMNO");
        ModelAndView model = new ModelAndView("calificaciones");
        List<Inscripcion> li = inscdb.inscripciones(idEstudiante);
        model.addObject("enSesion", enSession);
        model.addObject("inscripciones", li);
        return model;
    }
}
