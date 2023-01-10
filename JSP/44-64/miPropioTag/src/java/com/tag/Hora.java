/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package com.tag;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author johan
 */
public class Hora extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            SimpleDateFormat sdf=
                    new SimpleDateFormat("E, hh:mm:ss a");
            Date fecha = new Date();
            out.println(sdf.format(fecha).toString());
            

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

        } catch (java.io.IOException ex) {
            throw new JspException("Error in Hora tag", ex);
        }
    }
    
}
