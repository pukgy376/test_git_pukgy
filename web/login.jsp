<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //รับค่าจากหน้าล็อกอินมาเก็บไว้ในตัวแปร

            String lec_id = request.getParameter("lec_id");
            String lec_password = request.getParameter("lec_password");
            //เชื่อมต่อฐานข้อมูล
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sw_01", "root", "12345678");
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from lecture where lec_id='" + lec_id + "' and lec_password='" + lec_password + "'");
           
            
            
            //ตรวจสอบว่ามี username กับ password หรือไม่
            
//            int role = 2;
            if (rs.next()) {
                
                session.setAttribute("lec_id", lec_id);
                
                if(rs.getInt("role") == 2){
                    session.setAttribute("lec_id", lec_id);
                    response.sendRedirect("showcus.jsp");
                }else if(rs.getInt("role") == 1){
                    session.setAttribute("lec_id", lec_id);
                    response.sendRedirect("show.jsp");
                }
//                out.println("welcome " + userid);
//                out.println("<a href='logout.jsp'>Log out</a>");
//                response.sendRedirect("show.jsp");
            } else {
//                out.println("Invalid password <a href='frm_login.jsp'>try again</a>");
                response.sendRedirect("frm_login.jsp");
            }
        %>
    </body>
</html>
