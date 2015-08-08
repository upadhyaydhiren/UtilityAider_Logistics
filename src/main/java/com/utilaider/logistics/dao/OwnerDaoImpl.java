/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Owner;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Repository
@Transactional
public class OwnerDaoImpl implements OwnerDao, UserDetailsService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public LinkedList<Owner> getAllOwner() throws Exception {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Owner.class);
        return new LinkedList<>(criteria.list());
    }

    @Override
    public boolean insertOwner(Owner owner) throws Exception {
        Long ownerId = (Long) sessionFactory.getCurrentSession().save(owner);
        return ownerId > 0;
    }

    @Override
    public void updateOwner(Owner owner) throws Exception {
        sessionFactory.getCurrentSession().update(owner);
    }

    @Override
    public void deleteOwner(Owner owner) throws Exception {
        sessionFactory.getCurrentSession().delete(owner);
    }

    @Override
    public Owner getOwner(Long ownerId) throws Exception {
        return (Owner) sessionFactory.getCurrentSession().get(Owner.class, ownerId);
    }

    @Override
    public Owner getUserDetailsByUsername(String username) throws Exception {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Owner.class);
        if (username.contains("@")) {
            criteria.add(Restrictions.eq("email", username));
        } else {
            criteria.add(Restrictions.eq("mobile", username));
        }
        return (Owner) criteria.uniqueResult();
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails userDetails = null;
        try {
            Owner owner = getUserDetailsByUsername(username);
            if (owner == null) {
                return null;
            }
            List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
            authorities.add(new SimpleGrantedAuthority(owner.getUserRole()));
            userDetails = new User(owner.getEmail(), owner.getPassword(), true, true, true, true, authorities);
        } catch (Exception ex) {
            Logger.getLogger(OwnerDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userDetails;
    }
}
