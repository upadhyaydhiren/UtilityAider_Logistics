/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.domain;

import java.util.Date;

/**
 *
 * @author SARJIT
 */
public class Goods 
{
    private long goodsId;
    private String type;
    private int weight;
    private Date dateOfRequirement;
    private long value;
    private String image;
    private String NOC;

    public long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(long goodsId) {
        this.goodsId = goodsId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public Date getDateOfRequirement() {
        return dateOfRequirement;
    }

    public void setDateOfRequirement(Date dateOfRequirement) {
        this.dateOfRequirement = dateOfRequirement;
    }

    public long getValue() {
        return value;
    }

    public void setValue(long value) {
        this.value = value;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNOC() {
        return NOC;
    }

    public void setNOC(String NOC) {
        this.NOC = NOC;
    }
    
    
}
