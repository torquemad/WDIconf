// Script to implement 'ticky Nav'


$(document).ready(function(){
  console.log("doc ready");
  //$('.main-nav').addClass('fixed');

 $(window).bind('scroll', function() {
 var navHeight = $( window ).height() - 380;
  console.log(navHeight);
  console.log($(window).scrollTop());
   if ($(window).scrollTop() > navHeight) {
     $('nav').addClass('fixed');
     console.log("if condition");
   }
   else {
      console.log("else condition");
     $('nav').removeClass('fixed');
   }
});

 $('.show-nav').on('click', function(){
  console.log("yo");
  $('nav.mobile').toggleClass('open');
 })




});


// ScrollMagic - Provides Scrolling between sections

// Init controller
var controller = new ScrollMagic.Controller({
  globalSceneOptions: {
    duration: $('section').height(),
    triggerHook: .025,
    reverse: true
  }
});


// Change behaviour of controller
// to animate scroll instead of jump
controller.scrollTo(function(target) {

  TweenMax.to(window, 0.5, {
    scrollTo : {
      y : target,
      autoKill : true // Allow scroll position to change outside itself
    },
    ease : Cubic.easeInOut
  });

});


//  Bind scroll to anchor links
$(document).on("click", "a[href^=#]", function(e) {
  var id = $(this).attr("href");

  if($(id).length > 0) {
    e.preventDefault();

    // trigger scroll
    controller.scrollTo(id);

    // If supported by the browser we can also update the URL
    if (window.history && window.history.pushState) {
      history.pushState("", document.title, id);
    }
  }

});