$(document).ready(function(){

    $('.member').click(function(){
        var submenu = $(this).next("ul");
        if(submenu.is(":visible")) {
            submenu.slideUp();
            $('.o1').css('color', 'black');
            $('.o1').text('▼');
        } else {
            submenu.slideDown();
            $('.o1').css('color', 'rgb(231, 60, 63)');
            $('.o1').text('▲');
        }
    });

    $('.activity').click(function(){
        var submenu = $(this).next("ul");
        if(submenu.is(":visible")) {
            submenu.slideUp();
            $('.o2').css('color', 'black');
            $('.o2').text('▼');
        } else {
            submenu.slideDown();
            $('.o2').css('color', 'rgb(231, 60, 63)');
            $('.o2').text('▲');
        }
    });

    /* 메뉴버튼 이벤트 시작 */
    $('#num0').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu0.css("display") == "none") {
            $('#num0').css('color', '#EA7475');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            list.hide();
            menu0.show();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        }
    });

    $('#num1').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu1.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', '#EA7475');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.show();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        }
    });

    $('#num2').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu2.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', '#EA7475');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.show();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        }
    });

    $('#num3').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu3.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', '#EA7475');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.show();
            menu4.hide();
            menu5.hide();
        }
    });

    $('#num4').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu4.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', '#EA7475');
            $('#num5 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.show();
            menu5.hide();
        }
    });


    $('#num5').click(function(){
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(menu5.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', '#EA7475');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.show();
        }
    });
     /* 메뉴버튼 이벤트 끝 */

    /* point 사용하기 클릭 이벤트 */
    $('.point_button').click(function(){
        window.confirm('포인트를 사용하시겠습니까?');
        $('.point_text').val('');
    });

    /* 프로필 메뉴 > 위시리스트/ 예약/ 찜 시작 */
    $('.btn1').click(function() {
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', 'black');
            list.show();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        } else {
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', 'black');
        }
    });
    $('.btn2').click(function() {
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', '#EA7475');
            $('.profile_menu3 > b').css('color', 'black');
            list.show();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        } else {
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', '#EA7475');
            $('.profile_menu3 > b').css('color', 'black');
        }
    });
    $('.btn3').click(function() {
        var list= $('.list');
        var menu0= $('.elegant-calencar');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', '#EA7475');
            list.show();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
        } else {
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', '#EA7475');
        }
    });

    $('.profile_menu1').click(function() {
        $('.profile_menu1 > b').css('color', '#EA7475');
        $('.profile_menu2 > b').css('color', 'black');
        $('.profile_menu3 > b').css('color', 'black');
    });
    $('.profile_menu2').click(function() {
        $('.profile_menu1 > b').css('color', 'black');
        $('.profile_menu2 > b').css('color', '#EA7475');
        $('.profile_menu3 > b').css('color', 'black');
    });
    $('.profile_menu3').click(function() {
        $('.profile_menu1 > b').css('color', 'black');
        $('.profile_menu2 > b').css('color', 'black');
        $('.profile_menu3 > b').css('color', '#EA7475');
    });
    /* 프로필 메뉴 > 위시리스트/ 예약/ 찜 끝 */

});

