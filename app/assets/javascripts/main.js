
function parallax(){
    var jumboHeight = $('.jumbotron').outerHeight();
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');

}

$(window).scroll(function(e){
    parallax();
});