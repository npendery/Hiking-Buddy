import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('hikes', function() {
    this.route('edit', { path: ':hike_id/edit' });
    this.route('show', { path: ':hike_id' });
    this.route('new');
  });
});

export default Router;
