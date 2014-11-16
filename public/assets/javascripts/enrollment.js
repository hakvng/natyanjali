$(document).ready(function(){

  // Hide div 2 by default
  $('#details').slideDown("slow" , function(){});
  $('#dancedetails').hide();
  $('#otherdetails').hide();
    

  
  $('#next1').click(function(){ 
  $('#otherdetails').slideDown("slow" , function(){});
  $('#details').hide();
  $('#dancedetails').hide();
  
  });
  
  $('#next2').click(function(){ 
  $('#dancedetails').slideDown("slow" , function(){});
  $('#details').hide();
  $('#otherdetails').hide();
  
  });
  
  $('#prev1').click(function(){ 
  $('#details').slideDown("slow" , function(){});
  $('#dancedetails').hide();
  $('#otherdetails').hide();
  
  });
  
  $('#prev2').click(function(){ 
  $('#otherdetails').slideDown("slow" , function(){});
  $('#details').hide();
  $('#dancedetails').hide();
  
  });
  });
  