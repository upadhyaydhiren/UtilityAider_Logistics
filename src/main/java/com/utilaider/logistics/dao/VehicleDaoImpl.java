/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.dao;

import com.utilaider.logistics.domain.Vehicle;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author SARJIT
 */
@Repository
@Transactional
public class VehicleDaoImpl extends GenericDaoImpl<String, Vehicle> implements VehicleDao {

}
