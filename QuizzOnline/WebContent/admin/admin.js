function opentab(evt,thisbutton) {
  var tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" w3-blue", "");
  }
  evt.currentTarget.className += " w3-blue";
  loadDoc2(thisbutton);
}
function loadDoc2(haha) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("container1").innerHTML = this.responseText;
    }
  };
  var s="";
  if(haha.id.match("home")){
      s="home";
  }else if(haha.id.match("user")){
    s="manage_user";
  }else {
    s="manage_role";
  }
  xhttp.open("GET","admin/"+s+".jsp", true);
  xhttp.send();
}
function deletesomeel(x){
  x.parentElement.style.display = 'none';
}