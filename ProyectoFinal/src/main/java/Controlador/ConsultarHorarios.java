/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Grupo;
import Mapeo.Idioma;
import Modelo.GrupoDAO;
import Modelo.IdiomaDAO;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luis
 */
@Controller
public class ConsultarHorarios {
    
    @Autowired
    private IdiomaDAO id;
    
    @Autowired
    private GrupoDAO grupoBD;
    
    
    @RequestMapping(value = "/horarios", method = RequestMethod.GET)
    public ModelAndView index(@RequestParam("id")int idIdioma){
        Idioma idioma = id.getIdioma(idIdioma);
        ModelAndView model = new ModelAndView("horarios");
        List<Grupo> lg = grupoBD.grupos(idIdioma);
        model.addObject("grupos",lg);
        return model;
    }
    
    
    @RequestMapping(value = "/informacionIdioma", method = RequestMethod.GET)
    public ModelAndView getIdioma(@RequestParam("id") int idIdioma) {
        Idioma idioma = id.getIdioma(idIdioma);
        ModelAndView model = new ModelAndView("informacionIdioma");
        model.addObject("idioma", idioma);
        return model;

    }
    
    
}
