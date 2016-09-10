Side = {}
((Side) ->
  statesConfiguration = ($stateProvider) ->
    $stateProvider
      .state Paths.Tabs + '.' + Page.Left, {
        url: '/' + Page.Left,
        views: {
          'left-tab': {
            templateUrl: Paths.Modules + 'side/views/left.html'
          }
        }
      }
    return
  
  statesConfiguration.$inject = ["$stateProvider"]
  Paths = Constants.Paths
  Page = Paths.Side
  angular.module Page.Base, []
    .config statesConfiguration
  return
)(Side)