/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.StaticBasicUserEntity;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface StaticBasicUserEntityService extends GenericService<Integer, StaticBasicUserEntity> {

    public void saveIntialUserEntity(List<StaticBasicUserEntity> staticBasicUserEntitys) throws Exception;
}
