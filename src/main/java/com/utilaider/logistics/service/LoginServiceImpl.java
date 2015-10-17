/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.dao.OwnerDaoImpl;
import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.domain.UserRole;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhiren
 */
@Service("loginServiceImpl")
public class LoginServiceImpl implements UserDetailsService {

    @Autowired
    OwnerService ownerService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails userDetails = null;
        try {
            Owner owner = ownerService.getOwnerByUsername(username);
            if (owner == null) {
                return null;
            }
            List<GrantedAuthority> authorities = new ArrayList<>();
            for (UserRole role : owner.getUserRoles()) {
                authorities.add(new SimpleGrantedAuthority(role.getRole().getRoleName()));
            }
            userDetails = new User(owner.getMobile(), owner.getPassword(), true, true, true, true, authorities);
        } catch (Exception ex) {
            Logger.getLogger(OwnerDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userDetails;
    }

}
