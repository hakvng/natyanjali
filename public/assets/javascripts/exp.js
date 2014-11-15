$(document).ready(function(){

  // Hide div 2 by default
  $('#faq').slideDown("slow" , function(){});
  $('#her').hide();
  $('#and').hide();
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();  

  
  $('#button1').click(function(){ 
  $('#faq').slideDown("slow" , function(){});
  $('#her').hide();
  $('#and').hide();
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  //alert("hhhhhhhhhhhhhh")
  });

  $('#button2').click(function(){ 
      
  $('#her').slideDown("slow" , function(){});
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
  $('#and').slideDown("slow" , function(){});
  $('#enj').hide();
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  });
  
  $('#button4').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#enj').slideDown("slow" , function(){});
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  $('#odissi').hide();
  
  });
  
  
  $('#button5').click(function(){ 
  $('#enj').hide();    
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#odissi').slideDown("slow" , function(){});
  $('#manipuri').hide();
  $('#kuchipudi').hide();
  });
  
  
  $('#button6').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#kuchipudi').slideDown("slow" , function(){});
  $('#enj').hide();
  $('#odissi').hide();
  $('#manipuri').hide();
  });
  
  $('#button7').click(function(){ 
      
  $('#her').hide();
  $('#faq').hide();
  $('#and').hide();
  $('#manipuri').slideDown("slow" , function(){});
  $('#enj').hide();
  $('#odissi').hide();
  $('#kuchipudi').hide();
  });
});
