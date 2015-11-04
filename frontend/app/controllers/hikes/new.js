import Ember from "ember";

export default Ember.Controller.extend({
  actions: {
    newHike: function() {

      const name = this.get('name');
      const location = this.get('location');
      const description = this.get('description');
      const website = this.get('website');

      const hike = this.store.createRecord('hike', {
        name: name,
        location: location,
        description: description,
        website: website
      });

      hike.save().then(() => {
        this.transitionToRoute('hikes.show', hike);
      }).catch(function(){
        window.alert("Name already taken!\n\nPlease use another.");
      });
    }
  }
});
