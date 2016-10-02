$(document).ready(function(){


  $('#ghost').hide(20000).delay(500).fadeIn(8000);
  $('#spirit').hide(20000).delay(500).fadeIn(8000);
  $('#ghost').delay(1000).animate({height: '200px'}, 300);
  $('#spirit').delay(1000).animate({height: '200px'}, 300);
  $('#ghost').delay(400).animate({bottom: '1150px'}, 300).animate({height: '100px'}, 300);
  $('#spirit').delay(400).animate({bottom: '1150px'}, 300).animate({height: '100px'}, 300);

});



$(document).ready(function(){


$("p").mouseover(function () {
            $(this).css('color', 'white');
    
         }).mouseout(function () {
            $(this).css('color', 'black');
        });



});



