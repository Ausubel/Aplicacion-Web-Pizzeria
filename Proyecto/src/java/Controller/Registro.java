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
/**
 *
 * @author Jose
 */
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usu = new Usuario();
        boolean r;
        try{
            String accion = request.getParameter("btnguardar");
            if(accion.equals("Registro")){
                
                usu.setNameCustomer(request.getParameter("txtnombre"));
                usu.setLastNameCustomer(request.getParameter("txtapellido"));
                usu.setDni(Integer.parseInt(request.getParameter("txtdni")));
                usu.setAddress(request.getParameter("txtdireccion"));
                usu.setLoginEmail(request.getParameter("txtmail"));
                usu.setPhone(request.getParameter("txtcelular"));
                usu.setLoginPassword(request.getParameter("txtpassword"));
                
                r = dao.Registrar(usu);
                
                if(r){
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }else{
                    request.getRequestDispatcher("noEncontrado.jsp").forward(request, response);
                }
            }
        }catch(Exception e){
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
