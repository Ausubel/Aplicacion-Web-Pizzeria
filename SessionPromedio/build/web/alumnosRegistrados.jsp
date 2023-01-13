
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos Registrados</title>
    </head>
    <body>
        <%@ page import="negocios.Alumno, java.util.ArrayList" %>
        <h2>Los alumnos que estan registrados son: </h2>
        <% ArrayList<Alumno> alumnos= null; 
        alumnos= (ArrayList<Alumno>)request.getAttribute("Alumnos");
        String numReg= (String) request.getAttribute("contador");
        int numRegistros= Integer.parseInt(numReg);
        %>
        <table border ="1">
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Promedio</th>
            </tr>
            
            <%--Este scriptlet hace iteración por cada objeto
            alumno de clase contenido en el ArrayList alumnos--%>
            <%
                for(Alumno alumno: alumnos)
                {
            %>
            
            <tr valign="top">
                <td><%=alumno.getNombre() %></td>
                <td><%=alumno.getApellidos() %></td>
                <td><%=alumno.getPromedio() %></td>
            </tr>
            
            <%}%>
            <% alumnos.clear();%>
          
        </table>
        <p>Numero de registros: <%=numRegistros %></p>    
        <br>
        <form action="index.jsp" method="post">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
