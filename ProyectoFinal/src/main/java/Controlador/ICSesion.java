/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author luis
 */
@Controller
public class ICSesion {
    
    /**
     * Método para desplegar la vista de opciones
     */
    @RequestMapping(value = "/index")
    public String opciones(){
        return "index";
    }
    
}
