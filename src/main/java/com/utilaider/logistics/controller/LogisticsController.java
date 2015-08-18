/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.controller;

import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.service.BusinessIndustryService;
import com.utilaider.logistics.service.OwnerService;
import com.utilaider.logistics.service.UserEntityService;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author SARJIT
 */
@Controller
public class LogisticsController {

    @Autowired
    OwnerService ownerService;
    @Autowired
    UserEntityService userEntityService;
    @Autowired
    BusinessIndustryService businessIndustryService;

    @RequestMapping(value = "login")
    public ModelAndView login(@ModelAttribute Owner owner, ModelMap model, @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (!(auth instanceof AnonymousAuthenticationToken)) {
            return new ModelAndView("redirect:home");
        }
        String message = "";
        if (error != null) {
            message = "Incorrect Email/Mobile or password";
        } else if (logout != null) {
            message = "Logged out successfully";
        }
        model.addAttribute("owner", owner);
        model.addAttribute("loginMessage", message);
        return new ModelAndView("Login", model);
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Owner owner, ModelMap model, BindingResult result) {
        try {
            owner.setPassword(new BCryptPasswordEncoder().encode(owner.getPassword()));
            owner.setCreatedBy(owner.getEmail());
            owner.setCreatedDate(new Date());
            owner.setModifiedDate(new Date());
            if (ownerService.insertOwner(owner)) {
                model.addAttribute("registrationMessage", "You have registered successfully.");
                model.addAttribute("entityList", userEntityService.getAllUserEntitys());
                model.addAttribute("industryList", businessIndustryService.getAllBusinessIndustrys());
                model.addAttribute("owner", owner);
                return new ModelAndView("registration", model);
            } else {
                model.addAttribute("registrationMessage", "Registration failed");
                model.addAttribute("owner", new Owner());
                return new ModelAndView("Login", model);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            model.addAttribute("registrationMessage", "Registration failed");
            model.addAttribute("owner", new Owner());
            return new ModelAndView("Login", model);
        }
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
                if (owner.getUserEntities().isEmpty()) {
                    map.addAttribute("entityList", userEntityService.getAllUserEntitys());
                    map.addAttribute("industryList", businessIndustryService.getAllBusinessIndustrys());
                    map.addAttribute("owner", owner);
                    return new ModelAndView("registration", map);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("redirect:login");
        }
        return new ModelAndView("index", map);
    }

    @RequestMapping(value = "usernameExists/{username}")
    public @ResponseBody
    Boolean isExistingEmail(@PathVariable("username") String username) {
        try {
            return ownerService.getOwnerByUsername(username) == null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @RequestMapping(value = "updateprofle", method = RequestMethod.POST)
    public ModelAndView completeProfile(@ModelAttribute Owner owner, BindingResult result, ModelMap map, HttpServletRequest request) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
                if (ownerService.updateOwner(owner)) {
                    map.addAttribute("owner", owner);
                    return new ModelAndView("index", map);
                } else {
                    map.addAttribute("entityList", userEntityService.getAllUserEntitys());
                    map.addAttribute("industryList", businessIndustryService.getAllBusinessIndustrys());
                    map.addAttribute("owner", owner);
                    return new ModelAndView("registration", map);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                map.addAttribute("entityList", userEntityService.getAllUserEntitys());
            } catch (Exception ex) {
                Logger.getLogger(LogisticsController.class.getName()).log(Level.SEVERE, null, ex);
                request.getSession().invalidate();
                return new ModelAndView("redirect:login");
            }
            map.addAttribute("owner", owner);
            return new ModelAndView("registration", map);
        }
    }
}
