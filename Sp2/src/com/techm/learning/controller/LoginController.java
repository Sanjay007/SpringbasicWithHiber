package com.techm.learning.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.techm.learning.model.User;



@Controller
public class LoginController {

    @Autowired
    SessionFactory sessionFactory;

    Session session = null;

    Transaction tx = null;
    
    @Autowired
    BCryptPasswordEncoder encoder;
    
    @RequestMapping(value = { "/", "/home" })
    public String getUserDefault() { 
    	
    	final User myUser = new User();
    myUser.setUsername("Dolls");
    myUser.setPassword(encoder.encode("123"));
    myUser.setEnabled(true);
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


}
