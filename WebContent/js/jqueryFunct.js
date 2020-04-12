/**
 * 
 */
$(document).ready(function(){
 $(".panel").hide();
  
  
  $(".tabb-teams").click(function(){
	
	$(".active").removeClass("active");
    $(this).addClass("active");
    $(this).next("tr").children("td.panel").addClass("active");
    
    $('.panel.active').slideToggle("fast");
   });
  
  
});