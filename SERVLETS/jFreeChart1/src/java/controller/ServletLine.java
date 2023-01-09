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
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;

import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;


/**
 *
 * @author CASMA
 */
@WebServlet(name = "Line", urlPatterns = {"/Line"})
public class ServletLine extends HttpServlet {

    
     private XYDataset generaDatos () {

        XYSeries serie1 = new XYSeries ("Serie 1");
        serie1.add(1D, 2D);
        serie1.add(2D, 4D);
        serie1.add(3D, 2D);
        serie1.add(4D, 5D);
        serie1.add(5D, 5D);
        serie1.add(6D, 7D);
        serie1.add(7D, 7D);
        serie1.add(8D, 8D);

        XYSeries serie2 = new XYSeries ("Serie 2");
        serie2.add(1D, 5D);
        serie2.add(2D, 7D);
        serie2.add(3D, 6D);
        serie2.add(4D, 8D);
        serie2.add(5D, 4D);
        serie2.add(6D, 4D);
        serie2.add(7D, 2D);
        serie2.add(8D, 2D);
        
        XYSeries serie3 = new XYSeries ("Serie 3");
        serie3.add(2D, 5D);
        serie3.add(4D, 3D);
        serie3.add(5D, 1D);
        serie3.add(6D, 3D);
        serie3.add(7D, 6D);
        serie3.add(8D, 3D);
        serie3.add(9D, 4D);

        XYSeriesCollection xyseriescollection =
        new XYSeriesCollection ();
        xyseriescollection.addSeries (serie1);
        xyseriescollection.addSeries (serie2);
        xyseriescollection.addSeries (serie3);

        return xyseriescollection;
     }
     private static JFreeChart generaGrafico(XYDataset xydataset) {
        JFreeChart jfreechart = ChartFactory. createXYLineChart (
        "Lineal", "X", "Y",
        xydataset, PlotOrientation.VERTICAL,
        true, true, false);

        //configuración adicional
        XYPlot xyplot = (XYPlot) jfreechart.getPlot();
        xyplot.setBackgroundPaint (Color . white) ;
        xyplot.setDomainGridlinePaint (Color.gray) ;
        xyplot.setRangeGridlinePaint (Color .gray) ;
        XYLineAndShapeRenderer xylineandshaperenderer =
        (XYLineAndShapeRenderer) xyplot.getRenderer () ;
        xylineandshaperenderer.setBaseShapesVisible (true) ;

        return jfreechart;
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("image/jpeg");
        
        OutputStream out =response.getOutputStream();
        XYDataset xydataset =generaDatos();
        JFreeChart grafico= generaGrafico(xydataset);
        ChartUtilities.writeChartAsJPEG(out, grafico, 400,300);
        out.close();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
