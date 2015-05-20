var SpeakerDesktopView = Backbone.View.extend({

  tagName: 'li',
  
  initialize: function(){
    console.log("ss");
    console.log(this.model);
    //$('#Speakers-details-highlightedImage').attr('src', 'http://www.fillmurray.com/g/300/200' alt="badge 1');
    //$('#Speakers-details-highlightedImage').attr('src', this.model.attributes['image_url'];)
  },

  events:{
    'click': "selectSpeaker"
  },

  selectSpeaker: function(event) {
    event.preventDefault();
    console.log(this.model);
    var name = this.model.attributes['name'];
    var title = this.model.attributes['title'];
    var image_url = this.model.attributes['image_url'];
    var time = this.model.attributes['time'];
    // var talk_id = this.model.attributes['talk_id'];

    this.renderSpeakersDetails(name, title, image_url, time);
  },

  renderSpeakersDetails: function(name, title, image_url, time) {
    var $bigSpeaker = $('#Speakers-details');
    $bigSpeaker.find('h4').text("By: " + name);
    $bigSpeaker.find('h3').text(title);
    $bigSpeaker.find("#Speakers-details-highlightedImage").attr('src', image_url);
    $bigSpeaker.find('h5').text(time);
    // $bigSpeaker.find(call to action button).attr('data-talk-id', talk_id);
  },

  render: function(){
    var desktopTemplate = _.template( $('#speaker-desktop-template').html());
    this.$el.html(desktopTemplate(this.model.toJSON()));
    return this;
  }
});