package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.FeedDataToDatabase;
import Dao.FetchDataFromDatabsae;
import Model.Login;


/**
 * Servlet implementation class GetAjaxData
 */
@WebServlet("/GetAjaxData")
public class GetAjaxData extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		addDataToDatabase(request, response);
		try {
			displayRegistration(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void displayRegistration(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		
		List<Login> regList = new FetchDataFromDatabsae().getData();
		
		HttpSession session = request.getSession();
		session.setAttribute("reg_list", regList);
		response.sendRedirect("PrintList.jsp");
		
	}

	private void addDataToDatabase(HttpServletRequest request, HttpServletResponse response) {
		Login login = new Login();
		login.setFname(request.getParameter("fname"));
		login.setLname(request.getParameter("lname"));
		login.setEmail(request.getParameter("email"));
		login.setPassword(request.getParameter("password"));
		login.setAddress(request.getParameter("address"));
		login.setPhone(request.getParameter("phone"));
		login.setGender(request.getParameter("gender"));
		
		new FeedDataToDatabase().dataToDatabase(login);
	}

}
