Tabs = {}
((Tabs) ->
  NavigationController = (() ->
    NavigationController = ($ionicHistory, $ionicTabsDelegate, $ionicPlatform) ->
      _this = this
      this.$ionicHistory = $ionicHistory
      this.$ionicTabsDelegate = $ionicTabsDelegate
      this.$ionicPlatform = $ionicPlatform
      $ionicPlatform.registerBackButtonAction (e) ->
        return _this.checkBack(e)
      , 100
      return
    NavigationController.$inject = ["$ionicHistory", "$ionicTabsDelegate", "$ionicPlatform"];
     
    NavigationController.prototype.goBack = () ->
      this.$ionicHistory.goBack()
      return
        
    NavigationController.prototype.checkBack = (e) ->
      page = this.$ionicHistory.currentStateName()
      if page == Constants.Paths.Home.Base
        nav = navigator
        if nav.app && nav.app.exitApp
          nav.app.exitApp()
        else 
          window.close()
      else
        this.goBack()
      return
      
    NavigationController.prototype.disableSwipe = (e) ->
      # For example on <ion-list>
      e.stopPropagation()
      return
      
    NavigationController.prototype.onSwipeLeft = () ->
      this.$ionicTabsDelegate.select(this.$ionicTabsDelegate.selectedIndex() + 1)
      return
      
    NavigationController.prototype.onSwipeRight = () ->
      index = this.$ionicTabsDelegate.selectedIndex()
      if index > 0 
        this.$ionicTabsDelegate.select this.$ionicTabsDelegate.selectedIndex()-1
      return
    
    return NavigationController;
  )()
  
  Tabs.NavigationController = NavigationController
  angular
    .module Constants.Paths.Tabs
    .controller 'navigationController', NavigationController
    
  return
)(Tabs)