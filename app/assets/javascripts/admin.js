$(document).ready(function(){

  $( ".boutton" ).hover(
    function() {
      $( this ).append( $( "<span> ***</span>" ) );
    }, function() {
      $( this ).find( "span" ).last().remove();
    }
  );

});
