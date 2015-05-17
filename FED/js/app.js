// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();



function initialize() {
  var mapCanvas = document.getElementById('map-canvas');
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