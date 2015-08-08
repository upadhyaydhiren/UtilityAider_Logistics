/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.utility;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import java.beans.PropertyVetoException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author Dhiren
 */
@EnableWebMvc
@Configuration
@ComponentScan("com.utilaider.logistics.*")
@EnableTransactionManagement
@PropertySource({"classpath:Hibernate.properties", "DB.properties"})
public class AppConfig extends WebMvcConfigurerAdapter {

    @Value("${hibernate.format_sql}")
    private String hibernateFormatSql;
    @Value("${hibernate.show_sql}")
    private String hibernateShowSql;
    @Value("${hibernate.dialect}")
    private String hibernateDialect;
    @Value("${hibernate.hbm2ddl.auto}")
    private String hibernateDddl;
    @Value("${db.classDriver}")
    private String dbDriverClass;
    @Value("${db.jdbcurl}")
    private String jdbcUrl;
    @Value("${db.username}")
    private String dbUser;
    @Value("${db.password}")
    private String dbPassword;

    @Bean
    public SessionFactory sessionFactory() throws IOException, Exception {
        LocalSessionFactoryBuilder sessionFactoryBuilder = new LocalSessionFactoryBuilder(dataSource());
        sessionFactoryBuilder.scanPackages("com.utilaider.logistics.domain").addProperties(getHibernateProperties());
        return sessionFactoryBuilder.buildSessionFactory();
    }

    @Bean
    public DataSource dataSource() throws Exception {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        try {
            dataSource.setDriverClass(dbDriverClass);
        } catch (PropertyVetoException ex) {
            Logger.getLogger(AppConfig.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
        dataSource.setJdbcUrl(jdbcUrl);
        dataSource.setUser(dbUser);
        dataSource.setPassword(dbPassword);
        return dataSource;
    }

    private Properties getHibernateProperties() throws FileNotFoundException, IOException {
        Properties properties = new Properties();
        properties.put("hibernate.format_sql", hibernateFormatSql);
        properties.put("hibernate.show_sql", hibernateShowSql);
        properties.put("hibernate.dialect", hibernateDialect);
        properties.put("hibernate.hbm2ddl.auto", hibernateDddl);
        return properties;
    }

    @Bean
    public HibernateTransactionManager transactionManager() throws IOException, Exception {
        return new HibernateTransactionManager(sessionFactory());
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setViewClass(JstlView.class);
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setDefaultEncoding("utf-8");
        multipartResolver.setMaxUploadSize(50000000);
        return multipartResolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyConfig() {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
