/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Date;

@WebServlet(name = "Cliente", urlPatterns = {"/Cliente"})
public class ServletSession extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Integer ctosAccesos = (Integer) session.getAttribute("ctosAccesos");
        if(ctosAccesos==null){
            ctosAccesos= 1;
        } else {
            ctosAccesos= ctosAccesos.intValue()+1;
        }
        session.setAttribute("ctosAccesos", ctosAccesos);
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>demoSession</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<p> ID de session: "+session.getId()+"</p>");
            out.println("<p> Creación: "+new Date(session.getCreationTime())+"</p>");
            out.println("<p> Ultimo Acceso: "+new Date(session.getLastAccessedTime()) +"</p>");
            Integer ctos= (Integer) session.getAttribute("ctosAccesos");
            out.println("<p> Cantidad de accesos: "+ctos.intValue()+"</p>");
            out.println("<p> Tiempo máximo de inactividad :"+session.getMaxInactiveInterval()+" segundos </p>");
            out.println("</body>");
            out.println("</html>");
        } finally{
            out.close();
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
