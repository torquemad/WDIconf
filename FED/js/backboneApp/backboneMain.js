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

var talks = new Talks([
  new Talk({title: "First talk",tag: "FE"}),
  new Talk({title: "Second talk", tag: "BE"}),
  new Talk({title: "Third talk", tag: "FE"}),
  new Talk({title: "talk 4", tag: "FE"}),
  new Talk({title: "talk 5", tag: "BE"}),
  new Talk({title: "talk 6", tag: "BE"}),
  new Talk({title: "talk 7", tag: "BE"}),
  new Talk({title: "talk 8", tag: "BE"}),
  new Talk({title: "talk 9", tag: "FE"}),
  new Talk({title: "talk 10", tag: "FE"}),
  new Talk({title: "talk 11", tag: "FE"}),
  new Talk({title: "talk 12", tag: "Tech"}),
  new Talk({title: "talk 13", tag: "Tech"}),
  new Talk({title: "talk 14", tag: "Tech"}),
  new Talk({title: "talk 15", tag: "FE"}),
  new Talk({title: "talk 16", tag: "FE"}),
  new Talk({title: "talk 17", tag: "FE"})
]);

var talksView = new TalksView({model: talks});
$('.schedule-wrapper').append(talksView.render().el);

var speakers = new Speakers();
speakers.fetch();

// var chosenTalks = new ChosenTalks([
//   new Talk({talk_id: 1, title: "DT talk"}),
//   new Talk({talk_id: 2, title: "DT talasdsafsagk"}),
//   new Talk({talk_id: 3, title: "DT talasdsafsagqwfwqfwqfwqfk"}),
// ]);

var tickets = new Tickets();

