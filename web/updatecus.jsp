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

            String lec_id = request.getParameter("lec_id");
            String lec_password = request.getParameter("lec_password");
            String lec_name = request.getParameter("lec_name");
            String lec_major = request.getParameter("lec_major");
            String lec_phone = request.getParameter("lec_phone");
            String lec_email = request.getParameter("lec_email");
            String role = request.getParameter("role");
            
              String sql = "UPDATE lecture SET lec_password = '" + lec_password + "' "
                    + ",lec_name = '" + lec_name + "' "
                    + ",lec_major = '" + lec_major + "' "
                    + ",lec_phone = '" + lec_phone + "' "
                    + ",lec_email = '" + lec_email + "' "
                    + ",role = '" + role + "' "
                    + " WHERE lec_id = '" + lec_id + "' ";
            if (stmt.executeUpdate(sql) != -1) {
//                out.print("แก้ไขข้อมูล <br>");
//                out.print("<a href=show_lec.jsp>กลับหน้าหลัก</a>");
                response.sendRedirect("showcus.jsp");
            }else{
                out.print("ไม่สามารถแก้ไขข้อมูลได้");
            }
        %>   
    </body>
</html>
