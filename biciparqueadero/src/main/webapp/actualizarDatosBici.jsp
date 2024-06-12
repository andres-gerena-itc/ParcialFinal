<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>

<form action="actualizarBici.jsp" method="post">
    ID: <input type="text" name="id"/><br><br>
    Color: <input type="text" name="Color"/><br><br>
    Material: <input type="text" name="Material"/><br><br>
    <input type="submit" value="Actualizar datos"/>
</form>