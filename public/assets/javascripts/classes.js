$(document).ready(function(){

  // Hide div 2 by default
  $('#arang').slideDown("2000" , function(){});
  $('#fees').hide();
  $('#class').hide();
  $('#refun').hide();
   
	
  
  $('#button1').click(function(){ 
      
  $('#arang').slideDown("2000" , function(){});
  $('#fees').hide();
  $('#class').hide();
  $('#refun').hide();
  });
	$('#button2').click(function(){ 
      
  $('#fees').slideDown("2000" , function(){});
  $('#arang').hide();
  $('#class').hide();
  $('#refun').hide();
  });
  
  
  $('#button3').click(function(){ 
      
  $('#class').slideDown("2000" , function(){});
  $('#arang').hide();
  $('#fees').hide();
  $('#refun').hide();
  });
  
  $('#button4').click(function(){ 
      
  $('#refun').slideDown("2000" , function(){});
  $('#arang').hide();
  $('#class').hide();
  $('#fees').hide();
  });
  
  });
