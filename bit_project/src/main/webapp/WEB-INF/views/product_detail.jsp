<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.product.ProductVO" %>
<%
    ProductVO prVO = (ProductVO)request.getAttribute("prVO");
    
    %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="format-detection" content="telephone=no">
    <title>상품리스트</title>
    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset20.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style20.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/swiper.css">

    <!-- 폰트어썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <!-- 페이스북 메타 태그 -->
    <meta property="og:title" content="" />
    <meta property="og:url" content="https://" />
    <meta property="og:image" content="https://.jpg" />
    <meta property="og:description" content="" />

    <!-- 트위터 메타 태그 -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="">
    <meta name="twitter:url" content="https:///">
    <meta name="twitter:image" content="https://.jpg">
    <meta name="twitter:description" content="">

    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
        rel="stylesheet">
    <script>
        var p = <%=prVO.getProduct_num() %>;
    </script>
</head>

<body>
    <header>
        <div id="wrap">
            <div id="intro_bg">
                <div class="header">
                    <div class="main">
                        <li><img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"></li>
                    </div>
                    <ul class="nav">

                        <div class="login_text"><a href="login.me">로그인</a></div>

                        <li><input type="checkbox" id="menuicon">
                            <label for="menuicon">
                                <span></span>
                                <span></span>
                                <span></span>
                            </label>

                            <div class="sidebar">
                                <div id="sidemenu">
                                    <table class="menu_w">
                                        <tbody>
                                            <tr>
                                                <td><button name="button" class="subscribe-btn"
                                                        onclick="location.href='subscribestep1.me'"
                                                        type="button">구독하기</button></td>
                                                <td><a href="community.co">커뮤니티</a></td>
                                                <td><a href="product.pr">상품보기</a></td>
                                                <td><a href="qna.se">QnA</a></td>
                                            </tr>
                                            <tr>
                                                <td><button name="button" class="subscribe-btn"
                                                        onclick="location.href='//'" type="button">회원가입</button></td>
                                                <td><a href="about.ma">이용방법</a></td>
                                                <td><a href="kindergarten.ms">어린이집</a></td>
                                                <td><a href="partner.ms">파트너</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table class="menu_m">
                                        <tbody>

                                            <tr>
                                                <td><button name="button1" class="subscribe-btn"
                                                        onclick="location.href='subscribestep1.me'"
                                                        type="button">구독하기</button></td>
                                            </tr>
                                            <tr>
                                                <td><button name="button1" class="subscribe-btn"
                                                        onclick="location.href='signup.me'" type="button">회원가입</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="about.ma">이용방법</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="kindergarten.ms">어린이집</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="partner.ms">파트너</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="community.co">커뮤니티</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="product.pr">상품보기</a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="qna.se">QnA</a></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </header>
    <br>
    <br>
    <br>

    <br>

    <!-- 상품상세 content div-->
    <div class="container">
        <div class="wrap_product">
            <!-- -->
            <!-- 상품상세 content 왼쪽 이미지 div -->
            <div class="product_left">
                <div class="slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"
                                style="background: url(/bit_project/image/<%=prVO.getImg_sum() %>) no-repeat center center; background-size: cover;">
                            </div>
                            <div class="swiper-slide"
                                style="background: url(/bit_project/image/<%=prVO.getImg_main() %>) no-repeat center center; background-size: cover;">
                            </div>
                            <div class="swiper-slide"
                                style="background: url(/bit_project/image/<%=prVO.getImg_detail() %>) no-repeat center center; background-size: cover;">
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>

            </div>
            <!-- 상품상세 content 왼쪽 이미지 div -->


            <!-- 상품상세 content 오른쪽 상품정보 div -->
            <form>
                <div class="product_right">
                    <span
                        class="product_cate1"><%=prVO.getCategory_l() %>><%=prVO.getCategory_m() %>><%=prVO.getCategory_s() %>
                        조회수 : <%=prVO.getReadcount() %></span>
                    <span class="product_cate2">
                        <input type="checkbox" id="wishlist-pid-0001">
                        <label for="wishlist-pid-0001">
                            <i class="far fa-heart" aria-hidden="true"></i>
                            <i class="fas fa-heart" aria-hidden="true"></i>
                        </label>
                    </span>

                    <br>
                    <hr>
                    <div><%=prVO.getManufacturer() %></div>
                    <br><br><br>
                    <hr>
                    <div><%=prVO.getProduct_name() %></div>
                    <br><br><br>
                    <hr>
                    <div><%=prVO.getProduct_content() %></div>
                    <br><br><br>
                    <hr>
                    <div>재고 : <span><%=prVO.getTotal_amount() %></span></div>
                    <br>
                    <hr>
                    <div>제품특징</div>
                    <div>
                        <span>#펭수&nbsp;&nbsp;</span><span>#펭수&nbsp;&nbsp;</span><span>#펭수&nbsp;&nbsp;</span><span>#펭수&nbsp;&nbsp;</span>
                    </div>


                </div>
            </form>
            <!-- 상품상세 content 오른쪽 상품정보 div -->

            <!-- 버튼 -->


        </div> <!-- -->

        <div class="filter-search">
            <div><button>위시리스트</button></div>
            <div><button>예약</button></div>
        </div>


    </div>
    <!-- 상품상세 content div-->

    <!-- 상품정보 네비게이션 바 -->
    <section class="product_nav">
        <div class="container">
            <div class="pnav">
                <nav class="nav_bar">
                    <ul>
                        <li><a href="#cursor_move_detail">상품상세</a></li>
                        <li><a href="#cursor_move_review">상품리뷰</a></li>
                        <li><a href="#cursor_move_qna">상품문의</a></li>
                        <li><a href="#cursor_move_delivery">배송/반납 안내</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>
    <!-- 상품정보 네비게이션 바 -->
    <!--  -->
    <!-- 상품 이미지 -->
    <div class="container">
        <div class="product_content" id="#cursor_move_detail">
            <div>
                <img src="${pageContext.request.contextPath}/resources/img/product01.jpg">

            </div>
            <div>
                <img src="${pageContext.request.contextPath}/resources/img/product02.jpg">
            </div>

        </div>

    </div>
    <!-- 상품 이미지 -->



    <!-- 상품 리뷰 -->
    <div class="container">
        <div class="pr_title" id="cursor_move_review">
            <h3>상품 리뷰
                <em class="cssf">(4)</em>
                <a href="javascript:review_write()"
                    style="float:right; background:#444; color:#fff; border:1px solid #444; font-size:14px; line-height:25px; height:25px; padding:5px 20px; text-align:center;">작성하기</a>
            </h3>
        </div>

        <div class="starRev">
            <div>구매고객 총별점</div>
            <div class="star_lay">
                <span class="starR1"></span>
                <span class="starR2"></span>
                <span class="starR1"></span>
                <span class="starR2"></span>
                <span class="starR1"></span>
                <span class="starR2"></span>
                <span class="starR1"></span>
                <span class="starR2"></span>
                <span class="starR1"></span>
                <span class="starR2"></span><br>
            </div>

            <div><%=String.format("%.2f", prVO.getGpa()) %>/5</div>
            <input type="hidden" id="reviewTotal" value="<%=prVO.getGpa() %>" />
        </div>


        <div class="review">
            <article>
                <ul style="display: flex;">
                    <li style="flex: 8.5;">
                        <div>asdasd흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)
                            흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰
                            내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)
                            흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰
                            내용)흠..낫배드..(리뷰 내용)흠..낫배드..(리뷰 내용)
                        </div>
                        <span>서어른이 답글1 조회3 #비트캠프 #내일 폭발(기타정보) </span>
                    </li>
                    <li style="flex: 1.5;"><img src="${pageContext.request.contextPath}/resources/img/card02@2.jpg">
                    </li>
                </ul>
                <hr style="border: 0.5px solid grey;">
            </article>
        </div>
    </div>

    <div class="reviewForm" style="display:none;">
        <h2>상품리뷰 작성</h2>
        <h3>리뷰 시 유의해 주세요!
            <br>
            상품과 관련 없는 내용, 비방, 광고, 불건전한 내용의 글은 사전 동의 없이 삭제될 수 있습니다.
        </h3>
        <br>
        <form id="ReviewForm" method="post" enctype="multipart/form-data">
            <input type="hidden" name="writetype" value=2 />
            <input type="hidden" name="product_num" value="<%=prVO.getProduct_num() %>" />
            <input type="hidden" name="nickname" value="비트캠프폭발" />
            <div>
                <label for="reviewcheck">평점</label>
                <div><input type="radio" name="reviewcheck" value="5" />★★★★★</div>
                <div><input type="radio" name="reviewcheck" value="4" />★★★★</div>
                <div><input type="radio" name="reviewcheck" value="3" />★★★</div>
                <div><input type="radio" name="reviewcheck" value="2" />★★</div>
                <div><input type="radio" name="reviewcheck" value="1" />★</div>
            </div>
            <br>
            <div>
                <textarea rows="20" cols="20" name="content" placeholder="내용을 작성해주세요."></textarea>
            </div>
            <br>
            <div>
                <input type="file" name="img" />
            </div>
            <div class="review_writebtn">
                <a href="javascript:void(0)">저장</a>
                <a href="javascript:void(0)">취소</a>
            </div>
        </form>
    </div>
    <!-- 상품 리뷰 -->


    <!-- 상품 문의 -->
    <div class="container">
        <div id="goodsQna" class="qna">
            <h3>상품Q&A&nbsp;
                <em class="cssf">(4)</em>
                <a href="javascript:qna_write()"
                    style="float:right; background:#444; color:#fff; border:1px solid #444; font-size:14px; line-height:25px; height:25px; padding:5px 20px; text-align:center;">작성하기</a>
            </h3>
            <div class="accordion">
                <ul>

                </ul>
            </div>
        </div>
        <div class="paginate" style="text-align:center;">

        </div>
        <div class="qnaForm" style="display:none;">
            <h2>상품Q&A 작성</h2>
            <h3>문의 시 유의해 주세요!
                <br>
                상품과 관련 없는 내용, 비방, 광고, 불건전한 내용의 글은 사전 동의 없이 삭제될 수 있습니다.
            </h3>
            <form id="ProductForm" method="post">
                <input type="hidden" name="writetype" value=1 />
                <input type="hidden" name="product_num" value="<%=prVO.getProduct_num() %>" />
                <div>
                    <br>
                    <label>제목</label>
                    <span><input type="text" value="" placeholder="제목을 작성해주세요." /></span>
                </div>
                <div>
                    <textarea rows="20" cols="20" placeholder="내용을 작성해주세요."></textarea>
                </div>

                <div>
                    <label for="privatecheck">공개 여부</label>
                    <span><input type="radio" name="privatecheck" value="공개" />공개</span>
                    <span><input type="radio" name="privatecheck" value="비공개" />비공개</span>
                </div>
                <div class="qna_writebtn">
                    <a href="javascript:void(0)">저장</a>
                    <a href="javascript:void(0)">취소</a>
                </div>
            </form>
        </div>
    </div>

    <script>
        function viewContent2() {
            var q = document.getElementById('q0');
            var a = document.getElementById('a0');

            if (q.style.display == 'none' && a.style.display == 'none') {
                q.style.display = 'table-row';
                a.style.display = 'table-row';
                return false;
            } else {
                q.style.display = 'none';
                a.style.display = 'none';
                return false;
            }
        }

        function viewContent1() {
            var q1 = document.getElementById('q1');
            var a1 = document.getElementById('a1');


            if (q1.style.display == 'none' && a1.style.display == 'none') {
                q1.style.display = 'table-row';
                a1.style.display = 'table-row';
                return false;
            } else {
                q1.style.display = 'none';
                a1.style.display = 'none';
                return false;
            }
        }
    </script>
    <!-- 상품 문의 -->


    <!-- 배송/반납  -->
    <div class="container">
        <div class="pr_title" id="cursor_move_delivery">배송/반납</div>
        <div class="baesong">
            1. 정기 구독에 의한 배송은 매 월 넷 째주 목요일에 발송됩니다. <br>
            2. 단순 고객 변심으로 인한 반납의 경우 신청한 주의 일요일에 반납 확정, 다음날인 월요일에 택배기사가 물건 회수를 하며 타 제품 쉐어/예약 요청 시 반납한 주 목요일에
            발송됩니다.<br>
            3. 앵간하면 그냥 쓰세요.<br>
        </div>

    </div>
    <!-- 배송/반납  -->



    <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>
                    <div class="tel">
                        <a href="#">ARS <em>1544-5252</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <!-- <h2><img src="s/img/logo_footer.png" alt="megabox"></h2> -->
                        <h2>로고1</h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>서울특별시 서초구 강남대로 459 <br><span class="bar2">대표자명 김진근</span>
                                <br><span class="bar2">사업자등록번호
                                    111-11-1111</span> 통신판매업신고번호 제 111호</p>
                            <p>Copyright 2020 by Bit Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- //footer -->
    <!-- 자바스크립트 라이브러리 -->

    <script src="${pageContext.request.contextPath}/resources/js/product/jquery.min_1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/product/mun.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/product/swiper.min.js"></script>

    <script>
        //배너 이미지 슬라이드
        var swiper = new Swiper('.swiper-container', {
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            var reviewScore = 0.00;
            reviewScore = document.getElementById('reviewTotal').value;
            reviewScore *= 10;
            //5개
            if (reviewScore == 50) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').addClass('on').prevAll('span').addClass('on');
            }
            else if (reviewScore >= 45 && reviewScore < 50) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 9).addClass('on');
            } else if (reviewScore >= 40 && reviewScore < 45) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 8).addClass('on');
            } else if (reviewScore >= 35 && reviewScore < 40) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 7).addClass('on');
            } else if (reviewScore >= 30 && reviewScore < 35) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 6).addClass('on');
            } else if (reviewScore >= 25 && reviewScore < 30) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 5).addClass('on');
            } else if (reviewScore >= 20 && reviewScore < 25) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 4).addClass('on');
            } else if (reviewScore >= 15 && reviewScore < 20) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 3).addClass('on');
            } else if (reviewScore >= 10 && reviewScore < 15) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 2).addClass('on');
            } else if (reviewScore >= 5 && reviewScore < 10) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').slice(0, 1).addClass('on');
            } else if (reviewScore >= 0 && reviewScore < 5) {
                $('.starRev span').parent().children('span').removeClass('on');
                $('.starRev span').children().first().addClass('on');
            } else {
                $('.starRev span').parent().children('span').removeClass('on');
            }
        })

        $('.starRev span').click(function () {
            $(this).parent().children('span').removeClass('on');
            $(this).addClass('on').prevAll('span').addClass('on');
            return false;
        });
    </script>
    <script>
        $('.review article ul li').click(function () {
            alert('클릭확인');
            if ($(this).children().first().css("-webkit-line-clamp") == 2) {
                $(this).children().first().css("-webkit-line-clamp", "6");
            } else {
                $(this).children().first().css("-webkit-line-clamp", "2");
            }
        });
    </script>
    <script src="${pageContext.request.contextPath}/resources/js/product/munqna.js"></script>
    <script>
        var scrollHeight = 0;
        function qna_write() {
            $('body').css("background", "grey");
            $(".qnaForm").show();
            scrollHeight = $("body").scrollTop(); // [var사용하지 않았으므로 전역스코프로 정의됨]열렸을떄 scrollTop 체크
            $("body").addClass('not_scroll'); //overflow:hidden 추가
            $('.qnaForm').css('position', 'fixed'); //최상위 div 고정
            $('.qnaForm').css('top', - scrollHeight + 100);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.qnaForm').css('left', 700);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가

        };
        $('.qna_writebtn a').click(function () {
            $("body").removeClass('not_scroll');
            $('.qnaForm').css('position', 'relative');//top값 해제
            $('.qnaForm').css('left', 0);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.qnaForm').css('top', 0);//최상위 div 고정해제
            $(".qnaForm").hide();
            $('body').css("background", "none");
            $('body').scrollTop(scrollHeight);
            //[popupOpen()일때의 의도적 전역변수 scrollHeight값]현재 스크롤된값=보이는화면
        });

        function review_write() {
            $('body').css("background", "grey");
            $(".reviewForm").show();
            scrollHeight = $("body").scrollTop(); // [var사용하지 않았으므로 전역스코프로 정의됨]열렸을떄 scrollTop 체크
            $("body").addClass('not_scroll'); //overflow:hidden 추가
            $('.reviewForm').css('position', 'fixed'); //최상위 div 고정
            $('.reviewForm').css('top', - scrollHeight + 100);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.reviewForm').css('left', 700);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가

        };
        $('.review_writebtn a').click(function () {
            $("body").removeClass('not_scroll');
            $('.reviewForm').css('position', 'relative');//top값 해제
            $('.reviewForm').css('left', 0);// 최상위 div에 현재 스크롤된값 = 보이는화면만큼 top값 추가
            $('.reviewForm').css('top', 0);//최상위 div 고정해제
            $(".reviewForm").hide();
            $('body').css("background", "none");
            $('body').scrollTop(scrollHeight);
            var frm = document.getElementById("ReviewForm");
            frm.action = "reviewAndQnaWrite.pr";
            frm.submit();
            frm.reset();
            //[popupOpen()일때의 의도적 전역변수 scrollHeight값]현재 스크롤된값=보이는화면
        });
    </script>
</body>

</html>