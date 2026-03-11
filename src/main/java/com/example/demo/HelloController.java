package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

    // Shows the home page
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to my Spring Boot App!");
        model.addAttribute("status", "Running");
        return "home"; // → loads /WEB-INF/views/home.jsp
    }

    // Shows the greet page with a name
    @GetMapping("/greet")
    public String greet(@RequestParam(defaultValue = "World") String name, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("greeting", "Hello, " + name + "! 👋");
        return "greet"; // → loads /WEB-INF/views/greet.jsp
    }

}
