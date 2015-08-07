/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.controller;

import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.service.OwnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "login")
    public ModelAndView login(@ModelAttribute Owner objOwner,Model model) 
    {
        model.addAttribute("aemail","abc");
        return new ModelAndView("Login","Owner",objOwner);
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public @ResponseBody
    String save(@ModelAttribute Owner objOwner) {
        try{
            Owner owner = ownerService.getOwner((long)1);
            System.out.println(owner);
            if( owner.getEmail().equals(objOwner.getEmail()) && owner.getPassword().equals(objOwner.getPassword())){
                return "Success";
            }
            else{
                return "Login  failed in validation";
            }

        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return "Login failed";
    }
}
