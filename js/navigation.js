$(function() {
  var mainMenu;
  mainMenu = $(".sf-menu");
  mainMenu.clone().removeClass().addClass("rwd-menu").prependTo(".navbar-container nav");
  mainMenu.superfish();
  return $("#rwd-trigger").on("click", function(e) {
    e.preventDefault();
    return $(".rwd-menu").slideToggle();
  });
});
