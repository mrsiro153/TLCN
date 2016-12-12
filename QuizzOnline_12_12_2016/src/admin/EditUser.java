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

@WebServlet("/EditUser")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditUser() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String role,id,pa,name,dob,sex,address,phone="";
		PrintWriter out=response.getWriter();
		role=request.getParameter("role");
		id=request.getParameter("id");
		pa=request.getParameter("pa");
		name=request.getParameter("name");
		dob=request.getParameter("dob");
		sex=request.getParameter("sex");
		address=request.getParameter("address");
		phone=request.getParameter("phone");
		System.out.println(role+" "+id+" "+pa+" "+name+" "+dob+" "+sex+" "+address+" "+phone);
		try{
			ConnectDatabase cn=new ConnectDatabase();
			String sql="UPDATE `quizz`.`"+role+"` SET "
					+ "`HoTen`='"+name+"', "
					+ "`NgaySinh`='"+dob+"', "
					+ "`GioiTinh`='"+sex+"', "
					+ "`DiaChi`='"+address+"', "
					+ "`SDT`='"+phone+"', "
					+ "`Password`='"+pa+"' "
					+ "WHERE `id`='"+id+"';";
			int rs = cn.update(sql);
			if(rs==0){
				out.println("<script> alert('Wrong user') </script>");
			}else{
				out.println("<script> alert('Success') </script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
		rd.include(request, response);
	}

}
