package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connectData.*;

@WebServlet("/AddNewUser")
public class AddNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddNewUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			ConnectDatabase cn=new ConnectDatabase();
			String pre,id,pa,name,dob,sex,address,phone="";
			pre= request.getParameter("pre");
			id = request.getParameter("id");
			pa=request.getParameter("pa");
			name= request.getParameter("name");
			dob=request.getParameter("dob");
			sex=request.getParameter("sex");
			address=request.getParameter("address");
			phone=request.getParameter("phone");
			String sql ="INSERT INTO `quizz`.`"+pre+"` "
					+ "(`id`, `HoTen`, `NgaySinh`, `GioiTinh`, `DiaChi`, `SDT`, `Password`)"
					+ " VALUES ('"+id+"', '"+name+"', '"+dob+"', '"+sex+"', '"+address+"', '"+phone+"', '"+pa+"')";
			int rs = cn.update(sql);
			if(rs==0){
				out.println("<script> alert('Wrong information') </script>");
			}else{
				out.println("<script> alert('Success') </script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
		rd.include(request, response);
	}

}
