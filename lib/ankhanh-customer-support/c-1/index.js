$(document).ready(function() {

    // $('.canhcam-about-5 .c-accordion__list')
    $('.canhcam-suppport-1 .list-detail .item .lead').hide();
    // $('.canhcam-suppport-1 .list-detail .content ').trigger('click');
    $('.canhcam-suppport-1 .list-detail .content ').click(function() {
        if ($(this).next().is(':hidden') === true) {
            $('.canhcam-suppport-1 .list-detail .lead').slideUp('fast');
            $('.canhcam-suppport-1 .list-detail .content ').removeClass('active');
            $(this).next().slideDown('fast');
            $(this).addClass('active');
        } else {
            $('.canhcam-suppport-1 .list-detail .content ').removeClass('active');
            $(this).next().slideUp('fast');
        }
    });
})