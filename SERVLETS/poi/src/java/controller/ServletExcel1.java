package controller;

import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class ServletExcel1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/vnd.ms-excel");
        HSSFWorkbook wb = new HSSFWorkbook();       // crea libro
        HSSFSheet sheet = wb.createSheet("Alumnos");// crea hoja

        HSSFRow row1 = sheet.createRow(0);			// crea fila1
        HSSFCell a1 = row1.createCell(0);			// crea A1
        HSSFCell b1 = row1.createCell(1);			// crea B1

        a1.setCellValue(new HSSFRichTextString("Alumno"));
        b1.setCellValue(new HSSFRichTextString("Nota"));

        HSSFCellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_RIGHT);
        b1.setCellStyle(cellStyle);

        HSSFRow row2 = sheet.createRow(1);			// crea fila2
        row2.createCell(0).setCellValue(
                new HSSFRichTextString("Juan"));	// A2
        row2.createCell(1).setCellValue(16);		// B2

        HSSFRow row3 = sheet.createRow(2);			// crea fila3
        row3.createCell(0).setCellValue(
                new HSSFRichTextString("Ana"));		// A3
        row3.createCell(1).setCellValue(14);		// B3

        HSSFRow row4 = sheet.createRow(3);			// crea fila4
        row4.createCell(0).setCellValue(
                new HSSFRichTextString("Luis"));	// A4
        row4.createCell(1).setCellValue(18);		// B4

        HSSFRow row5 = sheet.createRow(4);			// crea fila5
        row5.createCell(0).setCellValue(
                new HSSFRichTextString("Promedio"));// A5
        row5.createCell(1).setCellFormula("Average(B2:B4)");

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


