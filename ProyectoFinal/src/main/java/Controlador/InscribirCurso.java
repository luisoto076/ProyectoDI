/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.AlumnoDAO;
import Modelo.EstudianteDAO;
import Modelo.TrabajadorDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
        
        
    
}
