$(document).ready(function() {
  $('#search_form').submit(function(event) {
    event.preventDefault();

    var searchValue = $('#search').val();

$.getScript('/products?search=' + searchValue);

  });
 });

