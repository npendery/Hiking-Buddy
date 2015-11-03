define('frontend/router', ['exports', 'ember', 'frontend/config/environment'], function (exports, Ember, config) {

  'use strict';

  var Router = Ember['default'].Router.extend({
    location: config['default'].locationType
  });

  Router.map(function () {
    this.route('hikes', function () {
      this.route('show', { path: ':hike_id' });
      this.route('edit', { path: ':hike_id' });
      this.route('delete', { path: ':hike_id' });
      this.route('new');
    });
  });

  exports['default'] = Router;

});