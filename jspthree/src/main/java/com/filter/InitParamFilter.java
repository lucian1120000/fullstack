package com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
    private FilterConfig filterConfig = null;  //초기파라미터의 내용으로 변경됨.
    
    /* FilterConfig fConfig:
     * web.xml의 init-param태그로 설정한 초기파라미터를 받는 매개변수*/
    public void init(FilterConfig fConfig) throws ServletException {
        System.out.println("Filter02 초기화...");
        this.filterConfig = fConfig;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        System.out.println("Filter02 수행...");
        request.setCharacterEncoding("utf-8");
        
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        
        String param1 = filterConfig.getInitParameter("param1");
        String param2 = filterConfig.getInitParameter("param2");
        
        String message = "로그인 실패했습니다.";
        
        if (id != null && passwd != null && id.equals(param1) && passwd.equals(param2)) {
            message = "로그인 성공했습니다.";
        }
        
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();
        writer.println(message);
        
        chain.doFilter(request, response);
    }

    public void destroy() {
        System.out.println("Filter02 해제..");
        this.filterConfig = null;
    }
}
