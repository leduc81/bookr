var valid = {};
var EVENTS = 'focusin focusout keyup change';

// var ZIP_CODE_PATTERN = /^\d{5}$/;
// var MOBILE_PHONE_PATTERN =  /^(0|\+33)[1-9]\d{8}$/;
// var EMAIL_PATTERN =/^([^\.@]+)(\.([^@]+))?@([^@]+)\.([^@]+)$/;



$(document).ready(function() {

  $('#submit-next').attr('disabled', true);

  // any text field filled
  $('.form-control').on(EVENTS, function(e) {
    valid[this.id] = validateField(this.id);
    validateForm();
  });

})
// method : field-validation(css_id) |-> return true if field valid, or false
function validateField(css_id) {
  content = $('#' + css_id).val();
  if ( css_id == "email" ) { regexp = "^[a-z0-9]+([_|\.|-]{1}[a-z0-9]+)*@[a-z0-9]+([_|\.|-]{1}[a-z0-9]+)*[\.]{1}[a-z]{2,6}$"; }
    else if ( css_id == "mobile_phone" ) { regexp = "^(06|07)[0-9]{8}$"; }
    else if ( css_id == "zip_code" ) { regexp = "^[0-9]{5}$"; }
    else { regexp = "."; }
  pattern = new RegExp(regexp);
  if ( pattern.test(content) ) {
    if ( $('#' + css_id).parent().hasClass('has-error') ) { $('#' + css_id).parent().removeClass('has-error'); }
    $('#' + css_id).parent().addClass('has-success');
    $('#submit-next').removeAttr('disabled');
    return true;
  } else {
    if ( $('#' + css_id).parent().hasClass('has-success') ) { $('#' + css_id).parent().removeClass('has-success'); }
    $('#' + css_id).parent().addClass('has-error');
    $('#submit-next').attr('disabled', true);
    return false;
  }
}

function allFieldsAreValid() {
  return valid['tos'] && valid['first_name'] && valid['last_name'] && valid['address'] && valid['country'] && valid['zip_code'] && valid['city'] && valid['email'] && valid['mobile_phone'];
}
