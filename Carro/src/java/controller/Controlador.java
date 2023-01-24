/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import model.Carrito;
import model.Producto;
import model.ProductoDAO;

/**
 *
 * @author usuario
 */
public class Controlador extends HttpServlet {

   ProductoDAO pdao=new ProductoDAO();
   Producto p=new Producto();
   List<Producto> productos=new ArrayList<>();
   
   List<Carrito> listaCarrito=new ArrayList<>();
   int item;
   double totalPagar=0.0;
   int cantidad=1;
   
   int idp;
   Carrito car;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        productos=pdao.listar();
            switch (accion) {
                case "Comprar":
                    totalPagar=0.0;
                    int idp=Integer.parseInt(request.getParameter("id"));
                    p=pdao.listarId(idp);
                    item=item+1;
                    Carrito car=new Carrito();
                    car.setItem(item);
                    car.setIdProducto(p.getId());
                    car.setNombres(p.getNombres());
                    car.setDescripcion(p.getDescripcion());
                    car.setPrecioCompra(p.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad*p.getPrecio());
                    listaCarrito.add(car);
                    for (int i=0;i<listaCarrito.size();i++){
                        totalPagar=totalPagar+listaCarrito.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("carrito", listaCarrito);
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("carrito.jsp").forward(request, response);
                    
                    break;
                case "AgregarCarrito":
                    int pos=0;
                    cantidad=1;
                    idp=Integer.parseInt(request.getParameter("id"));
                    p=pdao.listarId(idp);
                    if(listaCarrito.size()>0){
                        for (int i=0;i<listaCarrito.size();i++){
                            if(idp==listaCarrito.get(i).getIdProducto()){
                                pos=i;
                            }
                            
                        }
                        if(idp==listaCarrito.get(pos).getIdProducto()){
                            cantidad=listaCarrito.get(pos).getCantidad()+cantidad;
                            double subtotal=listaCarrito.get(pos).getPrecioCompra()*cantidad;
                            listaCarrito.get(pos).setCantidad(cantidad);
                            listaCarrito.get(pos).setSubTotal(subtotal);       
                        }else{
                            item=item+1;
                            car=new Carrito();
                            car.setItem(item);
                            car.setIdProducto(p.getId());
                            car.setNombres(p.getNombres());
                            car.setDescripcion(p.getDescripcion());
                            car.setPrecioCompra(p.getPrecio());
                            car.setCantidad(cantidad);
                            car.setSubTotal(cantidad*p.getPrecio());
                            listaCarrito.add(car);
                        }
                        
                    }else{
                        item=item+1;
                        car=new Carrito();
                        car.setItem(item);
                        car.setIdProducto(p.getId());
                        car.setNombres(p.getNombres());
                        car.setDescripcion(p.getDescripcion());
                        car.setPrecioCompra(p.getPrecio());
                        car.setCantidad(cantidad);
                        car.setSubTotal(cantidad*p.getPrecio());
                        listaCarrito.add(car);
                    }
                    
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                    break;
                case "Delete":
                    int idproducto=Integer.parseInt(request.getParameter("idp"));
                        for (int i = 0; i <listaCarrito.size(); i++) {
                              if(listaCarrito.get(i).getItem()==idproducto){
                                    listaCarrito.remove(i);
                              }
                        }
                        
                         request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
                        
   
                    break;  
                case "ActualizarCantidad":
                    int idpro=Integer.parseInt(request.getParameter("idp"));
                    int cant=Integer.parseInt(request.getParameter("Cantidad"));
                    for (int i=0;i<listaCarrito.size();i++){
                        if(listaCarrito.get(i).getIdProducto()==idpro){
                            listaCarrito.get(i).setCantidad(cant);
                            double st=listaCarrito.get(i).getPrecioCompra()*cant;
                            listaCarrito.get(i).setSubTotal(st);
                        }    
                    }
                    
                    break;
                case "Carrito":
                    totalPagar=0.0;
                    request.setAttribute("carrito", listaCarrito);
                    for (int i=0;i<listaCarrito.size();i++){
                        totalPagar=totalPagar+listaCarrito.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.getRequestDispatcher("carrito.jsp").forward(request, response);        
                    break;
                default:
            request.setAttribute("productos", productos);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
   
    
    }
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
