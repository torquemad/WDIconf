_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

//--------------------------------------

var speakers = new Speakers([
  new Speaker({name: 'John Doe', title: 'ANIMATION WITH JAVASCRIPT', image_url: 'http://www.fillmurray.com/g/300/200', time: '10:00 - 10:30'}),
  new Speaker({name: 'Chris Lambert', title: 'SUPER PROGRAMMING', image_url: 'http://www.fillmurray.com/g/302/200', time: '11:00 - 11:30'}),
  new Speaker({name: 'DT', title: 'WHY DT IS AWESOME', image_url: 'http://www.fillmurray.com/g/300/201', time: '12:00 - 12:30'})
]);

var speakersView = new SpeakersView({model: speakers});
speakersView.render();