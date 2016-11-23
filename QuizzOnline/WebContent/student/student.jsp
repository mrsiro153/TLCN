<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="student/student1.css">
<script type="text/javascript" src="timer1.js"></script>
<script type="text/javascript" src="timer2.js"></script>
<script type="text/javascript" src="student/student.js"></script>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!---->
<div class="exam_content" id="mainExam"><!--quizzes 'll show here-->
	<h2 style="margin-left: 20px;">Your subjects</h2>
	<div class="subject">
		<div class="detailsinfor">
			<h2 id="details">
			</h2>
		</div>
		<table class="table table-hover">
			<thead>
				<tr class="info">
					<th>Subject</th>
					<th>Lecture</th>
					<th>Code exam</th>
					<th>Numbers</th>
					<th>Time</th>
					<th>Score</th>
					<th>Tool</th>
				</tr>
			</thead>
			<tbody>
				<tr class="info1">
					<td>Công Nghệ Phần mềm</td>
					<td>nguyễn Nam</td>
					<td>01234</td>
					<td>45</td>
					<td>30:00</td>
					<td>null</td>
					<td>
						<button class="btn btn-primary" onclick="load_exam(this)">Start</button>
						<button class="btn btn-info" onclick="getDetails(this)">details</button>
					</td>
				</tr>
				<tr class="info1">
					<td>Cấu trúc dữ liệu và giải thuật</td>
					<td>Nguyễn Hoàng Nguyên Thanh</td>
					<td>01234</td>
					<td>45</td>
					<td>30:00</td>
					<td>null</td>
					<td>
						<button class="btn btn-primary" onclick="load_exam(this)">Start</button>
						<button class="btn btn-info">details</button>
					</td>
				</tr>
				<tr class="info1">
					<td>Cơ sở dữ liệu</td>
					<td>Nguyễn Thành Sơn</td>
					<td>01234</td>
					<td>45</td>
					<td>30:00</td>
					<td>null</td>
					<td>
						<button class="btn btn-primary" onclick="load_exam(this)">Start</button>
						<button class="btn btn-info">details</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="nofitication">
	<h2 style="display:inline;">Your Name</h2>
	<button class="btn btn-primary" style="margin-left:50%;">log out</button>
	<center><img src="http://img.v3.news.zdn.vn/w660/Uploaded/qjyyf/2014_01_19/558090_1401888076721499_86365383_n_1.jpg" class="img-circle" width="200" height="200"></center>
</div>
<!---->