package sample.filter;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 두 가지 요청 주소를 순서대로 사용해서 요청해보면서 필터의 조합을 확인하기 위한 서블릿 클래스
 * @author PC38221
 *
 */
@WebServlet({ "/sample", "/next/sample" })
public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. Encoding Filter 를 통해서 한글 설정 되서 진입
		
		// 2. request 에 속성 추가
		request.setAttribute("name", "이동희");
		
		// 3. 페이지 이동
		RequestDispatcher reqd;
		reqd = request.getRequestDispatcher("/name");
		
		reqd.forward(request, response);
	}

}
