/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.controller;

import com.utilaider.logistics.domain.Address;
import com.utilaider.logistics.domain.BusinessIndustry;
import com.utilaider.logistics.domain.Driver;
import com.utilaider.logistics.domain.Owner;
import com.utilaider.logistics.domain.Role;
import com.utilaider.logistics.domain.StaticBasicUserEntity;
import com.utilaider.logistics.domain.UserEntity;
import com.utilaider.logistics.domain.UserRole;
import com.utilaider.logistics.domain.Vehicle;
import com.utilaider.logistics.domain.VehiclePermits;
import com.utilaider.logistics.domain.VehicleType;
import com.utilaider.logistics.service.BusinessIndustryService;
import com.utilaider.logistics.service.DriverService;
import com.utilaider.logistics.service.LoginServiceImpl;
import com.utilaider.logistics.service.OwnerService;
import com.utilaider.logistics.service.RoleService;
import com.utilaider.logistics.service.StaticBasicUserEntityService;
import com.utilaider.logistics.service.VehicleService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author SARJIT
 */
@Controller
@ControllerAdvice
public class LogisticsController {

    @Autowired(required = true)
    OwnerService ownerService;
    @Autowired(required = true)
    StaticBasicUserEntityService basicUserEntityService;
    @Autowired(required = true)
    BusinessIndustryService businessIndustryService;
    @Autowired(required = true)
    VehicleService vehicleService;
    @Autowired(required = true)
    DriverService driverService;
    @Autowired(required = true)
    RoleService roleService;
    @Autowired(required = true)
    LoginServiceImpl loginServiceImpl;

    @InitBinder
    public void initBider(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    private void saveIntialAllBusinessIndustry() {
        try {
            List<BusinessIndustry> businessIndustrys = new ArrayList<>();
            BusinessIndustry businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("MANUFACTURING");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("TRADING");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("FARMING  / FOODS");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("REAL STATE / CONSTRUCTION");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("HEALTH CARE");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("IT / TELECOM");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("EXPORT /IMPORT");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("PWD / PSU / GOVT.CONTRACTOR");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("FM CG");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("PLASTICS");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("TEXTILE");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("COMMODITY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("POST /PARCEL /COURIER");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("UTILITY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("WOODS /FURNITURE");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("SCRAP");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("METAL /NON METAL /STEEL");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("INDUSTRY EQUIPMENT");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("MACHINERY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("PAPER INDUSTRY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("PACKERS AND MOVERS");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("HOTEL INDUSTRY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("ELECTRONICS");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("RUBBER INDUSTRY");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("RECYCLING");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("WASTE MANAGEMENT");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("ENTERTAINMENT");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("MINES / MINERALS");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("AUTOMOBILES");
            businessIndustrys.add(businessIndustry);
            businessIndustry = new BusinessIndustry();
            businessIndustry.setIndustryName("OTHERS / GENERAL");
            businessIndustrys.add(businessIndustry);
            businessIndustryService.saveIntialAllIndustry(businessIndustrys);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveIntialStaticBasicUserEntity() {
        try {
            List<StaticBasicUserEntity> staticBasicUserEntitys = new ArrayList<>();
            StaticBasicUserEntity staticBasicUserEntity = new StaticBasicUserEntity();
            staticBasicUserEntity.setEntityType("owner");
            staticBasicUserEntitys.add(staticBasicUserEntity);
            staticBasicUserEntity = new StaticBasicUserEntity();
            staticBasicUserEntity.setEntityType("driver");
            staticBasicUserEntitys.add(staticBasicUserEntity);
            basicUserEntityService.saveIntialUserEntity(staticBasicUserEntitys);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveIntialAllRole() {
        try {
            List<Role> roles = new ArrayList<>();
            Role role = new Role();
            role.setRoleName("user");
            roles.add(role);
            role = new Role();
            role.setRoleName("admin");
            roles.add(role);
            roleService.saveIntialAllRole(roles);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "login")
    public ModelAndView login(@ModelAttribute Owner owner, ModelMap model, @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        saveIntialAllBusinessIndustry();
        saveIntialAllRole();
        saveIntialStaticBasicUserEntity();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            return new ModelAndView("redirect:home");
        }
        String message = "";
        if (error != null) {
            message = "Incorrect Email/Mobile or password";
        } else if (logout != null) {
            message = "Logged out successfully";
        }
        model.addAttribute("owner", owner);
        model.addAttribute("loginMessage", message);
        return new ModelAndView("Login", model);
    }

    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Owner owner, ModelMap model) {
        try {
            owner.setPassword(new BCryptPasswordEncoder().encode(owner.getPassword()));
            owner.setCreatedBy(owner.getEmail());
            owner.setCreatedDate(new Date());
            owner.setModifiedDate(new Date());
            UserRole userRole = new UserRole();
            Role role = new Role();
            role.setRoleId(1);
            userRole.setRole(role);
            userRole.setUser(owner);
            List<UserRole> userRoles = new ArrayList<>();
            userRoles.add(userRole);
            owner.setUserRoles(userRoles);
            Address address = new Address();
            address.setUser(owner);
            owner.setAddress(address);
            if ((Long) ownerService.save(owner) > 0) 
            {
                UserDetails userDetails=loginServiceImpl.loadUserByUsername(owner.getMobile());
                Authentication authentication = new UsernamePasswordAuthenticationToken(
						userDetails,userDetails.getPassword(), userDetails.getAuthorities());
                SecurityContextHolder.getContext().setAuthentication(
						authentication);
                model.addAttribute("registrationMessage", "You have registered successfully.");
                model.addAttribute("entityList", basicUserEntityService.getAll());
                model.addAttribute("industryList", businessIndustryService.getAll());
                model.addAttribute("owner", owner);
                return new ModelAndView("registration", model);
            } else {
                model.addAttribute("registrationMessage", "Registration failed");
                model.addAttribute("owner", new Owner());
                return new ModelAndView("Login", model);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            model.addAttribute("registrationMessage", "Registration failed");
            model.addAttribute("owner", new Owner());
            return new ModelAndView("Login", model);
        }
    }

    @RequestMapping("home")
    public ModelAndView home(ModelMap map) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        try {
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner owner = ownerService.getOwnerByUsername(userDetails.getUsername());
                map.addAttribute("owner", owner);
                map.addAttribute("vehicle", new Vehicle());
                map.addAttribute("driver", new Driver());
                map.addAttribute("entityList", basicUserEntityService.getAll());
                map.addAttribute("industryList", businessIndustryService.getAll());
                map.addAttribute("vehicletypes", VehicleType.values());
                map.addAttribute("vehiclepermits", VehiclePermits.values());
                if (owner.getUserEntities().isEmpty()) {
                    map.addAttribute("entityList", basicUserEntityService.getAll());
                    map.addAttribute("industryList", businessIndustryService.getAll());
                    map.addAttribute("owner", owner);
                    return new ModelAndView("registration", map);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("redirect:login");
        }
        return new ModelAndView("profile", map);
    }

    @RequestMapping(value = "usernameExists/{username}")
    public @ResponseBody
    Boolean isExistingEmail(@PathVariable("username") String username) {
        try {
            return ownerService.getOwnerByUsername(username) == null;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @RequestMapping(value = "updateprofle", method = RequestMethod.POST)
    public ModelAndView completeProfile(@ModelAttribute Owner owner, HttpServletRequest request, ModelMap map) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
                Owner fetchedOwner = ownerService.getById(owner.getId());
                fetchedOwner.setEmail(owner.getEmail());
                fetchedOwner.setPanNumber(owner.getPanNumber());
                fetchedOwner.setCompanyName(owner.getCompanyName());
                fetchedOwner.setUserEntities(owner.getUserEntities());
                fetchedOwner.setUsersIndustrys(owner.getUsersIndustrys());
                fetchedOwner.setNoOfEmployee(owner.getNoOfEmployee());
                fetchedOwner.setNoOfVehicles(owner.getNoOfVehicles());
                fetchedOwner.setBusinessType(owner.getBusinessType());
                fetchedOwner.setUserReferanceCode(owner.getUserReferanceCode());
                owner.getAddress().setUser(fetchedOwner);
                fetchedOwner.setAddress(owner.getAddress());
                ownerService.update(fetchedOwner);
                return new ModelAndView("redirect:home");
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                map.addAttribute("entityList", basicUserEntityService.getAll());
            } catch (Exception ex) {
                Logger.getLogger(LogisticsController.class.getName()).log(Level.SEVERE, null, ex);
                request.getSession().invalidate();
                return new ModelAndView("redirect:login");
            }
            map.addAttribute("owner", owner);
            return new ModelAndView("registration", map);
        }
    }

    @RequestMapping(value = "addtruck", method = RequestMethod.POST)
    public String getProfile(@ModelAttribute Vehicle vehicle) {

        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner owner = ownerService.getOwnerByUsername(userDetails.getUsername());
                owner.getVehicles().add(vehicle);
                ownerService.update(owner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "adddriver", method = RequestMethod.POST)
    public String addDriver(@ModelAttribute Driver driver) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner owner = ownerService.getOwnerByUsername(userDetails.getUsername());
                driver.setIsActive(Boolean.TRUE);
                driver.setIsDeleted(Boolean.FALSE);
                driver.setPassword(new BCryptPasswordEncoder().encode((driver.getFirstName() + "123")));
                UserRole userRole = new UserRole();
                Role role = new Role();
                role.setRoleId(1);
                userRole.setRole(role);
                userRole.setUser(driver);
                List<UserRole> userRoles = new ArrayList<>();
                userRoles.add(userRole);
                driver.setUserRoles(userRoles);
                List<UserEntity> userEntitys = new ArrayList<>();
                UserEntity userEntity = new UserEntity();
                StaticBasicUserEntity basicUserEntity = new StaticBasicUserEntity();
                basicUserEntity.setId(2);
                userEntity.setBasicUserEntity(basicUserEntity);
                userEntity.setUser(driver);
                userEntitys.add(userEntity);
                driver.setUserEntities(userEntitys);
                driver.setCreatedDate(new Date());
                driver.getAddress().setUser(driver);
                driverService.save(driver);
                owner.getDriverlist().add(driver);
                ownerService.update(owner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "updatepersonal", method = RequestMethod.POST)
    public String updatePersonal(@ModelAttribute Owner owner) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                fetchedOwner.setFirstName(owner.getFirstName());
                fetchedOwner.setLastName(owner.getLastName());
                fetchedOwner.setUserEntities(owner.getUserEntities());
                fetchedOwner.setMobile(owner.getMobile());
                owner.getAddress().setUser(fetchedOwner);
                fetchedOwner.setAddress(owner.getAddress());
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "updateaddtionalinfo", method = RequestMethod.POST)
    public String updateAddtionalInfo(@ModelAttribute Owner owner) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                fetchedOwner.setPanNumber(owner.getPanNumber());
                fetchedOwner.setEmail(owner.getEmail());
                fetchedOwner.setUsersIndustrys(owner.getUsersIndustrys());
                fetchedOwner.setCompanyName(owner.getCompanyName());
                fetchedOwner.setBusinessType(owner.getBusinessType());
                fetchedOwner.setUserReferanceCode(owner.getUserReferanceCode());
                fetchedOwner.setNoOfEmployee(owner.getNoOfEmployee());
                fetchedOwner.setNoOfVehicles(owner.getNoOfVehicles());
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "updatetruck", method = RequestMethod.POST)
    public String editTruck(@ModelAttribute Vehicle vehicle) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                Vehicle fetchedVehicle = null;
                int i = 0;
                for (; i < fetchedOwner.getVehicles().size(); i++) {
                    if (fetchedOwner.getVehicles().get(i).getRegNo().equals(vehicle.getRegNo())) {
                        fetchedVehicle = fetchedOwner.getVehicles().get(i);
                        break;
                    }
                }
                if (fetchedVehicle == null) {
                    return "redirect:home";
                }
                fetchedVehicle.setModelNo(vehicle.getModelNo());
                fetchedVehicle.setNoOfWheels(vehicle.getNoOfWheels());
                fetchedVehicle.setCapacity(vehicle.getCapacity());
                fetchedVehicle.setWeight(vehicle.getWeight());
                fetchedVehicle.setInsuranceNo(vehicle.getInsuranceNo());
                fetchedVehicle.setRouteInfo(vehicle.getRouteInfo());
                fetchedVehicle.setRoadTaxValidDate(vehicle.getRoadTaxValidDate());
                fetchedVehicle.setPermits(vehicle.getPermits());
                fetchedVehicle.setVehicleType(vehicle.getVehicleType());
                fetchedVehicle.setChargesPerHour(vehicle.getChargesPerHour());
                fetchedVehicle.setIsTrackable(vehicle.getIsTrackable());
                fetchedOwner.getVehicles().set(i, fetchedVehicle);
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "updatedriver", method = RequestMethod.POST)
    public String updateDriver(@ModelAttribute Driver driver) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                Driver fetchedDriver = null;
                int i = 0;
                for (; i < fetchedOwner.getDriverlist().size(); i++) {
                    if (Objects.equals(fetchedOwner.getDriverlist().get(i).getId(), driver.getId())) {
                        fetchedDriver = fetchedOwner.getDriverlist().get(i);
                        break;
                    }
                }
                if (fetchedDriver == null) {
                    return "redirect:home";
                }
                fetchedDriver.setFirstName(driver.getFirstName());
                fetchedDriver.setLastName(driver.getLastName());
                fetchedDriver.setLicenseNo(driver.getLicenseNo());
                fetchedDriver.setMobile(driver.getMobile());
                fetchedDriver.setEmail(driver.getEmail());
                fetchedDriver.setServiceDuration(driver.getServiceDuration());
                driver.getAddress().setUser(fetchedDriver);
                fetchedDriver.setAddress(driver.getAddress());
                driverService.update(fetchedDriver);
                fetchedOwner.getDriverlist().set(i, fetchedDriver);
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = {"vehicleData/{regno}"}, method = RequestMethod.POST)
    @ResponseBody
    public Vehicle getVehicleData(@PathVariable("regno") String regno) {
        try 
        {
            return vehicleService.getById(regno);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping(value = "deleteVehicleData/{regno}", method = RequestMethod.POST)
    public String deleteVehicleData(@PathVariable("regno") String regno) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                Vehicle fetchedVehicle = null;
                int i = 0;
                for (; i < fetchedOwner.getVehicles().size(); i++) {
                    if (fetchedOwner.getVehicles().get(i).getRegNo().equals(regno)) {
                        fetchedVehicle = fetchedOwner.getVehicles().get(i);
                        break;
                    }
                }
                if (fetchedVehicle == null) {
                    return "redirect:home";
                }
                fetchedOwner.getVehicles().remove(fetchedVehicle);
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping(value = "driverData/{drivermobile}", method = RequestMethod.POST)
    @ResponseBody
    public Driver getDriverData(@PathVariable(value = "drivermobile") String driverMobile) {
        try {
            return driverService.getDriverByMobileNo(driverMobile);
        } catch (Exception e) {
            e.getMessage();
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping(value = "deleteDriver{mobile}", method = RequestMethod.POST)
    public String deleteDriver(@PathVariable("mobile") String mobile) {
        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return "redirect:login";
            } else {
                UserDetails userDetails = (UserDetails) auth.getPrincipal();
                Owner fetchedOwner = ownerService.getOwnerByUsername(userDetails.getUsername());
                Driver fetchedDriver = null;
                int i = 0;
                for (; i < fetchedOwner.getDriverlist().size(); i++) {
                    if (fetchedOwner.getDriverlist().get(i).getMobile().equals(mobile)) {
                        fetchedDriver = fetchedOwner.getDriverlist().get(i);
                        break;
                    }
                }
                if (fetchedDriver == null) {
                    return "redirect:home";
                }
                fetchedDriver.setIsActive(Boolean.FALSE);
                fetchedDriver.setIsDeleted(Boolean.TRUE);
                driverService.update(fetchedDriver);
                fetchedOwner.getDriverlist().remove(fetchedDriver);
                ownerService.update(fetchedOwner);
                return "redirect:home";
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:home";
        }
    }

    @RequestMapping("goods")
    public ModelAndView goods(ModelMap map) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        try {
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
              return new ModelAndView("goods", map);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("redirect:login");
        }
    }

    @RequestMapping("trucks")
    public ModelAndView trucks(ModelMap map) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        try {
            if ((auth instanceof AnonymousAuthenticationToken)) {
                return new ModelAndView("redirect:login");
            } else {
              return new ModelAndView("trucks", map);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ModelAndView("redirect:login");
        }
    }
}
