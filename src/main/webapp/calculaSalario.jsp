<%-- 
    Document   : calculaSalario.jsp
    Created on : 18-ene-2021, 20:14:16
    Author     : DAW-A
--%>

<%--@page import="Clases.Empleado"--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="empleado" class="Clases.Empleado"/>
        <%
            double salarioBruto = Double.parseDouble(request.getParameter("salarioBruto"));
        %>
        <jsp:setProperty name="empleado" property="salario" value="<%= salarioBruto %>"/>
        <h1>Retención del empleado/a</h1>
        <p>La retención es del: <jsp:getProperty name="empleado" property="salario"/> %.</p>
        <p>La retención es del: <jsp:getProperty name="empleado" property="retencion"/> %.</p>
        <p>El salario neto es de: <jsp:getProperty name="empleado" property="salarioNeto"/> €.</p>
    </body>
</html>
