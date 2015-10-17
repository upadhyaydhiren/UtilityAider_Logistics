/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 *
 * @author Dhiren
 */
@Entity(name = "user_entity")
public class UserEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Integer id;
    @OneToOne
    @JoinColumn(name = "static_entity_id")
    private StaticBasicUserEntity basicUserEntity;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public StaticBasicUserEntity getBasicUserEntity() {
        return basicUserEntity;
    }

    public Integer getId() {
        return id;
    }

    @JsonBackReference
    public User getUser() {
        return user;
    }

    public void setBasicUserEntity(StaticBasicUserEntity basicUserEntity) {
        this.basicUserEntity = basicUserEntity;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
