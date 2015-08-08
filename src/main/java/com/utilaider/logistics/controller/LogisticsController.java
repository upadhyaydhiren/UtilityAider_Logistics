/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.controller;

import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.service.OwnerService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author SARJIT
 */
@Controller
public class LogisticsController {

    @Autowired
    OwnerService ownerService;

    @RequestMapping(value = "login")
    public ModelAndView login(@ModelAttribute Owner owner, ModelMap model, @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (!(auth instanceof AnonymousAuthenticationToken)) {
            return new ModelAndView("redirect:save");
        }
        String message = "";
        if (error != null) {
            message = "Incorrect Email/Mobile or password";
        } else if (logout != null) {
            message = "Logged out successfully";
        }
        model.addAttribute("owner", owner);
        model.addAttribute("message", message);
        return new ModelAndView("Login", model);
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Owner owner, ModelMap model) {
        try {
            owner.setPassword(new BCryptPasswordEncoder().encode(owner.getPassword()));
            owner.setUserRole("owner");
            owner.setOwnerType("self");
            if (ownerService.insertOwner(owner)) {
                model.addAttribute("message", "You have registered successfully.");
            } else {
                model.addAttribute("message", "Registration failed");
            }
            model.addAttribute("owner", new Owner());
        } catch (Exception ex) {
            ex.printStackTrace();
            model.addAttribute("message", "Not Successful Registration");
        }
        return new ModelAndView("Login", model);
    }

    @RequestMapping("home")
    public ModelAndView home(HttpServletRequest request, ModelMap map) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        try {
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner owner = ownerService.getOwnerByUsername(userDetails.getUsername());
                map.addAttribute("owner", owner);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("redirect:login");
        }
        return new ModelAndView("index", map);
    }
}
