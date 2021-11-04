package com.example.ttmaill.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
    @GetMapping("")
    public String DashboardPage(){
        return "admin/views/dashboard";
    }
}
