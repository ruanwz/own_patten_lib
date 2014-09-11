$( ".tabs-links a" ).on  "click", (e)->
  e.preventDefault()

  newTab = $(@).attr("href")

  $(newTab).show().siblings().hide()

  $(@).parent("li").addClass("active").siblings().removeClass("active")

