<%-- 
    Document   : editar
    Created on : 17-oct-2020, 0:20:48
    Author     : Angeles Gaona
--%>

<%@page import="java.sql.SQLException"%>
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="prueba.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
         
<h1>Horario</h1>


<!-- bajas-->


<%

 Class.forName("com.mysql.jdbc.Driver");
 java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/Alumnos","root","");
try {
    String nControl = request.getParameter("nControl");
    String Campo = request.getParameter("Campo");
     String Ncampo = request.getParameter("Ncampo");
  
      java.sql.Statement miStatement=miConexion.createStatement();
            String instriccionSql= "UPDATE alumno SET "+""+Campo+""+" = "+"'"+Ncampo+"'"+" WHERE alumno.nControl = "+"'"+nControl+"'";
          

            miStatement.executeUpdate(instriccionSql);
      
     response.sendRedirect("ConsultaAlumno.jsp");

 miConexion.close();

} catch(SQLException e) {out.println(e);};


%>


</body>
</html>
