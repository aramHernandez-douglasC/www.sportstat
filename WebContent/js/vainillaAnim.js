/*
 var x = document.getElementById("myBtn");
if (x.addEventListener) {     // For all major browsers, except IE 8 and earlier
  x.addEventListener("click", myFunction);
} else if (x.attachEvent) {   // For IE 8 and earlier versions
  x.attachEvent("onclick", myFunction);
}

*/

const carousel = document.querySelector('.carousel');
const slider = document.querySelector('.slider');

const next = document.querySelector('.next');
const prev = document.querySelector('.prev');
let direction;


//Check for browser compatibility
if(next.addEventListener){
	
	next.addEventListener('click',  function (){directionNegative()});
	prev.addEventListener('click', function() {directionPositive()});
	slider.addEventListener('transitionend', function() {appendElement()}, false);
}
else if (next.attachEvent){
	next.attachEvent('onclick',  function (){directionNegative()});
	prev.attachEvent('onclick', function() {directionPositive()});
	slider.attachEvent('transitionend', function() {appendElement()}, false);
}

setInterval(function(){directionNegative()}, 5000);

//Functions for carousel Right
function directionNegative(){
	  direction = -1;
	  carousel.style.justifyContent = 'flex-start';
	  slider.style.transform = 'translate(-20%)'; 
}
// left
function directionPositive(){
	if (direction === -1) {
	    direction = 1;
	    slider.appendChild(slider.firstElementChild);
	  }
	  carousel.style.justifyContent = 'flex-end';    
	  slider.style.transform = 'translate(20%)'; 
}

function appendElement(){
	 // get the last element and append it to the front
	  
	  if (direction === 1) {
	    slider.prepend(slider.lastElementChild);
	  } else {
	    slider.appendChild(slider.firstElementChild);
	  }
	  
	  slider.style.transition = 'none';
	  slider.style.transform = 'translate(0)';
	  setTimeout(() => {
	    slider.style.transition = 'all 0.5s';
	  })
}

