import Ember from "ember";
var alias = Ember.computed.alias;

export default Ember.Controller.extend({
  hike: alias("model")
});