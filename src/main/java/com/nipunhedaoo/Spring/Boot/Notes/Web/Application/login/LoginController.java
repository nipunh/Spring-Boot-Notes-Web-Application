package com.nipunhedaoo.Spring.Boot.Notes.Web.Application.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private Logger logger = LoggerFactory.getLogger(getClass());

    private AuthenticationService authenticationService;
    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String gotoLoginPage(){
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String gotoWelcomePage(@RequestParam String username, @RequestParam String password, ModelMap model){
        model.put("username", username);
        model.put("password", password);
        if(authenticationService.authenticate(username, password)){
            return "welcome";
        }

        model.put("errorMessage", "Invalid Credentials! Please try again.");

        return "login";
    }
}
