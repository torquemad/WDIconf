var Talk = Backbone.Model.extend({
  urlRoot: 'http://localhost:3000/api/talks',
  qty: 0
  //validation to check if qty <= limit
});