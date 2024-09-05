package com.filter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

//@WebFilter(
//		urlPatterns = { "/18_01_filter02_process.jsp" }, 
//		initParams = { 
//				@WebInitParam(name = "filename", value = "monitor.log")
//		})
public class LogFileFilter implements Filter {
	PrintWriter writer;
//	FileWriter writer;
	String filename; // null
	String realpath = "C:\\log\\";

//	FilterConfig fConfig => n / "filename" / v: "monitor.log"

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("Filter02_2 초기화...");
		File f = new File(realpath);
		if (!f.exists()) {
			f.mkdirs();
		}

		filename = fConfig.getInitParameter("filename");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter02_2 doFilter()...");
		if (filename == null)
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		try {
			writer = new PrintWriter(new FileWriter(realpath + filename, true), true);
//			writer = new FileWriter(realpath + filename, true);
		} catch (Exception e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
		writer.write("현재일시 : " + getCurrentTime() + " \n");
		String clientAddr = request.getRemoteAddr();
		writer.write("클라이언트 주소 : " + clientAddr + " \n");
		String contentType = request.getContentType();
		writer.write("문서의 콘텐츠 유형 : " + contentType + " \n");
		writer.write("------------------------------------------------\n");

		chain.doFilter(request, response);

		writer.printf("현재일시 : %s %n", getCurrentTime());
		clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n , clientAddr");
		writer.printf("문서의 콘텐츠 유형 : " + contentType + " \n");
		writer.printf("------------------------------------------------\n");

		writer.close();
	}

	public void destroy() {
		try {
			writer.write("destroy( )메소드 호출.filter객체해제");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}
