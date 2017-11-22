
function parallax(){
    var jumboHeight = $('.jumbotron').outerHeight();
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');

}

$(window).scroll(function(e){
    parallax();
});

// $('.dropdown-item').click(function (event) {
// 	var _opened = $(".navbar-collapse").hasClass("navbar-collapse") && $(".navbar-collapse").hasClass("in");
// 	if (_opened === true && !($(event.target).hasClass("dropdown-item"))) {
//   		$("a.navbar-toggle").click();
// 	}
// });

$(document).ready(function () {
    $(".a").click(function(event) {
    	console.log("sanity check");
    });
});