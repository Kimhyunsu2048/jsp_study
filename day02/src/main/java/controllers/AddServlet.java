package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		int num3 = Integer.parseInt(num1) + Integer.parseInt(num2);
		
		PrintWriter out = resp.getWriter();
		out.printf("%s + %s = %d", num1, num2, num3);
	}
	
}
