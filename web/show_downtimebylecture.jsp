<%-- 
    Document   : show_downtime
    Created on : Sep 27, 2018, 7:02:32 PM
    Author     : Pukgy
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <script src="Bootstrap/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header_main.jsp" %>
    <center>  <h2>:: ข้อมูลการลงเวลา ::</h2></center>
    <br>
    <table class="table table-hover">

        <thead>
            <tr>
                <th scope="col">รหัสประจำตัว</th> 
                <th scope="col">ชื่อ-สกุล</th>
                <th scope="col">สาขา</th>
                <th scope="col">เวลาลงชื่อ</th>

            </tr>

        </thead>

        <tbody>
            <%
                //ติดต่อฐานข้อมูล
                Object strUserID = session.getAttribute("lec_id");
                if (strUserID == null) // Check Login
                {
//                    response.sendRedirect("login.jsp");
                }
                //request.setCharacterEncoding("UTF-8"); //ตัวอ่านภาษาไทยของJSP
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
                Statement stmt = conn.createStatement();
                //ดึงข้อมูลจากตารางมาเก็บไว้
//                String sql = "SELECT signlecture.sl_id,signlecture.lec_id,lecture.lec_name,lecture.lec_major,signlecture.sl_date FROM signlecture INNER JOIN lecture ON signlecture.lec_id = lecture.lec_id";
               // String sql = "SELECT signlecture.sl_id,signlecture.lec_id,lecture.lec_name,lecture.lec_major,signlecture.sl_date FROM signlecture INNER JOIN lecture ON signlecture.lec_id = lecture.lec_id WHERE signlecture.lec_id ='" + strUserID.toString() + "' ";
                String sql = "SELECT signlecture.sl_id,signlecture.lec_id,lecture.lec_name,lecture.lec_major,signlecture.sl_date FROM signlecture INNER JOIN lecture ON signlecture.lec_id = lecture.lec_id WHERE signlecture.lec_id ='"+strUserID.toString()+"' ORDER BY signlecture.sl_date DESC ";
                ResultSet rs = conn.createStatement().executeQuery(sql);
                //แสดงผลข้อมูล
                while (rs.next()) {
                    //Vacharใช้getNString
            %>
            <tr>
                <td><%=rs.getString("lec_id")%></td>
                <td><%=rs.getString("lec_name")%></td>
                <td><%=rs.getString("lec_major")%></td>
                <td><%=rs.getString("sl_date")%></td>    
                <!--                <td>
                                    <a href="edit_lec.jsp?lec_id=<%=rs.getString("lec_id")%>"class="btn btn-primary">แก้ไขข้อมูล</a>
                                    <a class="btn btn-danger" onclick="return confirm('คุณต้องการลบใช่หรือไม่?')" href="delete_lec.jsp?lec_id=<%=rs.getString("lec_id")%>">ลบข้อมูล</a>
                                </td>-->
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>
