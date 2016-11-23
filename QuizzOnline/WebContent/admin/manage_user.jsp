<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="tablecontain">
  <table class="table table-hover">
    <thead>
      <tr class="info">
        <th>Name role</th>
        <th>ID user</th>
        <th>Password</th>
        <th>Name</th>
        <th>Email</th>
        <th>Creating date</th>
        <th>Tool</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Admin</td>
        <td>Super Admin</td>
        <td>dsdsds</td>
        <td>Nguyễn ADMIN</td>
        <td>adminpage@gmail.com</td>
        <td>20/11/2015</td>
        <td>
          <button class="btn btn-info" data-toggle="modal" data-target="#ModalEdit">Edit</button>
          <button class="btn btn-danger">Delete</button>
        </td>
        <!--open pop up-->
      </tr>
      <tr>
        <td>Student</td>
        <td>Nguyễn hoàng Nam</td>
        <td>my pass</td>
        <td>Nguyễn Student</td>
        <td>13110001@student.hcmute.edu.vn</td>
        <td>20/11/2015</td>
        <td>
          <button class="btn btn-info" data-toggle="modal" data-target="#ModalEdit">Edit</button>
          <button class="btn btn-danger">Delete</button>
        </td>
      </tr>
      <tr>
        <td>Lecture</td>
        <td>13131233</td>
        <td>PASS giang vien</td>.
        <td>Nguyễn Lecture</td>
        <td>lecture@gmail.com</td>
        <td>20/11/2015</td>
        <td>
          <button class="btn btn-info" data-toggle="modal" data-target="#ModalEdit">Edit</button>
          <button class="btn btn-danger" onclick="deletesomeel(this)">Delete</button>
        </td>
      </tr>
      <tr>
        <td>Exam Manager</td>
        <td>MNG exam</td>
        <td>passss</td>
        <td>Nguyễn Exam Manager</td>
        <td>ExamManager@gmail.com</td>
        <td>20/11/2015</td>
        <td>
          <button class="btn btn-info" data-toggle="modal" data-target="#ModalEdit">Edit</button>
          <button class="btn btn-danger">Delete</button>
        </td>
      </tr>
      <tr>
        <td>Quizz Manager</td>
        <td>Quizz MNG</td>
        <td>PASS QUizz</td>
        <td>Nguyễn Quizz manager</td>
        <td>QuizzManager@gmail.com</td>
        <td>20/11/2015</td>
        <td>
          <button class="btn btn-info" data-toggle="modal" data-target="#ModalEdit">Edit</button>
          <button class="btn btn-danger">Delete</button>
        </td>
      </tr>
    </tbody>
  </table>
  <button class="btn btn-primary btn-lg" style="position:relative; left:90%" data-toggle="modal" data-target="#ModalAdd">Add</button>
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
      <div class="modal-body">
        <!---->
        <label>Name role</label>
        <select>
          <option value="1">Admin</option>
          <option value="2" selected>Student</option>
          <option value="3">Lecture</option>
          <option value="4">Exam Manager</option>
          <option value="5">Quizz Manager</option>
        </select>
        <br>
        <br>
        <div>
          <label>ID user</label>
          <input class="form-control" id="inputdefault" type="text" value="dsdsdsdsd" readonly>
          <label>Password</label>
          <input class="form-control" id="inputdefault" type="text" value="dsdsdsdsd">
          <label>Name</label>
          <input class="form-control" id="inputdefault" type="text" value="Nguyễn Nam">
          <label>Email</label>
          <input class="form-control" id="inputdefault" type="text" value="123@gmail.com">
          <label>Creating Date</label>
          <input class="form-control" id="inputdefault" type="text" value="25/10/2016">
        </div>
        <!---->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
      </div>
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
        <label>Name role</label>
        <select>
          <option value="1">Admin</option>
          <option value="2" selected>Student</option>
          <option value="3">Lecture</option>
          <option value="4">Exam Manager</option>
          <option value="5">Quizz Manager</option>
        </select>
        <br>
        <br>
        <div>
          <label>ID user</label>
          <input class="form-control" id="inputdefault" type="text">
          <label>Password</label>
          <input class="form-control" id="inputdefault" type="text">
          <label>Name</label>
          <input class="form-control" id="inputdefault" type="text">
          <label>Email</label>
          <input class="form-control" id="inputdefault" type="text">
          <label>Creating Date</label>
          <input class="form-control" id="inputdefault" type="text">
        </div>
        <!---->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
      </div>
      <!--content modal-->
    </div>
  </div>
</div>
<!--End Pop up-->
<br>