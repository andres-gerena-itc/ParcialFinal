<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>

<form action="guardarCicla.jsp" method="post">
    Color: <input type="text" name="Color"/><br><br>
    Marca: <input type="text" name="Marca"/><br><br>
    Pais: <input type="text" name="Pais"/><br><br>
    Codigo: <input type="text" name="Codigo"/><br><br>
    Material: <input type="text" name="Material"/><br><br>
    Precio Dia: <input type="text" name="PrecioDia"/><br><br>
    Fecha Prestamo: <input type="text" name="Prestamo"/><br><br>
    Fecha Entrega: <input type="text" name="Entrega"/><br><br>
    <input type="submit" value="Agregar Bici"/>
</form>





