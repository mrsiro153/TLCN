function getDetails(argument) {
	var x=document.getElementById("details");
	x.innerHTML =
	"<p>Subject: cấu trúc dữ liệu<br>Lecture: Nguyễn Nam<br>Code exam: 01245"
	+"<br>Number of quizzes: 45<br>Time: 30:00<br> date: 20/12/2016</p>";
}
function load_exam(btn){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
	document.getElementById("mainExam").innerHTML = this.responseText;
		}
	};
	/*check code exam
	var s="";
	if(haha.id.match("home")){
	s="home";
	}else if(haha.id.match("user")){
	s="manage_user";
	}else {
	s="manage_role";
	}*/
	xhttp.open("GET","student/exam.jsp", true);
	xhttp.send();
}
function loadquizz(btn){
	var x=document.getElementById("contentQizzes");
	var s="";
	if(btn.id.match("btnback")){
		s="quizz 1 <br> <input type='radio' name='kind' value='A'>010"+
	"<br> <input type='radio' name='kind' value='B'> 100 <br>"+
	"<input type='radio' name='kind' value='C'> 111 <br>"+
	"<input type='radio' name='kind' value='D'> 110<br>";
	} else {
		s="quizz 2"
	}
	x.innerHTML =s;
	clickmeee();
}
function clickmeee(){
	var liftoffTime=3;
	$('#noDays').countdown({until: liftoffTime,compact: true, format: 'HMS'});
	document.getElementById("contentQizzes").style.display = "block";
	document.getElementById("btnstartnow").style.display = "none";
	var x=document.getElementById("btngroup");
	x.style.display="block";
	setTimeout("timeout()",3500);
}
function timeout(){
	window.open("Result.jsp","","width=1000,height=700");
	window.location = ("MainPage.jsp");
}