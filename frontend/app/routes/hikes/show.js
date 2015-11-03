import Ember from 'ember';

export default Ember.Route.extend({
  queryParams: {
    refreshPage: {
      refreshModel: true
    }
  },
  model(params) {
    return this.store.find('hike', params.hike_id);
  },
  actions: {
    deleteHike() {
      const currentHike = this.currentModel;
      this.store.find('hike', currentHike.id).then((hike) => {
        hike.destroyRecord().then(() => {
          this.transitionTo('hikes.index');
        });
      });
    },
  }
});
