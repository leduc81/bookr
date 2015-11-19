$(document).ready(function() {

  $('#main-title').slideUp( 300 ).delay( 800 ).fadeIn( 400 );

  $(window).scroll(function(e){
    if ($(this).scrollTop() > 950) {
      $(".landing-btn").css("margin-top", "-70px");
    }
    else {
      $(".landing-btn").css("margin-top", "0px");
    }
  });

});


