_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

//--------------------------------------


var speakers = new Speakers();

speakers.fetch().done(function(){
  var speakersView = new SpeakersView({model: speakers});
  speakersView.render();
});



var talks = new Talks([
  // new Talk({title: "First talk",tag: "FE"}),
  // new Talk({title: "Second talk", tag: "BE"}),
  // new Talk({title: "Third talk", tag: "FE"}),
  // new Talk({title: "talk 4", tag: "FE"}),
  // new Talk({title: "talk 5", tag: "BE"}),
  // new Talk({title: "talk 6", tag: "BE"}),
  // new Talk({title: "talk 7", tag: "BE"}),
  // new Talk({title: "talk 8", tag: "BE"}),
  // new Talk({title: "talk 9", tag: "FE"}),
  // new Talk({title: "talk 10", tag: "FE"}),
  // new Talk({title: "talk 11", tag: "FE"}),
  // new Talk({title: "talk 12", tag: "Tech"}),
  // new Talk({title: "talk 13", tag: "Tech"}),
  // new Talk({title: "talk 14", tag: "Tech"}),
  // new Talk({title: "talk 15", tag: "FE"}),
  // new Talk({title: "talk 16", tag: "FE"}),
  // new Talk({title: "talk 17", tag: "FE"})
]);

talks.fetch();

var talksView = new TalksView({model: talks});
$('.schedule-slider').append(talksView.render().el);


// var chosenTalks = new ChosenTalks([
//   new Talk({talk_id: 1, title: "DT talk"}),
//   new Talk({talk_id: 2, title: "DT talasdsafsagk"}),
//   new Talk({talk_id: 3, title: "DT talasdsafsagqwfwqfwqfwqfk"}),
// ]);

var tickets = new Tickets();

