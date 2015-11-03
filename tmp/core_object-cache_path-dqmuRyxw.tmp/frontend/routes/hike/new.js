define('frontend/routes/hike/new', ['exports', 'ember'], function (exports, Ember) {

  'use strict';

  exports['default'] = Ember['default'].Route.extend({
    actions: {
      willTransition: function willTransition() {
        var controller = this.get('controller');
        controller.set('validationErrors', false);
        controller.set('name', "");
        controller.set('location', "");
        controller.set('description', "");
        controller.set('website', "");
      }
    }
  });

});