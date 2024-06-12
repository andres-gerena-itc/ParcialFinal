<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>

<form action="eliminarBici.jsp" method="post">
    Color: <input type="text" name="Color"/><br/>
    <input type="submit" value="Eliminar Bici"/>
</form>