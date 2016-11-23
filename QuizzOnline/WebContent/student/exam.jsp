<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<h2>Cấu trúc dữ liệu</h2>
<h1 id="noDays">time</h1>
<button class="btn btn-primary" onclick="clickmeee()" id="btnstartnow">Start Quizz</button>
<div style="margin-left: 20px; background-color: rgba(144, 167, 182,0.5); border-radius:10px; height:400px; display:none;" id="contentQizzes">
	<h4>Quizz 1: cho biết 12 đổi ra số nhị phân bằng bao nhiêu ?</h4>
	<input type="radio" name="kind" value="A">010
	<br>
	<input type="radio" name="kind" value="B"> 100
	<br>
	<input type="radio" name="kind" value="C"> 111
	<br>
	<input type="radio" name="kind" value="D"> 110
	<br>
</div>
<br>
<center id="btngroup" style="display:none;">
<div class="btn-group">
	<button type="button" class="btn btn-primary btn-lg" id="btnback" onclick="loadquizz(this)">Back</button>
	<button type="button" class="btn btn-primary btn-lg" id="btnnext" onclick="loadquizz(this)">Next</button>
	<button type="button" class="btn btn-success btn-lg" id="btnoutline" data-toggle="modal" data-target="#ModalOutline">Outline</button>
</div>
</center>
<!--popup outline-->
<div class="modal fade" id="ModalOutline" role="dialog">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Your quizzes</h4>
			</div>
			<div class="modal-body">
				<!---->
				<table class="table table-hover" >
					<thead>
						<tr class="info">
							<th>Number</th>
							<th>Content</th>
							<th>Your answer</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>12 đổi ra số nhị phân là...</td>
							<td>A</td>
						</tr>
					</tbody>
				</table>
				<!---->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
			<!--content modal-->
		</div>
	</div>
</div>
<!--end out line-->