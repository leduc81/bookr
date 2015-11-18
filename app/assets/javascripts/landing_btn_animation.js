$(document).ready(function() {
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 950) {
      $(".landing-btn").css("margin-top", "-70px");
    }
    else {
      $(".landing-btn").css("margin-top", "0px");
    }
  });
  // $('.login-modal').modal('hide')
});


