<%-- 
    Document   : recoje_datos
    Created on : 12-oct-2020, 12:36:11
    Author     : Angeles Gaona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="prueba.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="25%">
        <%
            String nControl=request.getParameter("nControl");
            String Nombre=request.getParameter("Nombre");
              String Curso=request.getParameter("Curso");
            String Semestre=request.getParameter("Semestre");
           
             
            Class.forName("com.mysql.jdbc.Driver");
            
            java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/alumnos","root","");
            java.sql.Statement miStatement=miConexion.createStatement();
            String instriccionSql="INSERT INTO alumno (nControl, Nombre, Curso, Semestre) values ('"+nControl+"','"+Nombre+"','"+Curso+"','"+Semestre+"')";
            miStatement.executeUpdate(instriccionSql);
        %>
         <tr>
         <h3>NUEVO DATO GUARDADO </h3>
      <td colspan="2" align="center">
          <form action="ConsultaAlumno.jsp" method="get">
          <input type="submit" name="button" id="button" value="SALIR">
          </form>
      
      </td>
      
    </tr>
        </table>
    
    </body>
</html>
