<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css" href="lecture/lecture.css">
<div class="lecturemain row">
	<div id="lectureTableSubject" class="col-md-4">
		<table class="table table-hover">
			<thead>
				<tr class="info">
					<th>Subjects</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Công nghệ phần mềm</td>
				</tr>
				<tr>
					<td>Cấu trúc dữ liệu</td>
				</tr>
				<tr>
					<td>lập trình hướng đối tượng</td>
				</tr>
			</tbody>
		</table>
		<center>
			<button class="btn btn-primary" style="margin-top: 10px;"
				onclick="window.open('lecture/NewExam.jsp')">Add
				new</button>
		</center>
	</div>
	<!-- noi dung mon hoc -->
	<div class="col-md-5 col-md-offset-1 listExam">
		<table class="table table-hover">
			<thead>
				<tr class="info">
					<th>STT</th>
					<th>Name</th>
					<th>Opening date</th>
					<th>Exam code</th>
					<th>Done!</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>lập trình số 1</td>
					<td>10/11/2016</td>
					<td>101</td>
					<td>Finished</td>
				</tr>
				<tr>
					<td>2</td>
					<td>lập trình số 2</td>
					<td>10/11/2016</td>
					<td>121</td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<button class="btn btn-primary">Modify</button>
		<button class="btn btn-primary" style="margin-left: 10px;">Delete</button>
	</div>
</div>