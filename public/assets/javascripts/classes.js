$(document).ready(function(){

  // Hide div 2 by default
  $('#arang').slideDown("slow" , function(){});
  $('#fees').hide();
  $('#class').hide();
  $('#refun').hide();
   
	
  
  $('#button1').click(function(){ 
      
  $('#arang').slideDown("slow" , function(){});
  $('#fees').hide();
  $('#class').hide();
  $('#refun').hide();
  });
	$('#button2').click(function(){ 
      
  $('#fees').slideDown("slow" , function(){});
  $('#arang').hide();
  $('#class').hide();
  $('#refun').hide();
  });
  
  
  $('#button3').click(function(){ 
      
  $('#class').slideDown("slow" , function(){});
  $('#arang').hide();
  $('#fees').hide();
  $('#refun').hide();
  });
  
  $('#button4').click(function(){ 
      
  $('#refun').slideDown("slow" , function(){});
  $('#arang').hide();
  $('#class').hide();
  $('#fees').hide();
  });
  
  });