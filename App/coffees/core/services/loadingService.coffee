Core = {}
((Core) ->
  LoadingService = (() ->
    LoadingService = ($ionicLoading) ->
      this.$ionicLoading = $ionicLoading
      return
    LoadingService.prototype.show = () ->
      options = 
        templateUrl: Constants.Paths.Modules + 'tabs/templates/loading.html'
      this.$ionicLoading.show options
      return
      
    LoadingService.prototype.hide = () ->
      this.$ionicLoading.hide();
      return

    LoadingService.$inject = ["$ionicLoading"]
    return LoadingService
  )()
  
  Core.LoadingService = LoadingService
  angular
    .module Constants.Paths.Core
    .service 'loadingService', LoadingService
  return
)(Core)