import Ember from "ember";

export default Ember.Controller.extend({
  actions: {
    newHike: function newHike() {
      var _this = this;

      var name = this.get('name');
      var location = this.get('location');
      var description = this.get('description');
      var website = this.get('website');

      var hike = this.store.createRecord('hike', {
        name: name,
        location: location,
        description: description,
        website: website
      });

      hike.save().then(function () {
        _this.transitionToRoute('hikes.show', hike);
      })['catch'](function () {
        this.set('validationErrors', ["Please enter in all the fields!"]);
      });
    }
  }
});