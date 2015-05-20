var SpeakerMobileView = Backbone.View.extend({

  tagName: 'li',

  className: 'Speakers-item',
  
  initialize: function(){
    
  },

  events:{
    
  },

  render: function(){
    var desktopTemplate = _.template( $('#speaker-mobile-template').html());
    this.$el.html(desktopTemplate(this.model.toJSON()));
    return this;
  }
});