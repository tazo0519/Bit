$("document").ready(function () {
    var totalData = 0;	// 총 데이터 수
    var dataPerPage = 5;
    var pageCount = 5;
    var currentPage = 1;
    //var currentPage = ${param.page};	
    $.ajax({
    	url: '/bit_project/reviewcount.pr',
        type: 'POST',
        dataType: 'json',
        data:{"product_num" : p},
        async:false,
        success: function (data) {    
            totalData = data;
            $('.reviewcssf').html("("+totalData+")");
        
        },
        error: function () {
			alert("totaldata 획득 실패");
		}
    });
    
    review_snsData(totalData, dataPerPage, pageCount, currentPage);
    $('.review article ul li').click(function () {
        if ($(this).children().first().css("-webkit-line-clamp") == 2) {
            $(this).children().first().css("-webkit-line-clamp", "6");
            $(this).children().first().css("margin-bottom", 40);
        } else {
            $(this).children().first().css("-webkit-line-clamp", "2");
            $(this).children().first().css("margin-bottom", 80);
        }
    });
});

function review_snsData(totalData, dataPerPage, pageCount, currentPage) {
    var allData = { "page": currentPage, "product_num" : p};
    
    $.ajax({
    	url: '/bit_project/review.pr',
        type: 'POST',
        dataType: 'json',
        async:false,
        data: allData,
        success: function (data) {
            $(".review").empty();
            //totalData = data.length;               
            if(data.length!=0){
            $.each(data, function (index, item) {
                var exText = "";
                exText += "<article>";
                exText += "<ul style='display: flex;'>";
                exText += "<li style='flex: 8.5;'>";
                exText += "<div>"+item.content+"</div>";
                exText += "<span>"+"멤버테이블DB읽어서출력할곳"+"</span>";
                exText += "<div>";
                
				var sib1 = "'"+item.review_num+"'";
				var sib2 = "'"+item.nickname+"'";
				var sib3 = "'"+item.content+"'";
				var sib4 = "'"+item.img+"'";
				var sib5 = "'"+item.gpa+"'";
				exText += '<a href="javascript:void(0)"'+' onclick="reviewmodify('+item.review_num+','+sib2+','+sib3+','+sib4+','+sib5+');">수정</a>';
				exText += "<a href='javascript:void(0)'"+" onclick='reviewdelete("+item.review_num+");'>삭제</a>";
                
                exText += "</div>";
                exText += "</li>";
                exText += "<li style='flex: 1.5;'>";
                exText += '<img src="/bit_project/image/'+item.img+'">';
                exText += " </li>";
                exText += "</ul>";
                exText += "<hr style='border: 0.5px solid grey;'>";
                exText += "</article>";
                $(".review").append(exText);
            })
            review_paging(totalData, dataPerPage, pageCount, currentPage);
            
            }
            
            else {
            	 var exTextnull = "<li style='text-align:cetner;'>";
            	 exTextnull += "<div>등록된 상품리뷰가 없습니다.</div>";
            	 exTextnull += "</li>";
                 $(".review").append(exTextnull);
            }
            
        },
        error: function () {
			alert("ajax오류");
		}
    });
    $('.review article ul li').click(function () {
        if ($(this).children().first().css("-webkit-line-clamp") == 2) {
            $(this).children().first().css("-webkit-line-clamp", "6");
            $(this).children().first().css("margin-bottom", 40);
        } else {
            $(this).children().first().css("-webkit-line-clamp", "2");
            $(this).children().first().css("margin-bottom", 80);
        }
    });
}

function review_paging(totalData, dataPerPage, pageCount, currentPage) {
    var totalPageDevide = totalData / dataPerPage;
    var pageGroupDevide = currentPage / pageCount;


    var totalPage = Math.ceil(totalPageDevide);    // 총 페이지 수
    var pageGroup = Math.ceil(pageGroupDevide);    // 페이지 그룹
    
    var last = pageGroup * pageCount;

    if (last > totalPage)
        last = totalPage;
    var first = last - (pageCount - 1);
    if (first <= 0) {
        first = 1;
    }
    var next = last + 1; // 다음
    var prev = first - 1; // 이전
    var one = 1; // 맨 처음 
    var lastNo = totalPage; // 맨 끝

    var html = "";

    if (prev > 0) {
        html += "<a href=# id='one'>&lt;&lt;&nbsp;&nbsp;</a> ";
        html += "<a href=# id='prev'>&lt;&nbsp;&nbsp;</a> ";

    }
    for (var i = first; i <= last; i++) {
        //html += "<a href='#' id=" + i + ">" + i + "</a> ";
        //html += "<a href='javascript:review_snsData(totalData, dataPerPage, pagecount, " + i + ")' id=" + i + ">" + i + "</a> ";
    	html += "<a href='javascript:review_snsData("+totalData+","+dataPerPage+","+ pageCount+", " + i + ");' id=" + i + ">" + i + "</a> ";
        //html += "<a href='javascript:review_snsData(0, 6, 10, " + i + ")' id=" + i + ">" + i + "</a> ";
        
        
    }
    /*
    for(var i=first; i <= last; i++){
	html += "<a href='/example.do?page=" + i + "' id=" + i + ">" + i + "</a> ";
    }
    */
    if(totalPage==0){
    	
    }else {
    	  if (last < totalPage)
    	        html += "<a href=# id='next'>&gt;&nbsp;&nbsp;</a>";
    	        html += "<a href='javascript:void(0);' id='lastNo'>&gt;&gt;&nbsp;&nbsp;</a> ";

    	        $(".review_paginate").html(html);    // 페이지 목록 생성
    	        $(".review_paginate a").removeClass("page_on");

    	        $(".review_paginate a#" + currentPage).addClass("page_on"); // 현재 페이지 표시	
    }
  

    $(".review_paginate a").click(function () {
        var $item = $(this);
        var $id = $item.attr("id");
        var selectedPage = $item.text(); // 번호 클릭.

        if ($id == "one") selectedPage = one;
        if ($id == "prev") selectedPage = prev;
        if ($id == "next") selectedPage = next;
        if ($id == "lastNo") selectedPage = lastNo;
        review_snsData(totalData, dataPerPage, pageCount, selectedPage);
        review_paging(totalData, dataPerPage, pageCount, selectedPage);// 페이징
       
    })
}


function reviewmodify(_rnum, _nickname, _content, _img, _gpa) {
	 $("#ReviewForm textarea").html(_content);
	 $("#ReviewForm input[name=nickname]").val("테스트닉네임");
	 alert(_gpa);
	 switch (_gpa) {
		case "5":$("#ReviewForm input:radio[name='reviewcheck']:radio[value='5']").prop('checked', true);
			break;
		case "4":$("#ReviewForm input:radio[name='reviewcheck']:radio[value='4']").prop('checked', true);
			break;
		case "3":$("#ReviewForm input:radio[name='reviewcheck']:radio[value='3']").prop('checked', true);
			break;
		case "2":$("#ReviewForm input:radio[name='reviewcheck']:radio[value='2']").prop('checked', true);
			break;
		case "1":$("#ReviewForm input:radio[name='reviewcheck']:radio[value='1']").prop('checked', true);
			break;
		default:
			break;
	}
	 $("#ReviewForm input[name=review_num]").val(_rnum);
	review_write();
}
function reviewdelete(_rnum){
	 if (confirm("정말 삭제하시겠습니까??") == true){
		 //ajax로 데이터 삭제
		 $.ajax({
			 url:'/bit_project/reviewdelete.pr',
			 type:'POST',
			 data:{"review_num" : _rnum, "product_num" : p},
			 dataType:'JSON',
			 success:function (data) {
				 alert('삭제 성공');
				 history.go(0);
			 },
			 error:function() {
				alert('삭제 실패');
			 }
		 });
	 }else{ 
	     return false;
	 }
	
}