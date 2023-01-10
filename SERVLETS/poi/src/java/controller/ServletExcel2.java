package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class ServletExcel2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String nota11 = request.getParameter("nota11");	// Juan
        String nota12 = request.getParameter("nota12");
        String nota13 = request.getParameter("nota13");

        String nota21 = request.getParameter("nota21");	// Ana
        String nota22 = request.getParameter("nota22");
        String nota23 = request.getParameter("nota23");

        String nota31 = request.getParameter("nota31");	// Luis
        String nota32 = request.getParameter("nota32");
        String nota33 = request.getParameter("nota33");

        response.setContentType("application/vnd.ms-excel");

        HttpServletRequestWrapper srw =
                new HttpServletRequestWrapper(request);
        String excel2 = srw.getRealPath("");
        excel2 += "/excel/alumnos.xls";

        POIFSFileSystem fs =
                new POIFSFileSystem(new FileInputStream(excel2));
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        HSSFSheet sheet = wb.getSheetAt(0);

        HSSFRow row1 = sheet.getRow(1);	// Juan
        HSSFCell b2 = row1.getCell(1);
        HSSFCell c2 = row1.getCell(2);
        HSSFCell d2 = row1.getCell(3);
        b2.setCellValue(Integer.valueOf(nota11).intValue());
        c2.setCellValue(Integer.valueOf(nota12).intValue());
        d2.setCellValue(Integer.valueOf(nota13).intValue());

        HSSFRow row2 = sheet.getRow(2);	// Ana
        HSSFCell b3 = row2.getCell(1);
        HSSFCell c3 = row2.getCell(2);
        HSSFCell d3 = row2.getCell(3);
        b3.setCellValue(Integer.valueOf(nota21).intValue());
        c3.setCellValue(Integer.valueOf(nota22).intValue());
        d3.setCellValue(Integer.valueOf(nota23).intValue());

        HSSFRow row3 = sheet.getRow(3);	// Luis
        HSSFCell b4 = row3.getCell(1);
        HSSFCell c4 = row3.getCell(2);
        HSSFCell d4 = row3.getCell(3);
        b4.setCellValue(Integer.valueOf(nota31).intValue());
        c4.setCellValue(Integer.valueOf(nota32).intValue());
        d4.setCellValue(Integer.valueOf(nota33).intValue());

        sheet.setForceFormulaRecalculation(true); // actualiza sheet

        OutputStream out = response.getOutputStream();
        wb.write(out);
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

