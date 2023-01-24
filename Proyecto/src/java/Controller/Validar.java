/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Usuario;
import Model.UsuarioDAO;
import Controller.Controlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JAMT
 */
public class Validar extends HttpServlet {

    UsuarioDAO dao = new UsuarioDAO();
    Usuario usu = new Usuario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        /*processRequest(request, response);*/
        String accion = request.getParameter("btningresar");    /*btn(nombre del boton que realiza la accion)*/
        if(accion.equalsIgnoreCase("Ingresar")){
            String loginEmail = request.getParameter("txtcuenta");
            String loginPassword = request.getParameter("txtpassword");
            usu = dao.validar(loginEmail, loginPassword);
            //Condicionm
            if(usu.getLoginEmail()!=null){
                //Enviamos datos
                request.setAttribute("usuario", usu);
                request.getRequestDispatcher("Controlador?accion=sesion").forward(request, response);
            }else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            
        }else{
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        
        
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
