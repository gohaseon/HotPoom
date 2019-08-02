<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/poomPhotoDetail.css">
    <link rel="stylesheet" href="css/paymentPopup.css">
    <link rel="stylesheet" href="css/poomDetail.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
<c:import url="/WEB-INF/template/paymentPopup.jsp"/>
<c:import url="/WEB-INF/template/poomPhotoDetailPopup.jsp"/>
    <div id="poomDetailSection">
        <div id="poomMainImage" style="background-image: url(img/poom/even-hotels-eugene-5405616297-4x3.jpg)">
        </div><!--//poomMainImage end-->
        <button id="viewPhotosBtn" type="button" class="btn">View Photos</button>
        <div id="poomDetailWrap">
            <h2>펫플러스 애견호텔</h2>
            <div id="poomAddress">경기도 부천시 원미구 계남로 60</div>
            <div id="hostUserProfile">
                <img id="hostUserProfileImage" src="profile/user/judy.jpg"/>
                <div id="hostUserName">
                    <span>최수정크크</span>
                </div>
                <div id="sendMessage" class="btn"><a href="message.html">호스트에게 연락하기</a></div>
            </div>
            <div id="poomInformationInner">
                <h3>기본 정보</h3>
                <div class="little_title"><i class="far fa-clock"></i> 체크인 10:00 ~ 체크아웃 13:00</div>
                <div class="little_title"><i class="fas fa-check"></i> 호스트의 소유중인 펫</div>
                <div id="hostUserPet">
                <img class="hostPetProfileImage" src="profile/pet/marmot.PNG">
                <img class="hostPetProfileImage" src="profile/pet/깐동생일.PNG">
                </div>
                <div class="little_title"><i class="fas fa-check"></i> 수요 가능 펫</div>
                <p>강아지 10마리</p>
                <div class="little_title"><i class="fas fa-check"></i> 편의시설</div>
                <p>충분한 사료</p>
            </div><!--//poomInformationInner end-->
            <div id="poomIntroduceInner">
                <h3>품 소개</h3>
                <div class="little_title"><i class="far fa-building"></i> 건물 유형 : Hotel</div>
                <div class="little_title"><i class="fas fa-check"></i> 소개</div>
                <div id="poomIntroduceDetail">
                    늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ
                    늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ
                    늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ
                    늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ늘 밝은 얼굴로 펫을 맞이합니다 ㅎㅎㅎ
                </div>
                <div class="little_title"><i class="fas fa-check"></i> 이용시 주의사항</div>
                <div id="precautions">
                    - 배변 패드
                    <br>
                    - 예방접종 : 심장 사상충
                    <br>
                    - 이곳은 에디터 부분이 입력되는 부분이기때문에 따닥따닥 붙어버려쪄염
                </div>
            </div><!--//poomIntroduceInner end-->
            <div id="reviewInner">
                <h3>리뷰</h3>
                <div id="grade"><i class="fas fa-star"></i> 4.8(2)</div>
                <div class="review_card">
                    <ul>
                        <li>
                            <div id="reviewNone">
                                아직 등록된 리뷰가 없습니다 <i class="far fa-sad-cry"></i>
                            </div>
                        </li>
                        <li>
                            <div class="review_card_content">저희 집 고양희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는
                            평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡
                            기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소
                            랑 저희 집를 많이 주는지 애기가 똥똥해져셔 왔더라구요... 아니 뭐 귀엽다고여 ㅎㅎㅎㅎ
                            </div>
                            <div class="review_card_img"><img src="profile/user/defaultProfile.jpg"/></div>
                            <div class="review_card_user_name">이주하</div>
                            <div class="review_card_date">2018.09</div>
                            <div class="review_card_warning">신고</div>
                        </li>
                        <li>
                            <div class="review_card_content">저희 집 고양희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는
                                평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡
                                기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소
                                랑 저희 집를 많이 주는지 애기가 똥똥해져셔 왔더라구요... 아니 뭐 귀엽다고여 ㅎㅎㅎㅎ
                            </div>
                            <div class="review_card_img"><img src="profile/user/defaultProfile.jpg"/></div>
                            <div class="review_card_user_name">이주하</div>
                            <div class="review_card_date">2018.09</div>
                            <div class="review_card_warning">신고</div>
                        </li>
                    </ul>
                </div>
            </div><!--//reviewInner end-->
            <div id="poomMapWrap">
                <h3>위치 정보</h3>
                <div id="kakaoMap"></div>
                <div class="little_title"><i class="fas fa-check"></i> 교통편</div>
                <div id="transportation">
                    이곳에 교통편을 입력시키면됩니당
                </div>
            </div><!--//map end-->
        </div><!--//poomDetailWrap end-->
        <div id="bookingWrap">
            <form id="bookingDetail">
                <div id="price">₩ <span id="dayPrice">15,000</span> / 박</div>
                <div id="bookingDate">
                    날짜
                    <br/>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="startpicker-input" type="text" aria-label="Date" autocomplete="off" placeholder="체크인">
                        <span class="tui-ico-date"></span>
                        <div id="startpicker-container" style="margin-left: -1px;"></div>
                    </div>
                    <span id="arrow"><i class="fas fa-arrow-right"></i></span>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="endpicker-input" type="text" aria-label="Date" autocomplete="off" placeholder="체크아웃">
                        <span class="tui-ico-date"></span>
                        <div id="endpicker-container" style="margin-left: -1px;"></div>
                    </div>
                </div><!--//bookingDate end-->
                <div id="petCount">
                    맡길 펫 마리 수
                    <input id="count" type="number" min="1" max="1000" value="1">
                </div>
                <div id="bookingPrice">
                    <div>₩ <span>15,000</span> x
                        <span id="dayCount"></span>박 x
                        <span id="petCnt">1</span>마리
                        <span id="priceCount"></span>
                    </div>
                    <div>서비스 수수료
                        <span id="fees"></span>
                    </div>
                    <div id="totalPrice">총액
                        <span id="totalAmount"></span>
                    </div>
                </div>
                <button id="bookingBtn" class="btn" type="submit">예약하기</button>
            </form>
        </div><!--//bookingWrap end-->
    </div><!--//poomDetailSection end-->
    <div id="poomBg">
        <div id="poomPhotoDetail">
            <div id="poomPhotoSection">
                <img id="poomPhoto" src="img/poom/poom_15.jpg">
                <div id="poomPhotoBtnWrap">
                    <div id="prevBtn" class="poom_photo_btn"><i class="fas fa-chevron-left"></i></div>
                    <div id="nextBtn" class="poom_photo_btn"><i class="fas fa-chevron-right"></i></div>
                </div>
            </div><!--//poomPhotoSection-->
            <div id="poomInfoSection">
                <i class="far fa-times-circle cursor_pointer"></i>
                <div id="poomPhotoListWrap">
                    <ul id="poomPhotoListInner">
                        <li class="poom_photo on ">
                            <img src="img/poom/poom_11.jpg" width="64px" height="64px" alt="너무나 잘 돌봐주는 집">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_12.jpg" width="64px" height="64px" alt="도마뱀을 맡아드립니다~">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_13.jpg" width="64px" height="64px" alt="나무나무! 나무에요">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_14.jpg" width="64px" height="64px" alt="하선이 바보">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_15.jpg" width="64px" height="64px" alt="수정이 생일">
                        </li>
                        <li class="poom_photo on ">
                            <img src="img/poom/poom_11.jpg" width="64px" height="64px" alt="앵주앵주">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_12.jpg" width="64px" height="64px" alt="깐동깐동">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_13.jpg" width="64px" height="64px" alt="곧 반예순">
                        </li>
                        <li class="poom_photo">
                            <img src="img/poom/poom_14.jpg" width="64px" height="64px"
                                 alt="이거 진짜 너무 힘들어요 이거 css진짜 너무 어려워요ㅜㅜㅜㅜ">
                        </li>
                        <li class="poom_photo">
                            <img class="poom_photo_img" src="img/poom/poom_15.jpg" width="64px" height="64px"
                                 alt="진짜 쉬운줄알고 잡았다가 뚝배기 터졌습니다... 제가 잘못했습니다.. .살려주세요......ㅜㅜㅜㅜㅜ">
                        </li>
                    </ul><!--//poomPhotoListBox-->
                    <div class="poom_photo_list_cover"></div>
                    <div class="poom_photo_list_cover"></div>
                </div><!--//poomPhotoListInner-->
                <p id="poomCntWrap"><span id="poomCntNow">1</span>/<span id="poomCnt"></span></p>
                <p id="poomInfo"></p>
            </div><!--//poomInfoSection-->
        </div><!--//poomPhotoDetail-->
    </div><!--//poomBg-->
<c:import url="/WEB-INF/template/footer.jsp"/>
<script src="/WEB-INF/js/paymentPopup.js"></script>
<script src="/WEB-INF/js/poomPhotoDetailPopup.js"></script>
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
    //****************************사이드바*****************************************

    //사이드바 움직이게하는 부분
    let $window = $(window);//윈도우객체(BOM)
    let $bookingDetail = $("#bookingDetail");

    $window.on("scroll",function () {
        //스크롤탑
        let sTop = $window.scrollTop();
        if(sTop>=730) {
            $bookingDetail.css({
                position: "fixed",
                top:0
            });
        }else {
            $bookingDetail.css({
                position: "relative"
            });
        }//if~else end
    });//on() end

    //달력부분
    let today = new Date();
    const picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: null,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: null,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        selectableRanges: [
            [today, new Date(today.getFullYear() + 1, today.getMonth(), today.getDate())]
        ],
        language:'ko'
    });


    //가격 자동 계산 부분
    let $dayCount = $("#dayCount");
    let $count = $("#count");
    let $petCnt = $("#petCnt");
    let $priceCount = $("#priceCount");
    let $dayPrice = $("#dayPrice");
    let $fees = $("#fees");
    let $totalAmount = $("#totalAmount");

    //날짜
    picker.on('change:end', test);
    //마리 수
    $count.on('change', test);

    function test() {
        let checkInVal = $("#startpicker-input").val();
        let checkOutVal = $("#endpicker-input").val();
        let checkIn = moment(checkInVal);
        let checkOut = moment(checkOutVal);
        let date = checkOut.diff(checkIn, 'days');
        $dayCount.text(date);

        let petCnt = $count.val();
        $petCnt.text(petCnt);


        let priceCount = 15000*date*petCnt;
        $priceCount.text(priceCount.toLocaleString());

        let fees = (15000*date*petCnt)/10;
        $fees.text(fees.toLocaleString());

        let totalPrice = priceCount+fees
        $totalAmount.text(totalPrice.toLocaleString());

    }
    //가격계산



    //****************************사이드바*****************************************



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
    });

    /*----------------------------------팝업----------------------------------------*/
    //버튼클릭하면 팝업 열림
    $("#viewPhotosBtn").on("click",function () {
        $("#poomBg").show();
    });


    // 불러온 사진 갯수
    let poomPhotoLength = $(".poom_photo").length;
    console.log(poomPhotoLength);
    let photoIdx = 1;
    let photoX = 0;
    let $poomPhotoListInner = $("#poomPhotoListInner");
    // 사진 갯수에 따른 photo_box의 left 한계값
    let poomPhotoLeft = 0;

    //poom사진 height 변경
    function changePoomPhotoSize() {

        /*        let poomWidth = $("#poomPhoto").css("width");

                poomWidth = poomWidth.substring(0, poomWidth.length - 2);

                console.log("width: " + poomWidth);*/

        //poom width 고정
        $("#poomPhoto").attr("width", 800);

        //pomm height 값
        let poomHeight = $("#poomPhoto").css("height");

        poomHeight = poomHeight.substring(0, poomHeight.length);

        console.log("height: " + poomHeight);

        // poom btn, section height값 조정
        /*$(".poomPhotoBtn").css("height", poomHeight);*/
        $("#poomPhotoSection").css("height", poomHeight);

        if (poomHeight >= 600) {
            $("#poomPhoto").attr("height", 600);
            $(".poomPhotoBtn").css("height", 600);
            $("#poomPhotoSection").css("height", 600);
        }//if() end

        console.log(-(parseInt(poomHeight) + 100)/2);

        /*$("#poomPhotoDetail").css("margin-top", -parseInt(poomHeight)/2);*/

    }//changePoomPhotoSize() end

    changePoomPhotoSize();



    //poom 사진리스트 길이
    function getPhotoListWidth() {

        poomPhotoLeft = poomPhotoLength * 80 + 19;

        $poomPhotoListInner.css("width",poomPhotoLeft);

        // 사진 전체갯수
        $("#poomCnt").text(poomPhotoLength);
    }

    getPhotoListWidth();

    /*-----------------------------사진 디테일--------------------*/



    // 이전사진 버튼
    $("#prevBtn").on("click", function () {

        photoX = -40 -(photoIdx - 4) * 80;

        if(photoIdx == 1) {
        } else if(photoIdx == 2) {
            photoIdx -= 1;
        } else if(photoIdx == 3) {
            photoIdx -= 1;
            photoX = 0 ;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
        } else if(photoIdx == poomPhotoLength - 1) {
            photoIdx -= 1;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
        } else if (photoIdx == poomPhotoLength) {
            photoIdx -= 1;
        } else if(photoIdx <= poomPhotoLength - 2) {
            photoIdx -= 1;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);

        }//if()~else() ens

        changePoomInfo();
    });//prev_photo click() end

    // 다음사진 버튼
    $("#nextBtn").on("click", function () {

        photoX = -40 -(photoIdx - 2) * 80;

        if(photoIdx == 1) {
            photoIdx += 1;
            changePoomInfo();
        } else if(photoIdx == 2) {
            photoIdx += 1;
            photoX = -40 ;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
            changePoomInfo();
        } else if(photoIdx == poomPhotoLength - 2) {
            photoIdx += 1;
            photoX += 40;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
            changePoomInfo();
        } else if(photoIdx == poomPhotoLength - 1) {
            photoIdx += 1;
            changePoomInfo();
        } else if (photoIdx == poomPhotoLength) {
            changePoomInfo();
        } else if(photoIdx >= 3) {
            photoIdx += 1;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
            changePoomInfo();
        }//if()~else() ens

    });//next_photo click() end

    // photoIdx에 따른 정보 변화
    function changePoomInfo() {

        if(photoIdx >= 3 && photoIdx <= poomPhotoLength - 2) {
            $(".poom_photo_list_cover").show();
        } else {
            $(".poom_photo_list_cover").hide();
        }

        $(".poom_photo").removeClass("on");
        $(".poom_photo").eq(photoIdx - 1).addClass("on");

        $("#poomCntNow").text(photoIdx);

        $("#poomInfo").text($(".poom_photo").eq(photoIdx-1).children().attr("alt"));
        $("#poomPhoto").attr("src", $(".poom_photo").eq(photoIdx-1).children().attr("src"));

        changePoomPhotoSize();
    }//changePoomInfo() end

    changePoomInfo();

    //poom사진 클릭 시
    $(".poom_photo img").on("click", function () {

        photoIdx = $(this).parent().index() + 1;

        console.log("photoIdx: " + photoIdx);

        if(photoIdx == 1) {

            $poomPhotoListInner.css("left", 0);
            changePoomInfo();
        } else if(photoIdx == 2) {
            photoIdx = 2;
            console.log(photoX);
            $poomPhotoListInner.css("left", 0);
            changePoomInfo();
        } else if(photoIdx == 3) {
            photoX = -40;
            $poomPhotoListInner.css("left", photoX);
            console.log(photoX);
            changePoomInfo();
        } else if(photoIdx == poomPhotoLength - 2) {
            $poomPhotoListInner.css("left", ((photoIdx-3) * -80) - 40);
            changePoomInfo();
        } else if(photoIdx == poomPhotoLength - 1) {
            $poomPhotoListInner.css("left", (photoIdx-3) * -80);
            changePoomInfo();
        } else if (photoIdx == poomPhotoLength) {
            $poomPhotoListInner.css("left", (photoIdx-4) * -80);
            changePoomInfo();
        } else if(photoIdx >= 4) {
            photoX = -40 + ((photoIdx - 3) * -80);
            $poomPhotoListInner.css("left", photoX);
            changePoomInfo();
        }//if()~else() ens

    });//.poom_photo img() end

    $("#poomInfoSection .far").click("on", function () {
        $("#poomBg").hide();
    });//#poomInfoSection .fas click() end

</script>
</body>
</html>