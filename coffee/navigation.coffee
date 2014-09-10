$ ->
  mainMenu = $(".sf-menu")

  mainMenu.clone().removeClass()
    .addClass("rwd-menu").prependTo(".navbar-container nav")

  mainMenu.superfish()

  $("#rwd-trigger").on "click", (e)->
    e.preventDefault()
    $(".rwd-menu").slideToggle()

