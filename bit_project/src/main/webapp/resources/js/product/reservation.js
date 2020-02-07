$(function(){
    $("#reservation_button").click(function(){
    	if(sessionChk==""){
    	    location.href = 'login.me';
    	}else {
    		//alert('sessionChk은'+sessionChk);
    	}
        if(rcheck==0){
        	//팝업창 띄우고 확인 누르면 db삽입
            $('body').css("background", "grey");
            $(".reservationForm_true").show();
            scrollHeight = $("body").scrollTop(); // [var사용하지 않았으므로 전역스코프로 정의됨]열렸을떄 scrollTop 체크
            $("body").addClass('not_scroll'); //overflow:hidden 추가
            $('.reservationForm_true').css('position', 'fixed'); //최상위 div 고정
            $('.reservationForm_true').css('top', - scrollHeight + 100);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.reservationForm_true').css('left', 700);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $.ajax({
        		url: '/bit_project/addreservation.pr',
        		type: 'post',
        		data:{"product_num" : p, "email" : sessionChk}, 
        		dataType: "json",
        		async:false,
        		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
        		success: function (data) {
       			},
        		error: function () {
        		}
        		
        	});
            rcheck = 1;
            $('#reservation_button').css("background","black");
        }else {
        	$('body').css("background", "grey");
            $(".reservationForm_false").show();
            scrollHeight = $("body").scrollTop(); // [var사용하지 않았으므로 전역스코프로 정의됨]열렸을떄 scrollTop 체크
            $("body").addClass('not_scroll'); //overflow:hidden 추가
            $('.reservationForm_false').css('position', 'fixed'); //최상위 div 고정
            $('.reservationForm_false').css('top', - scrollHeight + 100);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.reservationForm_false').css('left', 700);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
        	//팝업창 띄우고 확인 누르면 db삭제
            $.ajax({
        		url: '/bit_project/deletereservation.pr',
        		type: 'post',
        		data:{"product_num" : p, "email" : sessionChk}, 
        		dataType: "json",
        		async:false,
        		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
        		success: function (data) {
       			},
        		error: function () {
        		}
        		
        	});
            rcheck = 0;
            $('#reservation_button').css("background","#EA7475");
        }
    });
});

//예약 등록 후 확인 누르면 마이페이지로 가서 위시리스트 목록 확인
$('.reservation_true_btn a').first().click(function () {
    $("body").removeClass('not_scroll');
    $('.reservationForm_true').css('position', 'relative');//top값 해제
    $('.reservationForm_true').css('left', 0);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
    $('.reservationForm_true').css('top', 0);//최상위 div 고정해제
    $(".reservationForm_true").hide();
    $('body').css("background", "none");
    $('body').scrollTop(scrollHeight);
        location.href = 'mypage_main.my';
});
//예약 등록 후 취소 누르면 현재 페이지 머무름
$('.reservation_true_btn a').last().click(function () {
    $("body").removeClass('not_scroll');
    $('.reservationForm_true').css('position', 'relative');//top값 해제
    $('.reservationForm_true').css('left', 0);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
    $('.reservationForm_true').css('top', 0);//최상위 div 고정해제
    $(".reservationForm_true").hide();
    $('body').css("background", "none");
    $('body').scrollTop(scrollHeight);
});

//예약 취소 시
$('.reservation_false_btn a').click(function () {
    $("body").removeClass('not_scroll');
    $('.reservationForm_false').css('position', 'relative');//top값 해제
    $('.reservationForm_false').css('left', 0);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
    $('.reservationForm_false').css('top', 0);//최상위 div 고정해제
    $(".reservationForm_false").hide();
    $('body').css("background", "none");
    $('body').scrollTop(scrollHeight);
});