<%-- 
    Document   : show
    Created on : Sep 12, 2018, 2:23:42 PM
    Author     : Pukgy
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <script src="Bootstrap/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //ติดต่อฐานข้อมูล
            //request.setCharacterEncoding("UTF-8"); //ตัวอ่านภาษาไทยของJSP
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
            Statement stmt = conn.createStatement();
            //ดึงข้อมูลจากตารางมาเก็บไว้
            String sql = "SELECT * from timeset where id_time=152142";
            ResultSet rs = conn.createStatement().executeQuery(sql);
            //แสดงผลข้อมูล
            while (rs.next()) {
                //Vacharใช้getNString
        %>

        <div class="container">
            <div id="login" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">


                        <div class="alert alert-info"><center><h3><span class="glyphicon glyphicon-log-in"></span> <strong>:: กำหนดการลงเวลา ::</h3></center></strong></div><hr>
                        <form id="formLogin" class="form" action='updatetimeset.jsp' method='POST' role="form"> 
                            <input hidden="" name="id_time" value="<%=rs.getString("id_time")%>">
                            <label>:: แก้ไขเวลาการลงเวลา ::</label> 

                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                                <!--<input id="lec_email" type="text" class="form-control" name="time_status" value="<%=rs.getString("time_status")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">-->
                                <select name="time_status" class="form-control" >
                                    <option value="<%=rs.getString("time_status")%>"><%=rs.getString("time_status")%></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                                    
                                    <label><label style="color: red">*</label> 1 คือ <label style="color: black">เปิดการลงเวลา</label></label> <br>
                                    <label><label style="color: red">*</label> 2 คือ <label style="color: black">ปิดการลงเวลา</label></label> 

                            <div align="center"> 
                                <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> บันทึกการแก้ไข </button>
                                <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-log-in"></span> ยกเลิกการแก้ไข </button></div><hr>

                        </form> 

                    </div>
                </div>
            </div>

        </div>
    </center>
    <br>	
    <%
        }
    %>
</body>
</html>
