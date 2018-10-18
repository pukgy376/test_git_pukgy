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
                    <div class="alert alert-success"> <center><h3><span class="glyphicon glyphicon-time"></span> <strong>:: ลงเวลา ::</h3></center></strong></div>
                    <form id="formLogin"  action="down_time.jsp" method="post">   
                        &nbsp;&nbsp;<label>:: เวลา ::</label> 
                        <%= (new java.util.Date()).toString()%><br>
                        &nbsp;&nbsp;<label>:: รหัสประจำตัว ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="" type="text" class="form-control" name="lec_id" placeholder=" รหัสประจำตัว " data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                        </div>  
                        <br>
                        <div align="center"> 
                            <button type="submit" class="btn btn-success" ><span class="glyphicon glyphicon-log-in"></span> ยืนยัน </button>                          
                            <a href="frm_login.jsp" class="btn btn-danger">กลับหน้าล็อคอิน</a>
                            <hr>    
                        </div>
                        
                        
                    </form>
                </div>
            </div>
        </div>

    </div>
