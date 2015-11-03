import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    willTransition() {
      const controller = this.get('controller');
      controller.set('validationErrors', false);
      controller.set('name', "");
      controller.set('location', "");
      controller.set('description', "");
      controller.set('website', "");
      }
    }
});
