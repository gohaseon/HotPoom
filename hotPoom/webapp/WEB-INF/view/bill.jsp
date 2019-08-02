<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/bill.css">

</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
    <div id="billSection">
        <h1>예약 상세 내역</h1>
        <div id="bookingNum" class="booking_detail">
            <div class="title">예약번호</div>
            <p class="content">2019080700001</p>
        </div><!--//bookingNum end-->
        <div id="poomMainImage" style="background-image: url(img/poom/even-hotels-eugene-5405616297-4x3.jpg)">
        </div><!--//poomMainImage end-->
        <div id="bookingTitle" class="booking_detail">
            <div class="title">펫플러스 애견호텔</div>
            <p class="content">8.17 ~ 8.18, 2019</p>
        </div><!--//bookingTitle end-->
        <div id="bookingDate" class="booking_detail">
            <div class="title">체크인
                <p class="content">8월 17일 15:00</p>
            </div>
            <div id="checkOut" class="title">체크아웃
                <p class="content">8월 18일 11:00</p>
            </div>
        </div><!--//bookingDate end-->
        <div id="bookingPet" class="booking_detail">
            <div class="title">펫</div>
            <p id="species" class="content">강아지</p>
            <p id="animalNum" class="content">1마리</p>
        </div><!--//bookingPet end-->
        <div id="bookingAddress" class="booking_detail">
            <div class="title">주소</div>
            <p class="content">경기도 부천시 원미구 계남로 60</p>
            <div id="kakaoMap"></div>
        </div><!--//bookingAddress end-->
        <div id="bookingRule" class="booking_detail">
            <div class="title">이용 규칙</div>
            <div class="content">준비물 : 사료, 배변판
                <br>
                예방접종 : 심장 사상충
            </div>
        </div><!--//bookingRule end-->
        <div id="bookingRequest" class="booking_detail">
            <div class="title">요청 사항</div>
            <div class="content">
                우리댕댕이 잘 부탁 드료욤
            </div>
        </div><!--//bookingRequest end-->
        <div id="bookingCharge" class="booking_detail">
            <div class="title">청구액</div>
            <div id="payout">
                <p class="content">15,000 X 1박</p>
                <p class="content charge">15,000원</p>
            </div>
            <div id="fees">
                <p class="content">서비스 수수료</p>
                <p class="content charge">1,500원</p>
            </div>
            <div id="totalAmount">
                <p class="content">총 금액</p>
                <p class="content charge">16,500원</p>
            </div>
        </div><!--//bookingCharge end-->
        <div id="payment" class="booking_detail">
            <div class="title">결제</div>
            <p class="content">신한은행</p>
            <p id="accountNum" class="content">110-000-000000</p>
            <div id="totalPayment">
                <p class="content">총 지불 금액</p>
                <p class="content charge">16,500원</p>
            </div>
        </div><!--//bookingCharge end-->
        <button id="checkBtn" class="btn" type="button">확인</button>
    </div><!--//billSection end-->

<c:import url="/WEB-INF/template/footer.jsp"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=be5825a36e55f8d6d9fa39f1d0faa319"></script>
<script>

    //*************카카오맵***********************************************************
    var mapContainer = document.getElementById('kakaoMap'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.4809615, 126.9521689), // 지도의 중심좌표
            level: 4, // 지도의 확대 레벨,

            //지도 확대축소 막고싶으면
            scrollwheel :false,
            draggable:false
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    var imageSrc = "img/marker.png", // 마커이미지의 주소입니다
        imageSize = new kakao.maps.Size(100, 100), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
        markerPosition = new kakao.maps.LatLng(37.4809615, 126.9521689); // 마커가 표시될 위치입니다

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition,
        image: markerImage // 마커이미지 설정
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    //****************************카카오맵*****************************************

    $("#headerProfileImage").click(function (e) {
        $("#lnb").slideToggle(200);
        e.stopPropagation();
    });

    $("#headerLogin").click(function () {
        $("#gnbWrap").show();
        $(this).hide();
    });

    $("body").click(function () {
        $("#lnb").hide();
    });

</script>
</body>
</html>