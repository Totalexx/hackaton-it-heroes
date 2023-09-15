package ru.totalexx.contractlifemarch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("auth")
public class AuthController {

    @GetMapping("login")
    public String getLoginPage() {
        return "auth/login";
    }

    @GetMapping("register")
    public String getRegisterPage() {
        return "auth/register";
    }

    @PostMapping("logout")
    public String logout() {
        return getLoginPage();
    }
}
