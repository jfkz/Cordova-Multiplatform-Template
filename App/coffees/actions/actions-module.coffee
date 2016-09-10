Actions = {}
((Actions) ->
  statesConfiguration = ($stateProvider) ->
    $stateProvider
      .state Paths.Tabs + '.' + Page.Base, {
        url: '/' + Page.Base
        views:
          'actions-tab':
            controller: 'actionsController as vm',
            templateUrl: Paths.Modules + 'actions/views/actions.html'
      }
    return
  statesConfiguration.$inject = ["$stateProvider"]
  Paths = Constants.Paths
  Page = Paths.Actions
  angular
    .module Page.Base, []
    .config statesConfiguration
  return
)(Actions)