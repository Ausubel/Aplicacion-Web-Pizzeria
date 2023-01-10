/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package com.tag;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author johan
 */
public class Invierte extends SimpleTagSupport {

    private String texto;

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            StringBuffer sb = new StringBuffer(texto);
            out.println(sb.reverse().toString());

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

        } catch (java.io.IOException ex) {
            throw new JspException("Error in Invierte tag", ex);
        }
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }
    
}
