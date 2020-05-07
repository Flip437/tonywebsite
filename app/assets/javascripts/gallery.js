$(document).ready(function(){

  console.log($('a[rel="lightbox[index]"]').length);
  console.log($('.pt-5').length);



  $('.pt-5').each(function(index) {
    console.log($(this).find('thumb').
  });





  $('a[rel="lightbox[index]"]').each(function(index) {
    console.log(index);
    $( this ).attr('rel','lightbox['+index+']');
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
