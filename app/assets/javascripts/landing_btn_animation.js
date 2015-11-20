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
  $("#login-modal").on("shown.bs.modal", function() {
    $(this).find("input.email").focus();
  });
  $("#signUp").find("#user_email").focus();
});

