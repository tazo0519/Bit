<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/point.css" rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="point_wrap">
                <h2>포인트</h2>
                <div class="point_block">
                    <div class="point_content_1">
                        <b>보유 포인트</b>
                    </div>
                    <div class="point_content_2">
                        <h3>2000</h3><p>&nbsp;&nbsp;P</p>
                    </div>
                </div>
                <div class="point_history">
                    <h3>포인트 내역</h3>
                    <table>
                        <tr class="line2">
                            <th>변동일</th>
                            <th>내용</th>
                            <th>포인트</th>
                        </tr>
                        <tr class="line2">
                            <td>2020.01.01</td>
                            <td>후기작성</td>
                            <td>+500 Point</td>
                        </tr>
                        <tr class="line2">
                            <td>2020.01.01</td>
                            <td>구독료 차감</td>
                            <td>-1,000 Point</td>
                        </tr>
                    </table>
                </div>
                <div class="point_use">
                    <h3>포인트 사용</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;(다음결제 또는 배송시 적용됩니다.)</p>
                    <form id="point_form" name="point_form" method="POST" action="#">
                    <table>
                        <tr class="use_line">
                            <th><input type="radio" name="check" value="차감" class="point_radio">&nbsp;&nbsp;&nbsp;구독료 차감</th>
                        </tr>
                        <tr class="use_line">
                            <th><input type="radio" name="check" value="포장" class="point_radio">&nbsp;&nbsp;&nbsp;포장</th>
                        </tr> 
                        <tr class="use_line">
                            <td><input type="text" class="point_text"></td>
                        </tr>   
                        <tr class="use_line">
                            <td><input type="button" value="사용하기" class="point_button"></td>
                        </tr>    
                    </table>
                    </form>
                </div>
            </div>
</body>
</html>