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
public interface BusinessIndustryService {

    public boolean insert(BusinessIndustry businessIndustry) throws Exception;

    public boolean update(BusinessIndustry businessIndustry) throws Exception;

    public boolean delete(BusinessIndustry businessIndustry) throws Exception;

    public BusinessIndustry getBusinessIndustryById(Integer id) throws Exception;

    public List<BusinessIndustry> getAllBusinessIndustrys() throws Exception;
}
