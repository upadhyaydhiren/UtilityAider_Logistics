/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.validator;

import com.utilaider.logistics.domain.Owner;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author Dhiren
 */
@Component
public class OwnerValidator implements Validator{

    @Override
    public boolean supports(Class clazz) {
        return Owner.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"firstName","error.firstname","First name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"lastName","error.lastName","Last name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email","error.email","Email is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"password","error.password","Password is required");
    }
    
}
