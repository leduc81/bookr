// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function copyToClipboard(text) {
  window.prompt("Copier le lien suivant:", text);
}

$(document).ready(function() {
  var clip = new ZeroClipboard($(".my_clip_button"))
});
