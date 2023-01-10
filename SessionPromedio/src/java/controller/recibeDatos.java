/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;
/*
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;*/
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import negocios.Alumno;
import negocios.EscribeArchivo;

/**
 *
 * @author CASMA
 */
@WebServlet(name = "recibe", urlPatterns = {"/recibe"})
public class recibeDatos extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String nombre= request.getParameter("nombre");
            String apellidos= request.getParameter("apellidos");
            Double promedio = Double.parseDouble(request.getParameter("prom"));
            Alumno alumno = new Alumno(nombre, apellidos,promedio);
            
            ServletContext sc= this.getServletContext();
            String path = sc.getRealPath("/WEB-INF/Promedio.txt");
            path= path.replace('\\', '/');
            //Guardar archivo 
            EscribeArchivo.add(alumno,path);
            request.setAttribute("atribAlumn", alumno);
            request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);
        
        } finally {
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
