//INITIALIZE BUTTON
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



//ADD TEAMS 
var btn = document.getElementsByClassName("addBtn");
var x;
for (x = 0; x < btn.length; x++) {
	 btn[x].onclick = function() {		 
		 var team = this.id;
		 addServletCom(team);	
	 }
	 
}

//DELETE TEAM
var del = document.getElementsByClassName("delete-team");
var x;
for (x = 0; x < del.length; x++) {
	 del[x].onclick = function() {		 
		 var teamT = this.id;
		 deleteServletCom(teamT);	
	 }
	 
}

//AJAX REQUEST TO SERVLET
function addServletCom(team){
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {	       
	    	window.location = "sample.jsp"
	     }
	  };
	  
	  //for this AJAX request to work, is NECESSARY 
	  //that you change the /ProjectCont/Track...
	  //for the current folder in which you are working 
	  xhttp.open("POST", "TrackingServlet?teamParam=" + team + "&mode=add", true);
	  xhttp.send();
}

function deleteServletCom(team){
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {	       
	    	window.location = "sample.jsp"
	     }
	  };
	  
	  //for this AJAX request to work, is NECESSARY 
	  //that you change the /ProjectCont/Track...
	  //for the current folder in which you are working 
	  
	  xhttp.open("POST", "TrackingServlet?teamParam=" + team + "&mode=delete", true);
	  xhttp.send();
}

//SEARCH BAR



