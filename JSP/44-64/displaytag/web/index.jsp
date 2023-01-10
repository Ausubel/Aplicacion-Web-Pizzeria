<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <style type="text/css" media="all">
            @import url("css/maven-base.css");
            @import url("css/maven-theme.css");
            @import url("css/site.css");
            @import url("css/screen.css");
        </style>
        <title>displaytag</title>
    </head>
    <body>
        <sql:query var="result" scope="request"
                   dataSource="jdbc/peru_MySQL">
            SELECT departamento, provincia, distrito
            FROM departamentos INNER JOIN provincias
            ON departamentos.idDepartamento=provincias.idDepartamento
            INNER JOIN distritos
            ON provincias.idProvincia=distritos.idProvincia
        </sql:query>

        <div style="text-align: center;">
            <display:table name="requestScope.result.rows"
                           pagesize="10" size="100" export="true">
                <display:column property="departamento"
                                title="Departamento" sortable="true"
                                headerClass="sortable" group="1"/>
                <display:column property="provincia" sortable="true"
                                headerClass="sortable" group="2"/>
                <display:column property="distrito" sortable="true"
                                headerClass="sortable" />

                <display:setProperty name="export.pdf"
                                     value="true" />
            </display:table>
        </div>
    </body>
</html>

