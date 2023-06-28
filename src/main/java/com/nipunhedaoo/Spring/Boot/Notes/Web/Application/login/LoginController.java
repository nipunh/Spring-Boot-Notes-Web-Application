package com.nipunhedaoo.Spring.Boot.Notes.Web.Application.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private Logger logger = LoggerFactory.getLogger(getClass());
    @RequestMapping("/login")
    public String gotoLoginPage(@RequestParam String name, ModelMap model){
        logger.debug("Request Param is {}", name);
        model.put("name", name);
        return "login";
    }
}