<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%--<%@include file="header_main.jsp" %>--%>
<div class="container">
    <div id="login" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">

                <div class="bg bg-success" >
                <div class="alert alert-success"> <center><h3><span class="glyphicon glyphicon-log-in"></span> <strong>:: เข้าสู่ระบบ ::</h3></center></strong></div>
                
                <form id="formLogin"  action="login.jsp" method="post">   

                    <div class=""> <label>:: เข้าสู่ระบบ ::</label> </div>
                    <div style="margin-bottom: 12px" class="input-group"> 
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="lec_id" type="text" class="form-control" name="lec_id" onKeyUp="if (isNaN(this.value)) {alert('กรุณากรอกตัวเลข');this.value = ''; }" value="" placeholder="ชื่อผู้ใช้งาน" data-toggle="tooltip" data-placement="top" title="Inserire l'username" required="">
                    </div>  

                    <label>:: รหัสผ่าน ::</label> 
                    <div style="margin-bottom: 12px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="lec_password" type="password" class="form-control" name="lec_password" placeholder=" รหัสผ่าน " data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                    </div>  
                    <br>
                    <div align="center"> 
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> Login </button>
                        <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-log-out"></span> Cancle </button></div>
                        <hr>
                        
                        <div>
                            <center> <a href="frm_lec.jsp" class="btn btn-info"><span class="glyphicon glyphicon-book"></span> ลงทะเบียนใหม่ </a> 
                                <a href="frm_downtime.jsp" class="btn btn-success"><span class="glyphicon glyphicon-time"></span> ลงเวลา </a></center>   </div><br>
                            
                
            
                </form>
                </div>
            </div>
        </div>
    </div>

</div>
 