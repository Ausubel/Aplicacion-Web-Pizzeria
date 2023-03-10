/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Usuario;
import Model.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class inicioSesion extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        UsuarioDAO dao = new UsuarioDAO();
        
        Usuario usu = new Usuario();
        
        int r;
        
        try{
            String accion = request.getParameter("btningresar");
            if(accion.equals("Ingresar")){
                
                String loginEmail = request.getParameter("txtcuenta");
                String loginPassword = request.getParameter("txtpassword");
                
                usu.setLoginEmail(loginEmail);
                usu.setLoginPassword(loginPassword);
                
                r = dao.inicioSesion(usu);
                
                if(r>0){
                    if (r==1) {
                        request.getRequestDispatcher("sesion.jsp").forward(request, response)   ;// USUARIO NORMAL
                    }
                    if (r==2) {
                        request.getRequestDispatcher("estadisticas.jsp").forward(request, response);// USUARIO ROOT
                    }                    
                }else{
                    request.getRequestDispatcher("noEncontrado.jsp").forward(request, response); // FALLO
                }
            }            
        }catch(IOException | ServletException e){
            System.out.println("Error:" + e);
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        System.out.println("Ingresamos al metodo POST de MyServlet");
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
