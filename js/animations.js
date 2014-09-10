$("#demo-animations").find(".demo-col").on("click", function() {
  var a, klass;
  a = $(this);
  klass = "animated " + a.text();
  a.addClass(klass);
  return setTimeout((function() {
    return a.removeClass(klass);
  }), 1000);
});
