<%@page import="java.sql.*" %>
<%@page import="com.mysql.jdbc.exceptions.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header_main.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>บันทึกข้อมูล</title>
    </head>   
    <body>

        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        %>

        <%
            //รับค่าตัวแปรที่ส่งมาจากฟอร์ม
            String lec_id = request.getParameter("lec_id");
            String lec_password = request.getParameter("lec_password");
            String lec_name = request.getParameter("lec_name");
            String lec_major = request.getParameter("lec_major");
            String lec_phone = request.getParameter("lec_phone");
            String lec_email = request.getParameter("lec_email");
            String role = request.getParameter("role");
            //out.print("ที่ส่งมา="+user_address);
            try {

                //ขั้นตอนเชื่อมต่อฐานข้อมูล //ด้านในนี้คือภาษาjsp ด้านนอกจะเป็นphp//
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
                Statement stmt = conn.createStatement();
                //เพิ่มข้อมูลลงในตาราง
                String sql = "INSERT INTO lecture(lec_id,lec_password,lec_name,lec_major,lec_phone,lec_email,role)"
                        + "values ('" + lec_id + "','"
                        + lec_password + "','"
                        + lec_name + "','"
                        + lec_major + "','"
                        + lec_phone + "','"
                        + lec_email + "','"
                        + role + "')";
                //ตรวจเช็คผลการบันทึกข้อมูล
                if (stmt.executeUpdate(sql) != -1) {
                    out.print("บันทึกข้อมูลเรียบร้อย");
                    out.print("<a href='frm_login.jsp'> :: ต่อไป ::</a>");
                } else {
                    out.print("บันทึกข้อมูลไม่ได้");
                }

            } catch (Exception e) {
                out.print(e);
            }
        %>   

    </body>
</html>

