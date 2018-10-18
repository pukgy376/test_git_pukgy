<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body topmargin="0" leftmargin="0">
        

        
            <table width="100%">
           <tr>
                <td width="100%" height="90%" colspan="0" bordercolor="#CCCCCC">
            
                    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                        <tr>
                            <td><input name="image" type="image" src="img/head_admin.jpg" align="top" width="100%" height="150" border="0"></td>
                        </tr>
                       
                        <tr>
                            <td bordercolor="#993300" bgcolor="#99FFFF"  >
                                <div align="right" class="style1" >
                                    <a href="show.jsp" class="btn btn-default">ข้อมูลส่วนตัว</a> 
                                    <a href="show_lec.jsp" class="btn btn-default">จัดการข้อมูล</a>
                                    <a href="show_downtime.jsp" class="btn btn-default">ข้อมูลการลงเวลา</a>
                                    <a href="edittimeset.jsp" class="btn btn-default">กำหนดเวลาการลงเวลา</a>
                                    <a href="logout.jsp" class="btn btn-default">ออกจากระบบ</a> 
                                   

                                </div>                   
                            </td>
                          
                        </tr>
                    </table>
                </td>
               
            </tr> 
        </table>
        
        
    </body>
 
</html>
