$(function() {

  $("#paris-map").on('click', 'a', function(e) {
    e.preventDefault();
    var arrondissement = $(this).data('arr');
    $("#candidate_dossier_zip").val(arrondissement);
    $(".validate-zip").click();
  })
});
