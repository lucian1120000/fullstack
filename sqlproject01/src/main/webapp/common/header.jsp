<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
    <title>테스트</title>
    </head>
    <body>
		<%
		
			String id = (String) session.getAttribute("id");
		
			if ( id != null){ //	/sqlproject01/auth/main.jsp
				if (request.getRequestURI().contains("/member")  && !id.equals("admin")) {
					out.println("<script>");
					out.print("location.href='"+request.getContextPath()+"/loginForm.jsp';");
					out.println("</script>");
				}
			}else{
				out.print("<script>");
				out.print("location.href='"+request.getContextPath()+"/loginForm.jsp';");
				out.print("</script>");
			}
		%>
    </body>
    </html>