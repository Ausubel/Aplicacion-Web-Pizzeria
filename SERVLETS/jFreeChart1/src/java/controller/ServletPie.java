/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import java. awt.Color;

import java.io. IOException;
import java.io.OutputStream;


import javax.servlet.ServletException;

import javax.servlet. http. HttpServletRequest;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;

import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.PieDataset;




@WebServlet(name = "Pie", urlPatterns = {"/Pie"})
public class ServletPie extends HttpServlet {
    private PieDataset generaDatos(){
        DefaultPieDataset datos = new DefaultPieDataset();

        datos.setValue("Java",40D);
        datos.setValue("ASP", 15D);
        datos.setValue("PHP", 35D);
        datos.setValue("Otros",10D);

        return datos;
    }
        

        private JFreeChart generaGrafico (PieDataset piedataset) {

        JFreeChart jfreechart = ChartFactory.createPieChart3D(
        "Torta", piedataset,
        true, true, false);

        PiePlot3D pieplot3d = (PiePlot3D) jfreechart.getPlot ();
        pieplot3d.setBackgroundPaint (Color. WHITE);
        pieplot3d.setForegroundAlpha (0.5F);
        pieplot3d.setOutlineVisible (false);

        return jfreechart;


        }


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("image/jpeg");
        OutputStream out =response.getOutputStream();
        
        PieDataset pieDataset = generaDatos ();
        JFreeChart grafico = generaGrafico (pieDataset) ;
        ChartUtilities.writeChartAsJPEG (out, grafico, 400, 300);
        
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
