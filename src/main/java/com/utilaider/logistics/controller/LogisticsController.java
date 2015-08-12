/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.controller;

import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.service.OwnerService;
import java.util.Date;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
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
    private final Validator validator;

    public LogisticsController() {
        ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
        validator = validatorFactory.getValidator();
    }

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
        model.addAttribute("loginMessage", message);
        return new ModelAndView("Login", model);
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Owner owner, ModelMap model, BindingResult result) {
        try {
            owner.setPassword(new BCryptPasswordEncoder().encode(owner.getPassword()));
            owner.setOwnerType("self");
            owner.setCreatedBy(owner.getEmail());
            owner.setCreatedDate(new Date());
            owner.setModifiedDate(new Date());
            Set<ConstraintViolation<Owner>> violations = validator.validate(owner);
            for (ConstraintViolation<Owner> violation : violations) {
                String propertyPath = violation.getPropertyPath().toString();
                String message = violation.getMessage();
                result.addError(new FieldError("owner", propertyPath,
                        "Invalid " + propertyPath + "(" + message + ")"));
            }
            if (result.hasErrors()) {
                return new ModelAndView("Login", model);
            }
            if (ownerService.insertOwner(owner)) {
                model.addAttribute("registrationMessage", "You have registered successfully.");
            } else {
                model.addAttribute("registrationMessage", "Registration failed");
            }
            model.addAttribute("owner", new Owner());
        } catch (Exception ex) {
            ex.printStackTrace();
            model.addAttribute("registrationMessage", "Not Successful Registration");
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

    @RequestMapping(value = "existEmail/{email}")
    public @ResponseBody
    Boolean isExistingEmail(@PathVariable("email") String email) {
        try {
            return ownerService.getOwnerByUsername(email) == null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @RequestMapping("reg")
    public String getReg() {
        return "registration";
    }
}
