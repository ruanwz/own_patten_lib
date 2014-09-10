$( "#demo-animations" ).find( ".demo-col" ).on  "click", ->
  a = $(@)
  klass = "animated " + a.text()
  a.addClass(klass)
  setTimeout (-> a.removeClass(klass)), 1000

