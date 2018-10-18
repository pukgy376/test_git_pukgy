<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
            Statement stmt = conn.createStatement();

            String time_status = request.getParameter("time_status");
            String id_time = request.getParameter("id_time");
              String sql = "UPDATE timeset SET id_time = '" + id_time + "' "
                    + ",time_status = '" + time_status + "' "
                    + " WHERE id_time = '" + id_time + "' ";
            if (stmt.executeUpdate(sql) != -1) {
//                out.print("แก้ไขข้อมูล <br>");
//                out.print("<a href=show_lec.jsp>กลับหน้าหลัก</a>");
                response.sendRedirect("edittimeset.jsp");
            }else{
                out.print("ไม่สามารถแก้ไขข้อมูลได้");
            }
        %>   
    </body>
</html>
