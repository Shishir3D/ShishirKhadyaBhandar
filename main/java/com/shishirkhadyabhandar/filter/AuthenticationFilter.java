package com.shishirkhadyabhandar.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter extends HttpFilter implements Filter {
	
	private static final String PRODUCT = "/product";
	private static final String ADMIN = "/product-admin";
	private static final String LOGIN = "/login";
	private static final String REGISTER = "/register";
	private static final String	DASHBOARD = "/adminDashboard";
       
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
	        throws IOException, ServletException {
	    
	    HttpServletRequest httpRequest = (HttpServletRequest) request;
	    HttpServletResponse httpResponse = (HttpServletResponse) response;
	    String uri = httpRequest.getRequestURI();
	    
	    // This will not allow people to go to product page without logging in
	    if (uri.endsWith(PRODUCT)) {
	        HttpSession session = httpRequest.getSession(false); // Do not create new session
	        
	        // If not logged in, redirect to login
	        if (session == null || session.getAttribute("user") == null) {
	            httpResponse.sendRedirect(httpRequest.getContextPath() + LOGIN);
	            return;
	        }
	        
	        // Check role if logged in
	        String role = (String) session.getAttribute("role");
	        if ("admin".equals(role)) {
	            httpResponse.sendRedirect(httpRequest.getContextPath() + ADMIN);
	            return;
	        }
	    }
	    
	    // This will restrict people who manually try to visit /product-admin
	    if (uri.endsWith(ADMIN)) {
	        HttpSession session = httpRequest.getSession(false);
	        
	        if (session == null || session.getAttribute("user") == null || !"admin".equals(session.getAttribute("role"))) {
	            httpResponse.sendRedirect(httpRequest.getContextPath() + PRODUCT);
	            return;
	        }
	    }
	    
	    // This will restrict people who manually try to visit /adminDashboard
	    if (uri.endsWith(DASHBOARD)) {
	        HttpSession session = httpRequest.getSession(false);
	        
	        if (session == null || session.getAttribute("user") == null || !"admin".equals(session.getAttribute("role"))) {
	            httpResponse.sendRedirect(httpRequest.getContextPath() + PRODUCT);
	            return;
	        }
	    }
	    
	    // If logged in user clicks on login they will be redirected to home
	    if (uri.endsWith(LOGIN)) {
	        HttpSession session = httpRequest.getSession(false); // Do not create new session
	        
	        // If not logged in, redirect to login
	        if (session != null && session.getAttribute("user") != null) {
                httpResponse.sendRedirect(httpRequest.getContextPath() + PRODUCT);
                return;
	        }
	    }
	    
	    // If user is logged in, redirect to /product
	    if (uri.endsWith(REGISTER)) {
	        HttpSession session = httpRequest.getSession(false); // Do not create new session
	        
	        // If logged in redirect to /product
	        if (session != null && session.getAttribute("user") != null) {
	            httpResponse.sendRedirect(httpRequest.getContextPath() + PRODUCT);
                return;
	        }	     
	    }
	    


	    
	    // Continue the filter chain
	    chain.doFilter(request, response);
	}
}
