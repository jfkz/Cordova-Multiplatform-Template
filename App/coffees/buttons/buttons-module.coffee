Buttons = {};
((Buttons) ->
  statesConfiguration = ($stateProvider) ->
    $stateProvider
      .state Paths.Tabs + '.' + Page.Base, {
        url: '/' + Page.Base
        views: {
          'buttons-tab': {
            templateUrl: Paths.Modules + 'buttons/views/buttons.html'
          }
        }
      }
    return
  statesConfiguration.$inject = ["$stateProvider"]
  
  Paths = Constants.Paths
  Page = Paths.Buttons

  angular
    .module Page.Base, []
    .config statesConfiguration

  return
)(Buttons)