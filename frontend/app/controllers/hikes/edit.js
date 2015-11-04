import Ember from "ember";
const alias = Ember.computed.alias;

export default Ember.Controller.extend({
  hike: alias("model"),

  actions: {
    editHike: function() {
      var hikeId = location.pathname.split('/')[2];
      var newName = String(this.get('hike.name'));
      var newLocation = String(this.get('hike.location'));
      var newDescription = String(this.get('hike.description'));
      var newWebsite = String(this.get('hike.website'));

      this.store.findRecord('hike', hikeId).then(function(hike){
        hike.get('name');
        hike.set('name', newName);
        hike.get('location');
        hike.set('location', newLocation);
        hike.get('description');
        hike.set('description', newDescription);
        hike.get('website');
        hike.set('website', newWebsite);
        hike.save();
      }).then(() => {
        this.transitionToRoute('hikes.show', hikeId);
      }).catch(function(){
        window.alert("Name already taken!\n\nPlease use another.");
      });
    }
  }
});
