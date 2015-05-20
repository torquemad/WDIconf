var SpeakersView = Backbone.View.extend({
  
  initialize: function(){
    var firstImg = this.model.models[0].get('image_url');
    $('#Speakers-details-highlightedImage').attr('src', firstImg);
  },

  events:{
    
  },

  addOneDesktop: function(speaker){
    var view = new SpeakerDesktopView({model: speaker});
    $("#thumbs").append(view.render().el);
  },

  addAllDesktop: function(){
    this.model.each(this.addOneDesktop, this);
  },

  addOneMobile: function(speaker){
    var view = new SpeakerMobileView({model: speaker});
    $("#thumbs-mobile").append(view.render().el);
  },

  addAllMobile: function(){
    this.model.each(this.addOneMobile, this);
  },

  render: function(){
    this.addAllDesktop();
    this.addAllMobile();
  }
});