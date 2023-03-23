package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	

	@Override
	public void init() throws ServletException {
		System.out.println("init");
		/**설정값을 초기화*/
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		resp.setContentType("text/html; charset=utf-8");
		//resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<h1>Hello!</h1>");
		out.print("안녕하세요!");
		System.out.println("Hello!");
	}

	@Override
	public void destroy() {
		System.out.println("destroy");
		/**자원해제*/
	}
}
