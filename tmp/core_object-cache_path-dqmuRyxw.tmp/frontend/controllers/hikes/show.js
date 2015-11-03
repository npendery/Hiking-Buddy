define('frontend/controllers/hikes/show', ['exports', 'ember'], function (exports, Ember) {

  'use strict';

  var alias = Ember['default'].computed.alias;

  exports['default'] = Ember['default'].Controller.extend({
    hike: alias("model")
  });

});