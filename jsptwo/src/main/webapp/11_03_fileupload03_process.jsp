<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,javax.servlet.*"%>
<!-- 
필요한 패키지들
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
-->
<!DOCTYPE html><html><head><title>File Upload</title></head>
<body>
	<%
		response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
		String path = "C:\\upload";
		File targetDir = new File(path); 
		
		// 디렉토리가 없을 경우 생성하기
		if(!targetDir.exists())  targetDir.mkdirs(); 
		
		//요청 객체에서 요청 정보 가져옴. HttpServletRequest객체를 사용해야만 한다.
// 		HttpServletRequest req = (HttpServletRequest) pageContext.getRequest();
		
		//파일 쓰기할 객체 만들기
        PrintWriter writer = response.getWriter();
		
        //요청정보의 Content-Type 가져오기 : multipar/form-data ~~~~
        String contentType = request.getContentType();
        
        if (contentType != null &&  contentType.toLowerCase().startsWith("multipart/")) {
     		// getParts()를 통해 Body에 넘어온 데이터들을 각각의  Part로 쪼개어 리턴
			Collection<Part> parts = request.getParts();
			
            for (Part part : parts) {
        		String contType = part.getContentType();
        		writer.println("파라미터 명 : "+part.getName()+"<br>");
        		writer.println("contentType : "+ contType +"<br>");
        		writer.println("파일 크기 : "+ part.getSize()+"Byte<br>");
 
 				//파일인 경우만 끌고 옮
                if  (part.getHeader("Content-Disposition").contains("filename=")) {
                    String fileName =  part.getSubmittedFileName();
//                     File f = new File(path + File.separator  + fileName);
                    
                    if (part.getSize() > 0) {
                    	writer.print("업로드 파일 명 : "+ fileName + "<br>");
                    	writer.print("File.separator: "+File.separator + "<br><br>");
                    	
                    	//실제 파일이 저장되는 시점. //새파일이름을 설정하지 않으면 기존 파일로 덮어쓰기 됨.
                        part.write(path + File.separator  + fileName);
                        part.delete();
                        //임시저장된 파일 데이터를 제거함.
                        //HTTP요청이 처리되고 나면 자동으로 제거되지만 그 전에 
                        //메모리나 디스크 자원을 아끼기 위해 수동으로 제거해준다.
                    }
                } else { //그외 전달된 파라미터들
                    String formValue =  request.getParameter(part.getName());
                    writer.println("name : "+ part.getName()+", value: "+formValue + "<br>");
                }
            } //for문 종료 중괄호
            writer.println("<hr><p>업로드 완료</p>");
        } else {
        	writer.println("<h1>enctype이 multipart/form-data가  아닙니다.</h1>");
        }
		
	%>
</body>
</html>






