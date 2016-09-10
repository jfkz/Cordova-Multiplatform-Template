Actions = {}
((Actions) ->
  ActionsController = (() ->
    ActionsController = (loadingService) ->
      this.loadingService = loadingService
      this.text = ''
      this.addTextAsync()
      return
      
    ActionsController.prototype.addTextAsync = () ->
      _this = this
      this.loadingService.show()
      window.setTimeout ->
        _this.text += '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt lacinia augue vehicula molestie. Proin a dui dignissim, ornare nulla ut, venenatis nisi. Proin accumsan tortor purus, a venenatis augue vestibulum porta. In faucibus ligula eu metus tempor, a ornare enim finibus. Donec ullamcorper risus sem, quis laoreet mauris pharetra in. Vestibulum tempus ipsum eget dolor ornare auctor. Ut pulvinar ac nibh ac lobortis.</p>'
        _this.loadingService.hide()
        return
      , Math.floor(Math.random() * 3000)
      return 
    
    ActionsController.$inject = ["loadingService"]
    return ActionsController
  )()
  
  Actions
    .ActionsController = ActionsController
  angular
    .module Constants.Paths.Actions.Base 
    .controller 'actionsController', ActionsController
  
  return
)(Actions)