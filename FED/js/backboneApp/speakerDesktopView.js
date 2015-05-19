var SpeakerDesktopView = Backbone.View.extend({

  tagName: 'li',
  
  initialize: function(){
    
  },

  events:{
    
  },

  render: function(){
    var desktopTemplate = _.template( $('#speaker-desktop-template').html());
    this.$el.html(desktopTemplate(this.model.toJSON()));
    return this;
  }
});