<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Exam</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
div.AddNewExam {
	height: 400px;
	background-color: rgba(0, 0, 255, 0.1);
	border-radius: 10px;
	margin-top: 10px;
	padding: 5px;
}

div.SelectQuestion {
	
}

div.controls {
	
}

.btnSubmit {
	position: relative;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="col-md-8 col-md-offset-2 AddNewExam">
		<form action="ahsh" method="get">
			<div class="col-md-3">
				<select>
					<option value="mon1">Công nghệ phần mềm</option>
					<option value="mon2">Lý thuyết đồ thị</option>
				</select>
			</div>
			<div class="col-md-6 SelectQuestion">
				<table class="table table-hover">
					<thead>
						<tr class="info">
							<th>Choose part of exam</th>
							<th>Numbers</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" value="phần lý thuyết" disabled></td>
							<td><input type="number" class="form-control" name="numbers"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" value="chuong 2" disabled></td>
							<td><input type="number" class="form-control" name="numbers"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-3 controls">
				<p>Code Exam:</p>
				<input type="text" class="form-control" name="CodeExam">

				<p>Time:</p>
				<input type="number" class="form-control" name="TimeRe"
					placeholder="Time is minutes">

				<p>Opening date:</p>
				<input type="date" class="form-control" name="Datetime">

				<p>Opening Time:</p>
				<input type="time" class="form-control" name="none">
				
				<h2 style="visibility: hidden">ds</h2>
			</div>
			<br>
			<button class="btn btn-primary btn-block btnSubmit" type="submit">OK</button>
		</form>
	</div>
</body>
</html>