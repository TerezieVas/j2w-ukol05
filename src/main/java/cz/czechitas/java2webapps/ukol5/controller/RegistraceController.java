package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

    @GetMapping("/")
  /*public String formular() {
    return "formular";
  }*/
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("formular");
        modelAndView.addObject("formular", new RegistraceForm());
        return modelAndView;
    }

    @PostMapping("/")
    public Object formular(@Valid @ModelAttribute("formular") RegistraceForm formular, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "formular";
        }

        Period period = formular.getDatumNarozeni().until(LocalDate.now());
        int vek = period.getYears();
        if (vek < 9 || vek > 15) {
            return new ModelAndView("/spatnyvek");
        }

        return new ModelAndView("/potvrzeniregistrace")
                .addObject("email", formular.getEmail());
        // return "redirect:";

    }


}


