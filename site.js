$(function() {

  $('header').on('mouseenter', function(e) {
    console.log('here')
    $('#info').fadeIn(600);
  });

  $('header').on('mouseleave', function(e) {
    console.log('here')
    $('#info').fadeOut(400);
  });


});