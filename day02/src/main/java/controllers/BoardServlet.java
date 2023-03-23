package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board")
public class BoardServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("board/form.jsp");
		rd.forward(req, resp);
		
		/**
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<form method='post' action='board'>");
		out.print("제목 : <input type='text' name='subject'><br>");
		out.print("내용 : <textarea name='content'></textarea>");
		out.print("<button type='submit'>작성하기</button>");
		out.print("</form>");
		*/
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.printf("<h1>%s</h1>", subject);
		out.printf("<div>%s</div>", content);
	}
	


}
