package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connectData.ConnectDatabase;


@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteUser() {
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
		PrintWriter out=response.getWriter();
		String role,id="";
		role=request.getParameter("role");
		id=request.getParameter("id");
		System.out.println(role+id);
		try{
			ConnectDatabase cn = new ConnectDatabase();
			String sql="DELETE FROM `quizz`.`"+role+"` WHERE `id`='"+id+"';";
			int rs = cn.update(sql);
			if(rs==0){
				out.println("<script> alert('Can not delete') </script>");
			}else{
				out.println("<script> alert('Delete Success') </script>");
			}
		}catch(Exception e){		
		}
		RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
		rd.include(request, response);
		
	}

}
