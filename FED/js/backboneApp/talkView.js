var TalkView = Backbone.View.extend({
  tagName: 'li',

  className: 'sched-row row medium-collapse',
  
  initialize: function(){
    
  },

  events:{
    "click #add-qty" : "addQty",
    "click #minus-qty" : "minusQty"
  },

  addQty: function(){
    // need validation that qty is <= limit
    var currentQty = parseInt($(this.el).find("#qty-input").val(),10);
    var totalQty = parseInt($("#ticketsQty").html(),10);
    $(this.el).find("#qty-input").val(currentQty + 1);
    $("#ticketsQty").html(totalQty + 1);
    this.qty = currentQty + 1;
    chosenTalks.add(new Talk({
      title: this.model.get('title'), 
      speaker: this.model.get('speaker')['name'],
      start_time: this.model.get('start_time'),
      end_time: this.endTime(this.model.get('start_time'))
    }));
    console.log(chosenTalks);
  },

  minusQty: function(){
    //need validation that qty is > 0
    var currentQty = parseInt($(this.el).find("#qty-input").val(),10);
    var totalQty = parseInt($("#ticketsQty").html(),10);
    $(this.el).find("#qty-input").val(currentQty - 1);
    $("#ticketsQty").html(totalQty - 1);
    this.qty = currentQty - 1;
    chosenTalks.remove(chosenTalks.findWhere({title: this.model.get('title')}));
    console.log(chosenTalks);
  },

  endTime: function(startTime){
    var array = startTime.split(':');
    var hours = parseInt(array[0]);
    var minutes = parseInt(array[1]);
    var date = new Date();
    date.setHours(hours);
    date.setMinutes(minutes);
    date.setMinutes(date.getMinutes() + 15);
    return date.getHours() + ":" + date.getMinutes();
  },

  render: function(){
    var talksTemplate = _.template( $('#talk-template').html());
    var model = this.model.toJSON();
    var title = model['title'];
    var speaker = model['speaker']['name'];
    var startTime = model['start_time'];
    var endTime = this.endTime(startTime);
    this.$el.html(talksTemplate({title: title, speaker: speaker, startTime: startTime, endTime: endTime}));
    return this;
  }
});