function changeNewsItemNews3() {
    if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
        $('.canhcam-ankhanh-progress-p-1 .news-item').each(function() {
            var geth = $(this).find('.top-list .item:first-child figure').outerHeight();
            var countitem = $(this).find('.part-list').find('.item').length
            $(this).find('.part-list .item figure').each(function() {
                $(this).css({
                    'height': 'calc(' + (geth / countitem) + 'px - 1rem)'
                })
            });
        });

    } else {
        $('.canhcam-ankhanh-progress-p-1 .part-list .item figure').each(function() {
            $(this).css({
                'height': 'initial'
            })
        });
    }
}


$(document).ready(function() {
    changeNewsItemNews3()

    if ($(window).width() > CANHCAM_APP.CHANGE_GRID) {
        $('.canhcam-ankhanh-progress-p-1 .owl-carousel').owlCarousel({
            items: 1,
            loop: true,
            center: true,
            navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
            nav: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplayHoverPause: true
        });
    }

    $('.canhcam-ankhanh-progress-p-1 .news-list #list').click(function(event) {
        event.preventDefault();
        $(this).addClass('active')
        $('.canhcam-ankhanh-progress-p-1 .news-list #grid').removeClass('active')
        $('.canhcam-ankhanh-progress-p-1 #products').addClass('list-group-wrapper').removeClass('grid-group-wrapper');
    });
    $('.canhcam-ankhanh-progress-p-1 .news-list #grid').click(function(event) {
        event.preventDefault();
        $(this).addClass('active')
        $('.canhcam-ankhanh-progress-p-1 .news-list #list').removeClass('active')
        $('.canhcam-ankhanh-progress-p-1 #products').removeClass('list-group-wrapper').addClass('grid-group-wrapper');
    });
    $(".canhcam-ankhanh-progress-p-1 #products").lightGallery({
        thumbnail: true,
        selector: '.item'
    });
    $(".canhcam-ankhanh-progress-p-1 .yearProgress").on("change", function() {
        if ($(this).val() != '')
            window.location.href = $(this).val();
    });
});

$(window).resize(function() {
    changeNewsItemNews3()
})