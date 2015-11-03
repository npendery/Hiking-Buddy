import Ember from "ember";
const alias = Ember.computed.alias;

export default Ember.Controller.extend({
  hike: alias("model"),

  actions: {
    editHike: function() {
      const currentHike = this.currentModel;
      const hike = this.store.find('hike', currentHike.id)

      hike.set('name', this.get('name')),
      hike.set('location', this.get('location')),
      hike.set('description', this.get('description')),
      hike.set('website', this.get('website')),

      hike.save().then(() => {
        this.transitionToRoute('hikes.show', hike);
      }).catch(function(){
        this.set('validationErrors', ["Please enter in all the fields!"]);
      });
    }
  }
});
