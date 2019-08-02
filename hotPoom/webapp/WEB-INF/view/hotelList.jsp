<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/hotelList.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
    <div id="filterSection">
        <h3 class="screen_out">필터 선택</h3>
        <button id="datePickerBtn" class="btn test">날짜 선택</button>

        <button id="petTypeBtn" class="btn test">펫 종류</button>
        <button id="petNumBtn" class="btn test">마릿수</button>
        <button id="priceRangeBtn" class="btn test">가격</button>
        <button id="sortBtn" class="btn test">정렬순</button>
        <div id="sortInner" class="popup"><!--//정렬 누를때만 나옴-->
            <button id="gradeBtn" class="btn">평점순</button>
            <button id="priceBtn" class="btn">가격순</button>
        </div><!--//sortInner-->
        <div id="datePickerPopup" class="popup">
            <div class="tui-datepicker-input tui-datetime-input tui-has-focus end">
                <input id="endpicker-input" type="text" aria-label="Date" style="display: none">
                <span class="tui-ico-date"></span>
                <div id="endpicker-container" style="margin-left: -1px;"></div>
            </div><!--//end-->
            <div class="tui-datepicker-input tui-datetime-input tui-has-focus start">
                <input id="startpicker-input" type="text" aria-label="Date" style="display: none">
                <span class="tui-ico-date"></span>
                <div id="startpicker-container" style="margin-left: -1px;"></div>
            </div><!--//start-->
            <button id="datePickerCloseBtn" class="btn">확 인</button>
        </div><!--//datePickerPopup-->
        <div id="petTypePopup" class="popup">
            <input id="petTypeInput"/>
            <button id="petTypeCloseBtn" class="btn">확 인</button>
        </div><!--//petTypePopup-->
        <div id="petNumPopup" class="popup">
            <button id="minusBtn" class="btn"><i class="fas fa-minus"></i></button>
            <input id="petNumInput"/>
            <button id="plusBtn" class="btn"><i class="fas fa-plus"></i></button>
            <button id="petNumCloseBtn" class="btn">확 인</button>
        </div><!--//petNumPopup-->
        <div id="priceRangePopup" class="popup">
            <input id="lowestPriceInput"/> <span>-</span> <input id="highestPriceInput">
            <span id="lowestWon" class="won">&#8361;</span><span id="highestWon" class="won">&#8361;</span>
            <button id="priceRangeCloseBtn" class="btn">확 인</button>
        </div><!--//priceRangePopup-->
    </div><!--//filterSection-->
    <div id="hotelListSection"><!--//호텔리스트, 지도, 페이징-->
        <div id="hotelListWrap"><!--//호텔리스트-->




        </div><!--//hotelListWrap-->
        <div id="map"></div><!--//map-->
        <div id="paginate">
            <a href="" title="이전 페이지로"><i class="fas fa-chevron-left"></i><span class="screen_out">이전 페이지</span></a>
            <a href="" title="1">1</a>
            <a href="" title="2">2</a>
            <a href="" title="3">3</a>
            <a href="" title="4">4</a>
            <a href="" title="5">5</a>
            <a href="" title="다음 페이지로"><i class="fas fa-chevron-right"></i><span class="screen_out">다음 페이지</span></a>


        </div><!--//paginate-->
    </div><!--//hotelListSection-->
<c:import url="/WEB-INF/template/footer.jsp"/>
<script type="text/template" id="hotelListTmp">
<@ _.each(hotelList, function(hotel) { @>
<div class="big_card_content" data-lat="<@=hotel.lat@>" data-lng="<@=hotel.lng@>">
    <div class="photo_content">
        <ul class="photo_box">
            <@ _.each(hotel.poomImgList, function(poom) { @>
                <li class="poom_photo">
                    <img src="img/poom/<@=poom.poomImg@>" width="248px" height="248px"/>
                </li><!--//poom_photo-->
            <@})@>
        </ul><!--//photo_box-->
    </div><!--//photo_content-->
    <div class="photo_cover">
        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
    </div><!--//photo_cover-->
    <div class="poom_content">
        <a class="poom_name" href=""><i class="fas fa-home"></i> 가족처럼 돌봐주는 집</a>
        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
        <a class="poom_animal" href="">강아지 3마리 </a>
        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
        <p class="poom_price">￦ 79,000 / 박</p>
        <div class="poom_bookmark"></div>
    </div><!--//poom_content-->
</div><!--//big_card_content-->
<@})@>
</script><!--//hotelListTmp-->
<script>
    /********************* 동호 *********************************/

    /* datePicker API 관련 start */
    let today = new Date();
    const picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: today,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: today,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        selectableRanges: [
            [today, new Date(today.getFullYear() + 1, today.getMonth(), today.getDate())]
        ],
        language:'ko',
        showAlways: true
    });//datePicker
    const startPicker = picker.getStartpicker();
    const endPicker = picker.getEndpicker();

    const $start = $(".start");


    picker.on("change:start",function () {
        console.log("change:start");
        $start.hide();

    })
    picker.on("change:end",function () {
        console.log("change:end");
    })
    /* datePicker API 관련 end */

    _.templateSettings = {interpolate: /\<\@\=(.+?)\@\>/gim,evaluate: /\<\@([\s\S]+?)\@\>/gim,escape: /\<\@\-(.+?)\@\>/gim};
    let hotelListTmp = _.template($("#hotelListTmp").html());

    const $datePickerPopup = $("#datePickerPopup");
    const $datePickerCloseBtn = $("#datePickerCloseBtn");
    const $datePickerBtn = $("#datePickerBtn");
    const $petTypeCloseBtn = $("#petTypeCloseBtn");
    const $petTypePopup = $("#petTypePopup");
    const $petTypeBtn = $("#petTypeBtn");
    const $petTypeInput = $("#petTypeInput");
    const $petNumPopup = $("#petNumPopup");
    const $petNumInput = $("#petNumInput");
    const $petNumBtn = $("#petNumBtn");
    const $petNumCloseBtn = $("#petNumCloseBtn");
    const $plusBtn = $("#plusBtn");
    const $minusBtn = $("#minusBtn");
    const $priceRangePopup = $("#priceRangePopup");
    const $priceRangeBtn = $("#priceRangeBtn");
    const $priceRangeCloseBtn = $("#priceRangeCloseBtn");
    const $lowestPrice = $("#lowestPriceInput");
    const $highestPrice = $("#highestPriceInput");
    const $sortBtn = $("#sortBtn");
    const $sortInner = $("#sortInner");
    const $sortInnerBtns = $("#sortInner .btn");
    const $map = $("#map");
    const $gradeBtn = $("#gradeBtn");
    const $priceBtn = $("#priceBtn");
    let $hotelListWrap = $("#hotelListWrap");
    const $paginate = $("#paginate");
    const $hotelListSection = $("#hotelListSection");

    //필터팝업 안의 값들
    let startDate;
    let endDate;
    let petType;
    let petNum;
    let lowestPrice = 0;
    let highestPrice = 0;
    let sort = 1;
    let positions = []; //지도에 넣기 위한 배열

    let left;


    //$map.css("width",window.innerWidth-720);



    //날짜선택 버튼을 눌렀을 때 팝업 보여줌
    $datePickerBtn.on("click",function () {
        $(".popup").not($datePickerPopup).hide();
        picker.setStartDate(today);
        picker.setEndDate(today);
        $start.show();
        $datePickerPopup.slideToggle(100);
    })//$datePickerBtn click end

    //날짜선택 팝업에서 확인을 눌렀을 때 팝업 사라짐
    $datePickerCloseBtn.on("click",function () {
        $(".popup").hide();
        startDate = startPicker.getDate();
        endDate = endPicker.getDate();
        $datePickerBtn.text(moment(startDate).format("M월 D일 ~ ") + moment(endDate).format("M월 D일"));
        $datePickerPopup.slideToggle(100);
    });//$datePickerCloseBtn click end

    //펫종류 버튼을 눌렀을 때 팝업 보여줌
    $petTypeBtn.on("click", function () {
        $(".popup").not($petTypePopup).hide();
        left = $(this).position().left;
        $petTypePopup.css("left",left+"px");
        $petTypeInput.text("");
        $petTypePopup.slideToggle(100);
    });//$petTypeBtn click end

    //펫종류 팝업에서 확인을 눌렀을 때 팝업 사라짐
    $petTypeCloseBtn.on("click",function () {
        petType = $petTypeInput.val();
        if(petType.length>0 && petType!="") {
            $petTypeBtn.text(petType);
        }//if end
        $petTypePopup.slideToggle(100);
    })//$petTypeCloseBtn click end

    //마릿수 버튼을 눌렀을 때 팝업 보여줌
    $petNumBtn.on("click", function () {
        $(".popup").not($petNumPopup).hide();
        left = $(this).position().left;
        $petNumPopup.css("left",left+"px");
        $petNumInput.val("1");
        petNum = 1;
        $petNumPopup.slideToggle(100);
    });//$petTypeBtn click end

    //마릿수 팝업에서 확인을 눌렀을 때 팝업 사라짐
    $petNumCloseBtn.on("click",function () {
        petNum = $petNumInput.val();
        if(petNum>0) {
            $petNumBtn.text(petNum+" 마리");
        }//if end
        $petNumPopup.slideToggle(100);
    })//$petTypeCloseBtn click end

    //+를 눌렀을 때
    $plusBtn.on("click", function () {
        petNum++;
        $petNumInput.val(petNum);
    })//$plusBtn click end

    //-를 눌렀을 때
    $minusBtn.on("click", function () {
        petNum--;
        if(petNum < 1) {
            petNum = 1;
        }//if end
        $petNumInput.val(petNum);
    })//$plusBtn click end

    //가격 버튼을 눌렀을 때 팝업 보이기
    $priceRangeBtn.on("click",function () {
        $(".popup").not($priceRangePopup).hide();
        left = $(this).position().left;
        $priceRangePopup.css("left",left+"px");
        $lowestPrice.val(0);
        lowestPrice = 0;
        $highestPrice.val(0);
        highestPrice = 0;
        $priceRangePopup.slideToggle(100);
    })//$priceRangeBtn click end

    //가격 팝업의 확인 버튼을 눌렀을 때 팝업 숨기기
    $priceRangeCloseBtn.on("click", function () {
        lowestPrice = $lowestPrice.val();
        highestPrice = $highestPrice.val();
        console.log("시작");
        console.log("low: "+lowestPrice);
        console.log("high: "+highestPrice);
        if(lowestPrice>0 || highestPrice>0) {
            console.log(1);
            if(highestPrice<lowestPrice) {
            console.log(2);
                highestPrice = lowestPrice;
            }//if end
            console.log("low: "+lowestPrice);
            console.log("high: "+highestPrice);
            $priceRangeBtn.html("&#8361;"+lowestPrice+" ~ &#8361;"+highestPrice);
        }//if end
        $priceRangePopup.slideToggle(100);
    })//$priceRangeCloseBtn click end

    //정렬버튼을 눌렀을 때 보이기
    $sortBtn.on("click", function () {
        $(".popup").not($sortInner).hide();
        left = $(this).position().left;
        $sortInner.css("left",left+"px");
        $sortInner.slideToggle(100);
    })//$sortBtn click end

    //정렬팝업 안의 버튼을 눌렀을 때
    $sortInnerBtns.on("click",function () {
        $sortBtn.text($(this).text());
        $sortInner.slideToggle(100);
    })//$sortInnerBtns click end

    //평점순을 눌렀을 때
    $gradeBtn.on("click",function () {
        sort = 1;
    })//$gradeBtn click end

    $priceBtn.on("click",function () {
        sort = 2;
    })//$priceBtn click end

    //hotelList 가져오기
    function getHotelList() {
        $.ajax({
            url: 'json/hotelList.json',
            data: {
                "startDate":startDate,
                "endDate":endDate,
                "petType":petType,
                "petNum":petNum,
                "lowestPrice":lowestPrice,
                "highestPrice":highestPrice,
                "sort":sort
            },
            type: 'POST',
            dataType:"json",
            error:function(xhr,error,code) {
                alert("점검중!");
                console.log(code);
            },//error end
            success: function(json){
                console.log(json);
                $hotelListWrap.html(hotelListTmp({"hotelList":json.hotelList}));
                $paginate.html(json.paginate);
                $map.css("height",$hotelListWrap.css("height"));

                //배열에 위도, 경도를 넣음
                $(".big_card_content").each(function () {
                    let lat = $(this).attr("data-lat");
                    let lng = $(this).attr("data-lng");

                    positions.push({
                        title: '카카오',
                        latlng: new kakao.maps.LatLng(lat, lng)
                    });//push end
                })//each end
                console.log(positions);
            }//success end
        });//ajax end
    }//getHotelList end
    getHotelList();


    $(window).on("click",function (e) {

        console.log(e.target);


        if($(e.target).hasClass("test")) {
            console.log("있음!!");
        }else {
            $(".popup").hide();
        }
    })



    /********************* 동호 *********************************/
</script>
</body>
</html>