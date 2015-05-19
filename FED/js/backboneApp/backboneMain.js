_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

//--------------------------------------

var speakers = new Speakers([
  new Speaker({name: 'John Doe', title: 'ANIMATION WITH JAVASCRIPT'}),
  new Speaker({name: 'Chris Lambert', title: 'SUPER PROGRAMMING'}),
  new Speaker({name: 'DT', title: 'WHY DT IS AWESOME'})
]);

var speakersView = new SpeakersView({model: speakers});
speakersView.render();