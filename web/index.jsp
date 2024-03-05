<%-- 
    Document   : index
    Created on : 26/11/2021, 7:43:13 a.m.
    Author     : DIDIER
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HOLA MUNDO JPA</h1>
        <form action="ServletCTO" method="POST">
            <input type="submit" name="accion" value="listaEmp">
            
        </form>
        <!--<a href="ServletCTO?accion=listaEmp">Listar Empleados</a>-->
        <c:if test="${ListaEmpleados !=null}">
        <table border="1">
            <thead>
                <tr>
                    <th>DNI</th>
                    <th>NOMBRES</th>
                    <th>TELEFONO</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="i" items="${ListaEmpleados}">
                <tr>
                    <td>${i.getDni()}</td>
                    <td>${i.getNombres()}</td>
                    <td>${i.getTelefono()}</td>
                </tr>
                
                </c:forEach>
            </tbody>
        </table>
        </c:if>
    </body>
    
</html>
