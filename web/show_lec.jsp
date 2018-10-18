<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>แสดงข้อมูลลูกค้า</title>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <script src="Bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>
    <center>  <h2>:: ข้อมูล ::</h2></center>
    <br>
    <table class="table table-hover">

        <thead>
            <tr>
                <th scope="col">รหัสประจำตัว</th> 
                <th scope="col">รหัสเข้าระบบ</th>
                <th scope="col">ชื่อ-สกุล</th>
                <th scope="col">สาขา</th>
                <th scope="col">เบอร์โทรศัพท์</th>
                <th scope="col">อีเมล</th> 
                <th scope="col">จัดการ</th>

            </tr>

        </thead>

        <tbody>
            <%
                //ติดต่อฐานข้อมูล
                //request.setCharacterEncoding("UTF-8"); //ตัวอ่านภาษาไทยของJSP
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
                Statement stmt = conn.createStatement();
                //ดึงข้อมูลจากตารางมาเก็บไว้
                String sql = "Select * from lecture";
                ResultSet rs = conn.createStatement().executeQuery(sql);
                //แสดงผลข้อมูล
                while (rs.next()) {
                    //Vacharใช้getNString
%>
            <tr>
                <td><%=rs.getString("lec_id")%></td>
                <td><%=rs.getString("lec_password")%></td>
                <td><%=rs.getString("lec_name")%></td>
                <td><%=rs.getString("lec_major")%></td>
                <td><%=rs.getString("lec_phone")%></td>
                <td><%=rs.getString("lec_email")%></td>    
                <td>
                    <a href="edit_lec.jsp?lec_id=<%=rs.getString("lec_id")%>"class="btn btn-primary">แก้ไขข้อมูล</a>
                    <a class="btn btn-danger" onclick="return confirm('คุณต้องการลบใช่หรือไม่?')" href="delete_lec.jsp?lec_id=<%=rs.getString("lec_id")%>">ลบข้อมูล</a>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>
