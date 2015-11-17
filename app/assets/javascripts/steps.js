// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var valid = {};
var EVENTS = 'focusin focusout keyup change';

// var ZIP_CODE_PATTERN = /^\d{5}$/;
// var MOBILE_PHONE_PATTERN =  /^(0|\+33)[1-9]\d{8}$/;
// var EMAIL_PATTERN =/^([^\.@]+)(\.([^@]+))?@([^@]+)\.([^@]+)$/;



$(document).ready(function() {

  // any text field filled
  $('.radio_a').on(EVENTS, function(e) {
    //alert('lol');
    // $('.radio_a').removeClass("clicked");
    $('.radio_a').removeAttr("selected")
    // $(this).addClass("clicked");
    $(this).attr("selected");


  });

});
