Home = {};
((Home) ->
  statesConfiguration = ($stateProvider) ->
    $stateProvider
      .state Paths.Tabs + '.' + Page.Base, {
        url: '/' + Page.Base,
        views: {
          'home-tab': {
            templateUrl: Paths.Modules + 'home/views/home.html'
          }
        }
      }
      .state Paths.Tabs + '.' + Page.Scroll, {
        url: '/' + Page.Scroll,
        views: {
          'home-tab': {
            templateUrl: Paths.Modules + 'home/views/scroll.html'
          }
        }
      }
    return
    
  statesConfiguration.$inject = ["$stateProvider"]
    
  Paths = Constants.Paths;
  Page = Paths.Home;
  angular.module Page.Base, []
    .config(statesConfiguration)
  
  return
)(Home)