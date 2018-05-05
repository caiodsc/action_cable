notificationsClick = 0
document.addEventListener 'DOMContentLoaded', ->
  #Materialize.AutoInit()
  #M.AutoInit();
  elem = document.querySelector('.dropdown-trigger')
  instance = M.Dropdown.init(elem, {
    closeOnClick: false,
    coverTrigger: false,
    constrainWidth: false,
    alignment: 'right',
    onOpenEnd: ->
      if notificationsClick == 0
        $.ajax(url: '/notifications').done ->
          elem = document.querySelector('.dropdown-trigger')
          instance = M.Dropdown.getInstance(elem)
          instance.recalculateDimensions()
          notificationsClick = 1
          return
  ,
  })
  return