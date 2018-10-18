<%
session.setAttribute("lec_id", null);
session.invalidate();
response.sendRedirect("frm_login.jsp");
%>