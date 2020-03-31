var myNodelist = document.getElementsByClassName("btnPlace");
var teamName = document.getElementsByClassName("teamName");

var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("i");
  span.setAttribute('class', 'fas fa-plus-circle')
  var button = document.createElement("button");
  button.setAttribute('id', teamName[i].innerText );
  button.className = "addBtn";
  button.appendChild(span);
  myNodelist[i].appendChild(button);
}

//adding functionality 2 the button
var btn = document.getElementsByClassName("addBtn");
var x;
for (x = 0; x < btn.length; x++) {
	 btn[x].onclick = function() {
		 var team = this.id;
		 servletCom(team);	
	 }
	 
}

function servletCom(team){
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	      console.log(this.responseText);
	    	//document.getElementById("demo").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("POST", "http://localhost:8080/ProjectCont/TrackingServlet?teamParam=" + team, true);
	  xhttp.send();
}
/*
 * var toServer = myJSONObject.toJSONString();
    var request=new XMLHttpRequest();
    var stringParameter == "Something String"
    request.open("POST", "http://localhost:7001/APToolbar/Main_servlet?stringParameter="+stringParameter , true);
    request.send(toServer);
 * 
 *function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "demo_get2.asp?fname=Henry&lname=Ford", true);
  xhttp.send();
} 
 */
