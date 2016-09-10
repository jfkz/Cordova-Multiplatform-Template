Tabs = {}
((Tabs) ->
  statesConfiguration = ($stateProvider) ->
    $stateProvider
      .state Paths.Tabs, {
        url: '/' + Paths.Tabs,
        abstract: true,
        templateUrl: Paths.Modules + 'tabs/templates/tabs.html'
      }
    return
  statesConfiguration.$inject = ["$stateProvider"];
  Paths = Constants.Paths;
  angular.module Paths.Tabs, []
    .config statesConfiguration
  return
)(Tabs)
