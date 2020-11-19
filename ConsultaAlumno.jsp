<%-- 
    Document   : ConsultaMaestro
    Created on : 16-oct-2020, 8:59:59
    Author     : Angeles Gaona
--%>


<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 
<html>
    <head>
       <meta charset="utf-8">
<link href="prueba.css" rel="stylesheet" type="text/css">
<title>Documento sin título</title>

</head>
<body>
<h1>Horario</h1>
<table width="25%">
    <tr>
        <td colspan="2" align="center">
          <form action="reporte_de_Alumno.html" method="get">
          <input type="submit" name="button" id="button" value="Insertat Horario">
          </form>
      
      </td>
<td colspan="2" align="center">
          <form action="irEditar.html" method="get">
          <input type="submit" name="button" id="button" value="Editar Horario">
          </form>
      
      </td>
      <td colspan="2" align="center">
          <form action="irBorrar.html" method="get">
          <input type="submit" name="button" id="button" value="Borrar Horario">
          </form>
      
      
    </tr>
      
<%
try
{
   // Conexion con bd
  Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/Alumnos","root","");
            if (!miConexion.isClosed())
   {
      // La consulta
      Statement st = miConexion.createStatement();
      ResultSet rs = st.executeQuery("SELECT * FROM alumno");
 

      // Ponemos los resultados en un table de html
      out.println("<table border=\"1\">"
              +"<td><label>Numero de Control</label></td>"
              +"<td><label>Nombre</label></td>"
              +"<td><label>Curso</label></td>"
              +"<td><label>Sementre</label></td>"
             );
      while (rs.next())
      {
         out.println("<tr>");
         
         out.println("<td>"+rs.getObject("nControl")+"</td>");
         out.println("<td>"+rs.getObject("Nombre")+"</td>");
         out.println("<td>"+rs.getObject("Curso")+"</td>");
         out.println("<td>"+rs.getObject("Semestre")+"</td>");
         out.println("</tr>");
      }
      out.println("</table>");

      // cierre de la conexion
      miConexion.close();
   }
   else
      // Error en la conexion
      out.println("fallo");
}
catch (Exception e)
{
   // Error en algun momento.
   out.println("Excepcion "+e);
   e.printStackTrace();
}
%>

</table>
</body>
</html>