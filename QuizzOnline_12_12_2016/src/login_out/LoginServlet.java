package login_out;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connectData.ConnectDatabase;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String pre = request.getParameter("kind");
		String user = request.getParameter("user");
		String pa = request.getParameter("pass");
		//
		int stt = 0;
		try {
			ConnectDatabase connectdata = new ConnectDatabase();
			ResultSet rs = null;
			String sql = "select * from " + pre + " where id = '" + user + "'";
			rs = connectdata.GetData(sql);
			rs.next();
			//
			if (rs != null) {
				if (pa.equals(rs.getString("Password"))) {
					stt = 1;
					HttpSession session = request.getSession();
					session.setAttribute("pre", pre);
					session.setAttribute("user", user);
					session.setAttribute("pa", pa);
					session.setAttribute("name", rs.getString("HoTen"));
					session.setAttribute("dob", rs.getString("NgaySinh"));
					session.setAttribute("sex", rs.getString("GioiTinh"));
					session.setAttribute("phone", rs.getString("SDT"));
					session.setMaxInactiveInterval(60*60);
				}
			}
			if (stt == 1) {
				response.sendRedirect("MainPage.jsp");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			out.print("<script> alert('Wrong username or password!') </script>");
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.include(request, response);
		}

	}

}
