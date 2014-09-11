$(".accordion-element-title").on("click", function(e) {
  var targetAccordion;
  e.preventDefault();
  targetAccordion = $(this).attr("href");
  $(".accordion-element-title").removeClass("active");
  $(".accordion-element-content").hide();
  $(this).addClass("active");
  return $(targetAccordion).show();
});
