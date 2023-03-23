package commons;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Libary {
	
	public static void alertError(HttpServletResponse response, Exception e) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.printf("<script>alert('%s');</script>", e.getMessage());
	}
	
	public static void reload(HttpServletResponse response, String target) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.printf("<script>%s.location.reload();</script>", target);
	}
	
	public static void reload(HttpServletResponse response) throws IOException {
		reload(response, "self");
	}
	
}
