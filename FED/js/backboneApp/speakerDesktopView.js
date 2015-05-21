var SpeakerDesktopView = Backbone.View.extend({

  tagName: 'li',
  
  initialize: function(){
    // console.log("ss");
    // console.log(this.model);
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
    var title = this.model.get('talks')[0]['title'];
    var image_url = "http://localhost:3000" + this.model.get('image')['url'];
    var time = this.model.get('talks')[0]['start_time'];
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
    var model = this.model.toJSON();
    var name = model['name'];
    var title = model['talks'][0]['title'];
    var image_url =  model['image']['url'];
    this.$el.html(desktopTemplate({name: name, title: title, image_url: image_url} ));

    return this;
  }
});