
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@include file="header.jsp" %>
<%
//เชื่อมฐานข้อมูล
    String sql = "select * from lecture where lec_id=" + request.getParameter("lec_id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
//ตรวจสอบ
    if (rs.next()) {

%>
<div class="container">
    <div id="login" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">


                <div class="alert alert-info"><center><h3><span class="glyphicon glyphicon-log-in"></span> <strong>:: ข้อมูลส่วนบุคคล ::</h3></center></strong></div><hr>
                <form id="formLogin" class="form" action="update_lec.jsp" method="post" role="form">   
                    <input hidden="" name="lec_id" value="<%=rs.getString("lec_id")%>">
                    <input hidden="" name="role" value="<%=rs.getString("role")%>">
                    <label>:: รหัสประจำตัว ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="lec_id" type="text" class="form-control" name="lec_id" value="<%=rs.getString("lec_id")%>" disabled="disabled"  data-toggle="tooltip" data-placement="top" title="Inserire l'username" required="">
                    </div>  

                    <label>:: รหัสเข้าสู่ระบบ ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="lec_password" type="text" class="form-control" name="lec_password" value="<%=rs.getString("lec_password")%>"  data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                    </div>  
                    <label>:: ชื่อ-สกุล ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="lec_name" type="text" class="form-control" name="lec_name" value="<%=rs.getString("lec_name")%>"  data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                    </div>   

                    <label>:: สาขา ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="lec_major" type="text" class="form-control" name="lec_major" value="<%=rs.getString("lec_major")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                    </div>   

                    <label>:: เบอร์โทรศัพท์ ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                        <input id="lec_phone" type="text" class="form-control" name="lec_phone" value="<%=rs.getString("lec_phone")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                    </div>

                    <label>:: อีเมล ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                        <input id="lec_email" type="text" class="form-control" name="lec_email" value="<%=rs.getString("lec_email")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">

                    </div>

                    <div align="center"> 
                        <button type="submit" onclick="return confirm('คุณต้องการบันทึกข้อมูลใช่หรือไม่?')" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> บันทึกข้อมูล</button>
                        <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-log-in"></span> ยกเลิกการแก้ไข </button></div><hr>

                </form> 
                <%
                    }
                %>
            </div>
        </div>
    </div>

</div>
