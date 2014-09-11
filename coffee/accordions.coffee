$( ".accordion-element-title" ).on "click",(e)->
  e.preventDefault()

  targetAccordion = $(@).attr( "href" )

  $( ".accordion-element-title" ).removeClass( "active" )
  $( ".accordion-element-content" ).hide()

  $(@).addClass( "active" )
  $( targetAccordion ).show()
