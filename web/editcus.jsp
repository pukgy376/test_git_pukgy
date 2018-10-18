<%-- 
    Document   : show
    Created on : Sep 12, 2018, 2:23:42 PM
    Author     : Pukgy
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header_main.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <script src="Bootstrap/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
       <!-- <%
            Object strUserID = session.getAttribute("lec_id");
            if (strUserID == null) // Check Login
            {
                response.sendRedirect("login.jsp");
            }

            Connection con = null;
            Statement s = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");

                con = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");

                s = con.createStatement();

                String sql = "SELECT * FROM lecture WHERE lec_id = '" + strUserID.toString() + "' ";

                ResultSet rec = s.executeQuery(sql);
                if (rec.next()) {
        %>
       -->

        <div class="container">
            <div id="login" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">


                        <div class="alert alert-info"><center><h3><span class="glyphicon glyphicon-log-in"></span> <strong>:: ข้อมูลส่วนบุคคล ::</h3></center></strong></div><hr>
                        <form id="formLogin" class="form" action='updatecus.jsp' method='POST' role="form"> 
                            <input hidden="" name="lec_id" value="<%=rec.getString("lec_id")%>">
                            <input hidden="" name="role" value="<%=rec.getString("role")%>">
                         
                            <label>:: รหัสประจำตัว ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="lec_id" type="text" class="form-control" name="lec_id" value="<%=rec.getString("lec_id")%>" disabled="disabled" data-toggle="tooltip" data-placement="top" title="Inserire l'username" required="">
                            </div>  

                            <label>:: รหัสเข้าสู่ระบบ ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="lec_password" type="text" class="form-control" name="lec_password" value="<%=rec.getString("lec_password")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                            </div>  
                            <label>:: ชื่อ-สกุล ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="lec_name" type="text" class="form-control" name="lec_name" value="<%=rec.getString("lec_name")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                            </div>   

                            <label>:: สาขา ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="lec_major" type="text" class="form-control" name="lec_major" value="<%=rec.getString("lec_major")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                            </div>   

                            <label>:: เบอร์โทรศัพท์ ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                                <input id="lec_phone" type="text" class="form-control" name="lec_phone" value="<%=rec.getString("lec_phone")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                            </div>

                            <label>:: อีเมล ::</label> 
                            <div style="margin-bottom: 12px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                                <input id="lec_email" type="text" class="form-control" name="lec_email" value="<%=rec.getString("lec_email")%>" data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                            </div>

                               <div align="center"> 
                                   
                        <button type="submit" onclick="return confirm('คุณต้องการแก้ไขข้อมูลใช่หรือไม่?')" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> บันทึกการแก้ไข </button>                        
                        <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-log-in"></span> ยกเลิกการแก้ไข </button></div><hr>

                        </form> 
        
                    </div>
                </div>
            </div>

        </div>
    </center>
    <br>	
    <%} %>
    <%
        }
        catch (Exception e

        
            ) {
            // TODO Auto-generated catch block
            out.println(e.getMessage());
            e.printStackTrace();
        }

        
            try {
            if (s != null) {
                s.close();
                con.close();
            }
        }
        catch (SQLException e

        
            ) {
            // TODO Auto-generated catch block
            out.println(e.getMessage());
            e.printStackTrace();
        }
    %>
</body>
</html>
