<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/booking.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
    <div id="reviewRegisterBg" class="bg">
        <div id="reviewRegisterPopup">
            <h3 class="screen_out">리뷰 등록</h3>
            <form id="reviewRegisterForm" action="" method="post">
                <button type="button" class="close_popup far fa-times-circle"></button>
                <div id="poomImg" style='background-image:url("img/Lighthouse.jpg")'></div><!--사진-->
                <div id="poomName">TME 마을</div>
                <div id="poomDate">8.18 ~ 8.19, 2019</div>
                <textarea id="poomTextarea" name="content" placeholder="리뷰를 입력해주세요."></textarea>
                <div id="poomGrade">
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                </div><!--//poomGrade-->
                <button type="submit" id="reviewRegisterBtn" class="btn">등록</button>
            </form>
        </div><!--//reviewRegisterPopup-->
    </div><!--//reviewRegisterBg-->

    <div id="bookingSection">
        <h2>예약 내역</h2>
        <ul id="cardList">
            <li class="card">
                <div class="poom_img" style='background-image:url("img/poom/poom_1.jpg")'></div><!--사진-->
                <div class="name"><span class="type fas fa-home"></span> 가족처럼 돌봐주는 집</div>
                <div class="date">08.18 ~ 08.19, 2019</div>
                <div class="poom_type">예약확정</div>
                <div class="address">서울특별시 관악구 남부순환로 1820</div>
                <div class="pet">강아지 3마리</div>
                <div class="message"><a href=""><i class="fas fa-comment-dots"></i> 호스트에게 메세지</a></div>
                <div class="detail_link"><a href="">해당 품 상세 페이지 바로가기</a></div>
                <div class="price">&#8361; <span>79,000</span> / 박</div>
                <div class="btns_wrap">
                    <a href="bill.html" class="bill_btn btn">예약 명세서</a><!--//middle 붙이면 버튼 위치가 가운데로-->
                    <button class="review_btn btn">리뷰 작성</button><!--//기간이 지나고 리뷰가 작성이 안됐을때만 있음-->
                </div><!--//btn_wrap-->
            </li>
            <li class="card">
                <div class="poom_img" style='background-image:url("img/poom/poom_2.jpg")'></div><!--사진-->
                <div class="name"><span class="type fas fa-building"></span> 부산 1등 애견호텔</div>
                <div class="date">09.18 ~ 09.19, 2019</div>
                <div class="poom_type">다녀옴</div>
                <div class="address">서울특별시 관악구 남부순환로 1820</div>
                <div class="pet">강아지 3마리</div>
                <div class="message"><a href=""><i class="fas fa-comment-dots"></i> 호스트에게 메세지</a></div>
                <div class="detail_link"><a href="">해당 품 상세 페이지 바로가기</a></div>
                <div class="price">&#8361; <span>79,000</span> / 박</div>
                <div class="btns_wrap">
                    <a href="bill.html" class="bill_btn btn">예약 명세서</a>
                    <button class="review_btn btn">리뷰 작성</button>
                </div><!--//btn_wrap-->
            </li>
        </ul>
    </div><!--//bookingSection-->
<c:import url="/WEB-INF/template/footer.jsp"/>
<script>
    /* header 관련 */
    $("#headerProfileImage").click(function (e) {

        $("#lnb").slideToggle(200);
        e.stopPropagation();
    });

    $("#headerLogin").click(function () {
        $("#gnbWrap").show();
        $(this).hide();
    });

    $("body").click(function () {
        // alert("zz");
        $("#lnb").hide();


    })
    /* header 관련 end */


    /******************* 동호 *************************/
    const $closePopup = $(".close_popup");
    const $reviewRegisterBg = $("#reviewRegisterBg");
    const $poomGrade = $("#poomGrade i");
    const $reviewBtn = $(".review_btn");
    const $poomImg = $("#poomImg");
    const $poomName = $("#poomName");
    const $poomDate = $("#poomDate");
    const $poomTextarea = $("#poomTextarea");
    const $reviewRegisterForm = $("#reviewRegisterForm");
    let star = 0;

    //팝업에서 x를 눌렀을 때
    $closePopup.on("click",function () {
        $reviewRegisterBg.hide();
    })//close_popup click end

    //평점 클릭했을 때
    $poomGrade.on("click", function () {
        //누른 평점의 인덱스를 가져옴
        let index = $(this).index();
        //alert(index);
        star = index+1;

        //별 채우기 바꾸는 each문
        $.each($poomGrade,function () {
        $(this).removeClass("fas").addClass("far");
            if($(this).index()<=index){
                $(this).removeClass("far").addClass("fas");
            }//if end
        })//$poomGrade each end
    });//$poomGrade click end

    //리뷰 작성을 눌렀을 때
    $reviewBtn.on("click", function () {
        let $currLi = $(this).parents("li");
        let img = $currLi.find(".poom_img").css("background-image");
        //alert(img);

        //정보 가져오고 내용 초기화
        $poomImg.css("background-image",img);
        $poomName.text($currLi.find(".name").text());
        $poomDate.text($currLi.find(".date").text());
        $poomTextarea.val("");//textarea 초기화
        $poomGrade.removeClass("fas").addClass("far");//별 초기화

        $reviewRegisterBg.show();
    })//$reviewBtn click end

    //리뷰 작성 완료
    $reviewRegisterForm.on("submit",function () {
        //input type hidden은 DB참고..
    })//$reviewRegisterForm end

    /******************* 동호 *************************/
</script>
</body>
</html>