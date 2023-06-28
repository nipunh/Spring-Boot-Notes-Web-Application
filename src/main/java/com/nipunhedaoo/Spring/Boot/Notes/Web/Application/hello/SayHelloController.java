package com.nipunhedaoo.Spring.Boot.Notes.Web.Application.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {
    @RequestMapping("/say-hello") //create a url with /say-hello route
    @ResponseBody //Used this as function was returning a string to display it directly on browser
    public String sayHello() {
        return "Hello! What are you learning today?";
    }

    @RequestMapping("/say-hello-jsp") //mapping jsp
    public String sayHelloJsp() {
        return "sayHello";
    }
}
