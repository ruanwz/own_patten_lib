$(".tabs-links a").on("click", function(e) {
  var newTab;
  e.preventDefault();
  newTab = $(this).attr("href");
  $(newTab).show().siblings().hide();
  return $(this).parent("li").addClass("active").siblings().removeClass("active");
});
