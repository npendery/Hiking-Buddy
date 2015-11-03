define('frontend/routes/hike/show', ['exports', 'ember'], function (exports, Ember) {

  'use strict';

  exports['default'] = Ember['default'].Route.extend({
    queryParams: {
      refreshPage: {
        refreshModel: true
      }
    },
    model: function model(params) {
      return this.store.find('hike', params.Hike_id);
    },
    actions: {
      deleteHike: function deleteHike() {
        var _this = this;

        var currentHike = this.currentModel;
        this.store.find('hike', currentHike.id).then(function (hike) {
          hike.destroyRecord().then(function () {
            _this.transitionTo('hikes.index');
          });
        });
      }
    }
  });

});