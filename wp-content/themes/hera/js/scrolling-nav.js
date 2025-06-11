//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".navbar img").width(95);
        $("h2.navbar-subtitle").css("font-size", "14px");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
        $(".navbar img").width(170);
        $("h2.navbar-subtitle").css("font-size", "18px");
    }
});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});
