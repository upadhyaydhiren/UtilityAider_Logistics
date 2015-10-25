/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.service;

import com.utilaider.logistics.domain.BusinessIndustry;
import java.util.List;

/**
 *
 * @author Dhiren
 */
public interface BusinessIndustryService extends GenericService<Integer, BusinessIndustry> {

    /**
     *
     * @param businessIndustrys
     * @throws Exception
     */
    public void saveIntialAllIndustry(List<BusinessIndustry> businessIndustrys) throws Exception;
}
