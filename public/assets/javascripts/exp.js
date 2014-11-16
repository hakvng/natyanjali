$(document).ready(function(){

  // Hide div 2 by default
  $('#faq').slideDown("2000" , function(){});
  $('#her').hide();
  $('#and').hide();
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();  

  
  $('#button1').click(function(){ 
  $('#faq').slideDown("2000" , function(){});
  $('#her').hide();
  $('#and').hide();
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  //alert("hhhhhhhhhhhhhh")
  });

  $('#button2').click(function(){ 
      
  $('#her').slideDown("2000" , function(){});
  $('#faq').hide();
  $('#and').hide();
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  }); 
  
  $('#button3').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').slideDown("2000" , function(){});
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  });
  
  $('#button4').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#enj').slideDown("2000" , function(){});
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  
  });
  
  
  $('#button5').click(function(){ 
  $('#enj').hide();    
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#odissi').slideDown("2000" , function(){});
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  });
  
  
  $('#button6').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#kuchipudi').slideDown("2000" , function(){});
  $('#enj').hide();
  $('#odissi').hide();
  $('#manipuri').hide();
  });
  
  $('#button7').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#manipuri').slideDown("2000" , function(){});
  $('#enj').hide();
  $('#odissi').hide();
  $('#kuchipudi').hide();
  });
});
