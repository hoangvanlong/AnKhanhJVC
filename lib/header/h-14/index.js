function CCHeader14() {
    $('.canhcam-header-14 #demoResAllInOneMenu').kResponsiveMenu({
        animationSpeed: 'fast', // slow, fast, 200
        resizeWidth: 'lg', // 'xs', 'sm', 'md', 'lg', 'xl', 480,
        menuType: 'horizontal', // horizontal, vertical
        menuPush: 'right', // right, left
        menuPushPosition: 'fixed', // absolute
        menuPushWidth: '300px', // px, %, rem
        menuBackDrop: true, // px, %, rem
    })
};

function showSearch() {
    $('.canhcam-header-14 .k-responsive-menu .advbar .searchbar').hide()
    $('.canhcam-header-14 .k-responsive-menu .advbar .search').on('click', function() {
        if ($('.canhcam-header-14 .k-responsive-menu .advbar .searchbar').is(':hidden') == true) {
            $('.canhcam-header-14 .k-responsive-menu .advbar .searchbar').show('fast')
        } else {
            $('.canhcam-header-14 .k-responsive-menu .advbar .searchbar').hide('fast')
        }

    })
}

$(document).ready(function() {
    CCHeader14()
    showSearch()
    $('.canhcam-ankhanh-breadcrumb .main-breadcrumb .breadcrumb').addClass('container')
    $('.canhcam-ankhanh-breadcrumb .main-breadcrumb .breadcrumb li').addClass('breadcrumb-item')
});
// Fixed Header
$(window).scroll(function() {});

$(window).resize(function() {})