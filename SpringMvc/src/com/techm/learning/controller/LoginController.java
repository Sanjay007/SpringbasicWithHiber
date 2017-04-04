package com.techm.learning.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.techm.learning.model.Users;

@Controller
public class LoginController {

    @Autowired
    SessionFactory sessionFactory;

    Session session = null;

    Transaction tx = null;

    @RequestMapping(value = { "/", "/home" })
    public String getUserDefault() {
        final Users myUser = new Users();
        myUser.setUsername("Sanjay");
        myUser.setPassword("sanjay");
        session = sessionFactory.openSession();
        tx = session.getTransaction();
        session.beginTransaction();
        session.persist(myUser);
        tx.commit();
        return "home";
    }

    @RequestMapping(value = "feedback")
    public ModelAndView getProfile() {

        final ModelAndView mv = new ModelAndView();
        mv.setViewName("feedback");

        return mv;
    }

    @RequestMapping("/login")
    public ModelAndView getLoginForm(@ModelAttribute final Users users,
            @RequestParam(value = "error", required = false) final String error,
            @RequestParam(value = "logout", required = false) final String logout) {

        String message = "";
        if (error != null) {
            message = "Incorrect username or password !";
        } else if (logout != null) {
            message = "Logout successful !";
        }
        return new ModelAndView("loginPage", "message", message);
    }

    @RequestMapping("/admin**")
    public String getAdminProfile() {
        return "admin";
    }

    @RequestMapping("/user**")
    public String getUserProfile() {
        return "user";
    }

    @RequestMapping("/403")
    public ModelAndView getAccessDenied() {
        final Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = "";
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            final UserDetails userDetail = (UserDetails) auth.getPrincipal();
            username = userDetail.getUsername();
        }

        return new ModelAndView("403", "username", username);
    }

}
