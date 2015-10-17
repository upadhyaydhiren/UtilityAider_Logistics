/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utilaider.logistics.utility;

import java.beans.PropertyEditorSupport;

/**
 *
 * @author Dhiren
 * @param <T>
 */
public class CaseInsensitiveConverter<T extends Enum<T>> extends PropertyEditorSupport {

    private final Class<T> typeParameterClass;

    public CaseInsensitiveConverter(Class<T> typeParameterClass) {
        super();
        this.typeParameterClass = typeParameterClass;
    }

    @Override
    public void setAsText(String text) throws IllegalArgumentException {
        String upper = text.toUpperCase();
        T value = T.valueOf(typeParameterClass, upper);
        setValue(value);
    }

}
