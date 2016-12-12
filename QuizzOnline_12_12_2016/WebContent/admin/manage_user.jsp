<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="admin.Getuser"%>
<%@ page import="java.sql.*"%>

<div class="tablecontain">
	<script>
		function editUser() {
			alert("fdsfs");
		}
	</script>
	<table class="table table-hover" id="mytable1">
		<thead>
			<tr class="info">
				<th>Name role</th>
				<th>ID user</th>
				<th>Name</th>
				<th>Date of birth</th>
				<th>Sex</th>
				<th>Address</th>
				<th>phone number</th>
				<th>Tool</th>
			</tr>
		</thead>
		<tbody>
			<%
				Getuser gs = new Getuser();
				String[] table = { "admin", "nguoiradethi", "quantrikythi", "quantringanhang", "sinhvien" };
				String sql = "select * from ";
				for (int i = 0; i < 5; i++) {
					ResultSet rs = gs.getalluser(sql + table[i]);
					if (rs != null) {
						while (rs.next()) {
			%>
			<tr>
				<td><%=table[i]%></td>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("HoTen")%></td>
				<td><%=rs.getString("NgaySinh")%></td>
				<td><%=rs.getString("GioiTinh")%></td>
				<td><%=rs.getString("DiaChi")%></td>
				<td><%=rs.getString("SDT")%></td>
				<td>
					<button class="btn btn-info" data-toggle="modal"
						data-target="#ModalEdit" onclick="editUser(this)">Edit</button>
					<button class="btn btn-danger" data-toggle="modal"
						data-target="#ModalDelete" onclick="deleteUser(this)">Delete</button>
				</td>
				<%
					}
						}
					}
				%>
			</tr>
		</tbody>
	</table>
	<button class="btn btn-primary btn-lg"
		style="position: relative; left: 90%" data-toggle="modal"
		data-target="#ModalAdd">Add</button>
</div>
<!-- Pop up edit user -->
<div class="modal fade" id="ModalEdit" role="dialog">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Details Information</h4>
			</div>
			<form action="editUser" method="post">
			<div class="modal-body">
				<!---->
				<div>
				
					<label>Role</label> 
					<input class="form-control" id="edtRole" type="text" value="admin" name="role" readonly>
					<label>ID user</label> 
					<input class="form-control" id="edtId" type="text" value="dsdsdsdsd" name="id" readonly>
					<label>Password</label>
					<input class="form-control" id="edtPa" type="text" value="dsdsdsdsd" name="pa">
					<label>Name</label>
					<input class="form-control" id="edtName" type="text" value="Nguyễn Nam" name="name"> 
					<label>Date of birth</label> 
					<input class="form-control" id="edtDob" type="text" value="25/10/2016" name="dob"> 
					<label>Sex</label>
					<input class="form-control" id="edtSex" type="text" value="25/10/2016" name="sex">
					<label>Address</label>
					<input class="form-control" id="edtAddress" type="text" value="25/10/2016" name="address">
					<label>Phone number</label>
					<input class="form-control" id="edtPho" type="text" value="25/10/2016" name="phone">
				
				</div>
				<!---->
			</div>
			<div class="modal-footer">
				<center><button type="submit" class="btn btn-default">Save</button></center>
			</div>
			</form>
			<!--content modal-->
		</div>
	</div>
</div>
<!--End Pop up-->

<!-- Pop up AddUser -->
<div class="modal fade" id="ModalAdd" role="dialog">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Add new User</h4>
			</div>
			<div class="modal-body">
				<!---->
				<form action="addnewuser" method="post">
					<select name="pre">
						<option value="admin">Admin</option>
						<option value="sinhvien">Student</option>
						<option value="nguoiradethi">Lecture</option>
						<option value="quantrikythi">Exam Manager</option>
						<option value="quantringanhang">Bank Manager</option>
					</select>
					<div>
						<label>ID user</label> <input class="form-control"
							id="inputdefault" type="text" name="id"> <label>Password</label>
						<input class="form-control" id="inputdefault" type="text"
							name="pa"> <label>Name</label> <input
							class="form-control" id="inputdefault" type="text" name="name">
						<label>Date of birth</label> <input class="form-control"
							id="inputdefault" type="text" name="dob"> <label>Sex</label>
						<input class="form-control" id="inputdefault" type="text"
							name="sex"> <label>Address</label> <input
							class="form-control" id="inputdefault" type="text" name="address">
						<label>Phonenumber</label> <input class="form-control"
							id="inputdefault" type="text" name="phone">
					</div>
					<center>
						<button type="submit" style="margin-top: 20px">Save</button>
					</center>
				</form>
				<!---->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
			<!--content modal-->
		</div>
	</div>
</div>
<!--End Pop up-->
<br>
<!-- model delete -->
<div class="modal fade" id="ModalDelete" role="dialog">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Add new User</h4>
			</div>
			<div class="modal-body">
				<!---->
				<form action="deleteuser" method="post">
					<h3>Do you truly want to delete it? </h3>
					<label>ID user</label>
					<input type="text" id="delId" class="form-control" name="id" readonly>
					<label>Role</label>
					<input type="text" id="delRole" class="form-control" name="role" readonly>
					<center>
						<button type="submit" style="margin-top: 20px" class="btn btn-primary">OK</button>
					</center>
				</form>
				<!---->
			</div>
			<!--content modal-->
		</div>
	</div>
</div>
