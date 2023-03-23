package commons;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FilterEx2 implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Init");
		String test1 = filterConfig.getInitParameter("test1");
		String test2 = filterConfig.getInitParameter("test2");
		System.out.printf("test1=%s, test2=%s%n", test1, test2);
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("요청 필터 ex2");
		
		chain.doFilter(req, res);
		
		System.out.println("응답 필터 ex2");
	}

	@Override
	public void destroy() {
		System.out.println("destroy");
	}

	
	
}
