/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mapeo.Idioma;
import Modelo.IdiomaDAO;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author luis
 */
@Controller
public class ConsultarInfo {

    @Autowired
    private IdiomaDAO id;
    
    @RequestMapping(value = "/infoIdioma", method = RequestMethod.GET)
    public ModelAndView getIdioma(@RequestParam("id") int idIdioma,HttpServletRequest request) {
        Idioma idioma = id.getIdioma(idIdioma);
        ModelAndView model = new ModelAndView("infoIdioma");
        model.addObject("idioma", idioma);
        boolean enSession = request.isUserInRole("ROLE_TRABAJADOR") || request.isUserInRole("ROLE_ALUMNO");
        model.addObject("enSesion", enSession);
        return model;

    }
}
