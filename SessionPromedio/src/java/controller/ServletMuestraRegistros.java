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
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocios.Alumno;
import negocios.LeeArchivo;

@WebServlet(name = "registro", urlPatterns = {"/registro"})
public class ServletMuestraRegistros extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            ArrayList <Alumno> alumnos = new ArrayList<Alumno> ();
            int cont=0;
            String contador; 
            
            ServletContext sc= this.getServletContext();
            String path= sc.getRealPath("/WEB-INF/Promedios.txt");
            path= path.replace('\\', '/');
            alumnos = LeeArchivo.leeAlumnos(path);
            //Resetea la variable estática 
            LeeArchivo.clearCont();
            cont=LeeArchivo.getCont();
            contador= String.valueOf(cont);
            request.setAttribute("Alumnos",alumnos );
            request.setAttribute("contador", contador);
            request.getRequestDispatcher("/alumnosRegistrados.jsp").forward(request, response);
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


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
