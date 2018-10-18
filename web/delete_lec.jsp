<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.exceptions.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      String sql ="delete from lecture where lec_id =" +request.getParameter("lec_id");
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
      Statement stmt = conn.createStatement();
      
      if (stmt.executeUpdate(sql)!= -1){
          response.sendRedirect("show_lec.jsp");
      }
      %> 
        
    </body>
</html>