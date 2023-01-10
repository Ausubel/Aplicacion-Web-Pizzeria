package controller;

import com.sql.Sql;
import java.awt.Color;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;

public class ServletBarras extends HttpServlet {

    private CategoryDataset generaDatos() {

        String sql = "SELECT departamento,COUNT(provincia) " +
                "FROM departamentos INNER JOIN provincias " +
                "ON departamentos.idDepartamento=" +
                "provincias.idDepartamento " +
                "GROUP BY departamento " +
                "ORDER BY departamento";
        List list = Sql.consulta(sql);
        DefaultCategoryDataset dataset =
                new DefaultCategoryDataset();

        for (int fil = 1; fil < list.size(); ++fil) {
            String[] fila = (String[]) list.get(fil);
            String departamento = fila[0];
            double ctasProvincias =
                    Double.valueOf(fila[1]).doubleValue();
            dataset.addValue(ctasProvincias, departamento,
                    departamento);
        }

        return dataset;
    }

    private JFreeChart generaGrafico(final CategoryDataset dataset) {
        JFreeChart jfc = ChartFactory.createBarChart3D(
                "Cantidad de Provincias en Departamentos del Perú",
                null, // título X inferior
                "Cantidad de Provincias", // range axis label
                dataset, // data
                PlotOrientation.HORIZONTAL, // orientation
                false, // include legend
                true, // tooltips
                false // urls
                );

        // configuración adicional
        CategoryPlot plot = jfc.getCategoryPlot();
        plot.setBackgroundPaint(Color.WHITE);
        plot.setRangeGridlinePaint(Color.GRAY);

        return jfc;
    }

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        //--------------------------------------------------
        CategoryDataset dataset = generaDatos();
        JFreeChart jfc = generaGrafico(dataset);
        ChartUtilities.writeChartAsJPEG(out, jfc, 600, 700);
        //--------------------------------------------------
        out.close();
    }

    // <editor-fold defaultstate="collapsed" desc="métodos doGet y doPost creados por NetBeans">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
   