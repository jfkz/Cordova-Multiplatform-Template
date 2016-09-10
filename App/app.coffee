App = {}
((App) ->
  statesConfiguration = ($urlRouterProvider, $ionicConfigProvider) ->
    $ionicConfigProvider.scrolling.jsScrolling false 
    $urlRouterProvider.otherwise '/tabs/home'
    return
  statesConfiguration.$inject = ["$urlRouterProvider", "$ionicConfigProvider"]
  
  angular
    .module 'app', [
      'ionic',
      Constants.Paths.Core,
      Constants.Paths.Tabs,
      Constants.Paths.Side.Base,
      Constants.Paths.Home.Base,
      Constants.Paths.Actions.Base,
      Constants.Paths.Buttons.Base
    ]
    .config statesConfiguration
    
  window['ionic'].Platform.ready  ->
    angular.bootstrap document.querySelector('body'), ['app']
    return

  return
)(App)