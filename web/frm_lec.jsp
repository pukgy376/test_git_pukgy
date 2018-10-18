<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="Bootstrap/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
<script src="Bootstrap/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div id="login" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">

                <div class="bg bg-success">
                    <div class="alert alert-success"><center><h3><span class="glyphicon glyphicon-log-in"></span> <strong>:: ข้อมูล ::</h3></center></strong></div><hr>
                    <form id="formLogin" class="form" action='insert_lec.jsp' method='post' autocomplete="off">   
                        <input hidden="" name="role" value="2">

                        <label>:: รหัสประจำตัว ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="lec_id" type="text" class="form-control" name="lec_id" onKeyUp="if (isNaN(this.value)) {
                                        alert('กรุณากรอกตัวเลข');
                                        this.value = '';
                                    }" placeholder="กรุณาป้อนรหัสประจำตัว" data-toggle="tooltip" data-placement="top" title="Inserire l'username" required minlength="7">
                        </div>  

                        <label>:: รหัสเข้าระบบ ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="lec_id" type="password" class="form-control" name="lec_password"  placeholder="กรุณาป้อนรหัสเข้าระบบ" data-toggle="tooltip" data-placement="top" title="Inserire l'username" required minlength="7">
                        </div>  

                        <label>:: ชื่อ-สกุล ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="lec_name" type="text" class="form-control" name="lec_name" placeholder=" กรุณาป้อนชื่อ-สกุล " data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                        </div>  
                        <label>:: สาขา ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>

                            <select class="form-control form-control-lg" name="lec_major"  id="lec_major"> 
                                <option selected="" value="-1" disabled="">สาขา</option>
                                <option value="เทคโนโลยีสารสนเทศ">IT</option>
                                <option value="มัลติมิเดียร์และแอนนิเมชั่น">MTA</option>
                                <option value="การจัดการเทคโนโลยี">ITM</option>
                                <option value="คอมพิวเตอร์การสื่อสาร">CTC</option>
                                <option value="เทคโนโลยีแมพ">GIS</option>

                            </select> 

                        </div>   

                        <label>:: เบอร์โทรศัพท์ ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="lec_phone" type="text" class="form-control" name="lec_phone" placeholder=" กรุณาป้อนเบอร์โทรศัพท์ " data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                        </div>   

                        <label>:: อีเมล ::</label> 
                        <div style="margin-bottom: 12px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                            <input id="lec_email" type="text" class="form-control" name="lec_email" placeholder=" กรุณาป้อนอีเมล " data-toggle="tooltip" data-placement="top" title="Inserire la password" required="">
                        </div>
                        <br>
                        <!--                         <label>:: สถานะ ::</label> 
                                                <div style="margin-bottom: 12px" class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                                                    <select name="role" class="form-control">
                                                        <option value="1">สมาชิก</option>
                                                        <option value="2">ผู้ดูแลระบบ</option>
                                                    </select>
                                                </div>
                                                <br>-->
                        <div align="center"> 
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-log-in"></span> บันทึก </button>
                            <!--                            <button type="reset" class="btn btn-danger"><span class="glyphicon glyphicon-log-out"></span> ยกเลิก </button></div><hr>-->
                            <a href="frm_login.jsp" class="btn btn-danger">ยกเลิก</a>



                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

