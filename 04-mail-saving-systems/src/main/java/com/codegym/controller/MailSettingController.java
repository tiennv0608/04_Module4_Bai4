package com.codegym.controller;

import com.codegym.model.MailSetting;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MailSettingController {

    @GetMapping("/settings")
    public String homePage(ModelMap model){
        model.addAttribute("email",new MailSetting());
        return "view";
    }

    @ModelAttribute("languages")
    public Map<String, String> getLanguages() {
        Map<String, String> languages = new HashMap<String, String>();
        languages.put("England", "England");
        languages.put("Chinese", "Chinese");
        languages.put("Singapore", "Singapore");
        languages.put("Japanese", "Japanese");
        languages.put("Vietnamese", "Vietnamese");
        return languages;
    }

    @ModelAttribute("pageSizes")
    public List<Integer> getPageSizes(){
        List<Integer> pageSizes = new ArrayList<>();
        pageSizes.add(5);
        pageSizes.add(10);
        pageSizes.add(15);
        pageSizes.add(20);
        pageSizes.add(25);
        pageSizes.add(50);
        pageSizes.add(100);
        return pageSizes;

    }

    @PostMapping("/show")
    public ModelAndView update(@ModelAttribute("email") MailSetting email){
        ModelAndView modelAndView = new ModelAndView("result");
        modelAndView.addObject("email",email);
        return modelAndView;
    }
}
