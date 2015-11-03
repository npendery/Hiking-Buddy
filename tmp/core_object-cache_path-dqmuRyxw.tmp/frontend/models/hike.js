define('frontend/models/hike', ['exports', 'ember-data'], function (exports, DS) {

  'use strict';

  exports['default'] = DS['default'].Model.extend({
    name: DS['default'].attr('string'),
    location: DS['default'].attr('string'),
    description: DS['default'].attr('string'),
    website: DS['default'].attr('string')
  });

});