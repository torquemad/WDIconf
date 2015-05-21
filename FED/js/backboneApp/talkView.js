var TalkView = Backbone.View.extend({
  tagName: 'li',

  className: 'sched-row row medium-collapse',
  
  initialize: function(){
    
  },

  events:{
   
  },


  render: function(){
    var talksTemplate = _.template( $('#talk-template').html());
    this.$el.html(talksTemplate());
    return this;
  }
});