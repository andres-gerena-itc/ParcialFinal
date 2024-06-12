<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Información bicis</title>
</head>
<body>

	<p>CONEXIÓN A BD</p>

	<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/biciparqueadero_pipe" user="dba"
		password="123456789.eT" />

	<sql:query dataSource="${dbSource}" var="bicis">
    SELECT * FROM ciclas;
</sql:query>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Color</th>
        <th>Marca</th>
        <th>Pais</th>
        <th>Codigo</th>
        <th>Material</th>
        <th>Precio Dia</th>
        <th>Fecha Prestamo</th>
        <th>Fecha Entrega</th>
    </tr>
    <c:forEach var="row" items="${bicis.rows}">
        <tr>
            <td>${row.id}</td>
            <td>${row.color}</td>
            <td>${row.marca}</td>
            <td>${row.pais}</td>
            <td>${row.codigo}</td>
            <td>${row.material}</td>
            <td>${row.precio_dia}</td>
            <td>${row.fecha_prestamo}</td>
            <td>${row.fecha_entrega}</td>
        </tr>
    </c:forEach>
</table>

<a href="agregarCicla.jsp">Agrega un nuevo item.</a> <br>
<a href="actualizarDatosBici.jsp">Actualizar.</a> <br>
<a href="eliminarBiciColor.jsp">Eliminar Bici.</a>

</body>
</html>