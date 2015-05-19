// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();



function initialize() {
  var mapCanvas = document.getElementById('Map-canvas');
  var myLatlng = new google.maps.LatLng(-37.818266, 144.962388);

  var mapOptions = {
    center: new google.maps.LatLng(-37.818266, 144.962388),
    zoom: 16,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  var map = new google.maps.Map(mapCanvas, mapOptions)

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Hello World!'
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

// Phil's Slide Script

$(document).ready(function(){

  // side animation toggle
  function sliderToggle() {
    $($(this).attr('data-slider-page')).animate({width:'toggle'}, 300);
  }

  // els w/ .slider-toggle draws slide target from data
  $('.slider-toggle').on('click', sliderToggle);

});



// hover effect in Speaker section

$(function() {

  $(' #thumbs > li ').each( function() { $(this).hoverdir({
    hoverDelay : 75
  }); } );

});


// FAQ accordian

$('.accordion-trigger').on('click', function() {
    $('.accordion-content').removeClass('content-open');
    // cache the link so you don't have to keep getting a jQuery object
    var triggerDOM = $(this);
    // if closed
    if(triggerDOM.hasClass('closed')) {
      triggerDOM.removeClass('closed').addClass('open');
      triggerDOM.next().addClass('content-open');
    // if open
    } else if(triggerDOM.hasClass('open')) {
      triggerDOM.removeClass('open').addClass('closed');
      triggerDOM.next().removeClass('content-open');
      console.log("closed now");
    }

    
});

