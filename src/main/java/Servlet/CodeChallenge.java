package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CodeChallenge
 */
@WebServlet("/CodeChallenge")
public class CodeChallenge extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String salary = request.getParameter("salary");
		
		System.out.println(id);
		System.out.println(name);
		System.out.println(salary);
		
		List<String> listJstl = new ArrayList<String>();
		listJstl.add(id);
		listJstl.add(name);
		listJstl.add(salary);
		
		request.setAttribute("jstl_list", listJstl);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/PrintJstl.jsp");
		
		dispatcher.forward(request, response);
	}
}
