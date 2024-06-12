<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/biciparqueadero_pipe"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">
    INSERT INTO ciclas (color, marca, pais, codigo, material, precio_dia, fecha_prestamo, fecha_entrega) 
    VALUES ('${param.Color}', '${param.Marca}','${param.Pais}', '${param.Codigo}', '${param.Material}'
    , '${param.PrecioDia}', '${param.Prestamo}', '${param.Entrega}');
</sql:update>

<c:redirect url="/Ciclas"/>