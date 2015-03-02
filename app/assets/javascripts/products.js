$(document).ready(function() {
  $('#search_form').submit(function(event) {
    event.preventDefault();

    var searchValue = $('#search').val();

$.getScript('/products?search=' + searchValue);

  });

});

$(document).ready(function(){
$('#cart_wrapper').on('click',function(){
  $('#showcart').show( function(){    
  });
 });
 }); 



// $(document).ready(function() {
//   $('.button_to').submit(function(event) {
//     event.preventDefault();

//     var itemValue = $('#line_item').val();

// $.getScript('/carts/cart');

//   });
//   //);
//  });

// //('click', 