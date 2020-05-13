$(document).ready(function(){
  $('.gallery').each(function(index) {
    $(this).find(".fancybox").attr("rel","lightbox["+index+"]");
  });

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
