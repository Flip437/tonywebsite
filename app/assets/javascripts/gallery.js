$(document).ready(function(){

  $('a[rel="lightbox[1]"]').attr('rel','lightbox[2]');


  $(".fancybox").fancybox({
    openEffect: "none",
    closeEffect: "none"
  });
    
  $(".zoom").hover(function(){
  
    $(this).addClass('transition');
  }, function(){
        
    $(this).removeClass('transition');
  });

});
