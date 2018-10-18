<%-- 
    Document   : down_time
    Created on : Sep 27, 2018, 2:21:44 PM
    Author     : Pukgy
--%>
<%@page import="java.sql.*" %>
<%@page import="com.mysql.jdbc.exceptions.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <script src="Bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        %>

        <%
            //รับค่าตัวแปรที่ส่งมาจากฟอร์ม
            int sl_id = 0;
            String lec_id = request.getParameter("lec_id");

            //out.print("ที่ส่งมา="+user_address);
            try {

                //ขั้นตอนเชื่อมต่อฐานข้อมูล //ด้านในนี้คือภาษาjsp ด้านนอกจะเป็นphp//
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
                Statement stmt = conn.createStatement();
//                int time_status = 2;

                String sql = "SELECT * from timeset where id_time=152142";
                ResultSet rs = conn.createStatement().executeQuery(sql);
                if (rs.next()) {
                    if (rs.getInt("time_status") == 1) {

                        PreparedStatement pstmt = conn.prepareStatement("INSERT INTO signlecture (sl_id,lec_id,sl_date) VALUES (?,?,?)");
                        pstmt.setInt(1, sl_id);
                        pstmt.setString(2, lec_id);
                        pstmt.setTimestamp(3, new java.sql.Timestamp(new java.util.Date().getTime()));
                        pstmt.executeUpdate();
                   
                        response.sendRedirect("frm_success.jsp");
                    } else if (rs.getInt("time_status") == 2) {
                        response.sendRedirect("frm_fale.jsp");
//                        response.sendRedirect("frm_downtime.jsp");
                    }

//                if (stmt.executeUpdate(sql) != -1) {
//                    out.print("บันทึกข้อมูลเรียบร้อย");
//                    out.print("<a href='frm_login.jsp'> :: ต่อไป ::</a>");
//                } else {
//                    out.print("บันทึกข้อมูลไม่ได้");
//                }
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>   

    </body>
</html>
