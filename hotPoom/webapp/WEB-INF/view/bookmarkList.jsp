<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/bookmarkBigCard.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
    <div id="titleSection">
        <h1>북마크 목록</h1>
    </div><!-- titleSection end -->
    <div id="bookmarkListSection">
        <div id="bookmarkCompareBtnWrap">
            <button id="bookmarkResetBtn" class="btn bookmark_btn">초기화</button>
            <button id="bookmarkCompareBtn" class="btn bookmark_btn" disabled>비교하기 0/3</button>

        </div><!-- bookmarkCompareBtnWrap end -->
        <hr>
        <div id="bookmarkListWrap">
            <div class="poom_inner" data-lat="37.809817" data-lng="127.5228133" data-price="27,000">
                <div class="big_card_content">
                    <div class="photo_content">
                        <ul class="photo_box">
                            <li class="poom_photo">
                                <img src="img/poom/poom_1.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_2.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_3.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_4.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_5.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                        </ul><!--//photo_box-->
                    </div><!--//photo_content-->
                    <div class="photo_cover">
                        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
                        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
                    </div>
                    <div class="poom_content">
                        <a class="poom_name" href=""><i class="fas fa-home"></i> 가족처럼 돌봐주는 집</a>
                        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
                        <a class="poom_animal" href="">강아지 3마리 </a>
                        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
                        <p class="poom_price">￦ 27,000 / 박</p>
                        <div class="poom_bookmark"></div>
                    </div>
                </div><!--//card_content-->
                <input type="checkbox" name="bookmark" class="bookmark_checkbox"/>
            </div><!--//poom_inner end-->
            <div class="poom_inner" data-lat="37.7636987" data-lng="128.8824904" data-price="37,000">
                <div class="big_card_content">
                    <div class="photo_content">
                        <ul class="photo_box">
                            <li class="poom_photo">
                                <img src="img/poom/poom_2.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_1.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->

                            <li class="poom_photo">
                                <img src="img/poom/poom_3.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_4.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_5.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                        </ul><!--//photo_box-->
                    </div><!--//photo_content-->
                    <div class="photo_cover">
                        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
                        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
                    </div>
                    <div class="poom_content">
                        <a class="poom_name" href=""><i class="fas fa-home"></i> 가족처럼 돌봐주는 집</a>
                        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
                        <a class="poom_animal" href="">강아지 3마리 </a>
                        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
                        <p class="poom_price">￦ 37,000 / 박</p>
                        <div class="poom_bookmark"></div>
                    </div>
                </div><!--//card_content-->
                <input type="checkbox" name="bookmark" class="bookmark_checkbox"/>

            </div><!--//poom_inner end-->
            <div class="poom_inner" data-lat="37.432124" data-lng="127.1268753" data-price="47,000">
                <div class="big_card_content">
                    <div class="photo_content">
                        <ul class="photo_box">
                            <li class="poom_photo">
                                <img src="img/poom/poom_3.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_1.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_2.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->

                            <li class="poom_photo">
                                <img src="img/poom/poom_4.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_5.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                        </ul><!--//photo_box-->
                    </div><!--//photo_content-->
                    <div class="photo_cover">
                        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
                        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
                    </div>
                    <div class="poom_content">
                        <a class="poom_name" href=""><i class="fas fa-home"></i> 족처럼 돌봐주는 집</a>
                        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
                        <a class="poom_animal" href="">강아지 3마리 </a>
                        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
                        <p class="poom_price">￦ 47,000 / 박</p>
                        <div class="poom_bookmark"></div>
                    </div>
                </div><!--//card_content-->
                <input type="checkbox" name="bookmark" class="bookmark_checkbox"/>

            </div><!--//poom_inner end-->
            <div class="poom_inner" data-lat="37.5658049" data-lng="126.9729574" data-price="57,000">
                <div class="big_card_content">
                    <div class="photo_content">
                        <ul class="photo_box">
                            <li class="poom_photo">
                                <img src="img/poom/poom_4.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_1.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_2.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_3.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->

                            <li class="poom_photo">
                                <img src="img/poom/poom_5.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                        </ul><!--//photo_box-->
                    </div><!--//photo_content-->
                    <div class="photo_cover">
                        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
                        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
                    </div>
                    <div class="poom_content">
                        <a class="poom_name" href=""><i class="fas fa-home"></i> 가족처럼 돌봐주는 집</a>
                        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
                        <a class="poom_animal" href="">강아지 3마리 </a>
                        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
                        <p class="poom_price">￦ 57,000 / 박</p>
                        <div class="poom_bookmark"></div>
                    </div>
                </div><!--//card_content-->
                <input type="checkbox" name="bookmark" class="bookmark_checkbox"/>

            </div><!--//poom_inner end-->
            <div class="poom_inner" data-lat="37.5193763" data-lng="126.9743402" data-price="67,000">
                <div class="big_card_content">
                    <div class="photo_content">
                        <ul class="photo_box">
                            <li class="poom_photo">
                                <img src="img/poom/poom_5.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_1.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_2.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_3.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->
                            <li class="poom_photo">
                                <img src="img/poom/poom_4.jpg" width="248px" height="248px"/>
                            </li><!--//poom_photo-->

                        </ul><!--//photo_box-->
                    </div><!--//photo_content-->
                    <div class="photo_cover">
                        <i class="photo_card_btn prev_photo fas fa-chevron-left" data-length="5"></i>
                        <i class="photo_card_btn next_photo fas fa-chevron-right" data-length="5"></i>
                    </div>
                    <div class="poom_content">
                        <a class="poom_name" href=""><i class="fas fa-home"></i> 가족처럼 돌봐주는 집</a>
                        <a class="poom_address" href="">경기도 부천시 원미구 계남로 60</a>
                        <a class="poom_animal" href="">강아지 3마리 </a>
                        <p class="poom_star"><i class="fas fa-star"></i> 4.8 (16)</p>
                        <p class="poom_price">￦ 67,000 / 박</p>
                        <div class="poom_bookmark"></div>
                    </div>
                </div><!--//card_content-->
                <input type="checkbox" name="bookmark" class="bookmark_checkbox"/>

            </div><!--//poom_inner end-->
        </div><!-- bookmarkListWrap end -->
        <div id="bookmarkCompareWrap"></div>
        <div id="mapCompareWrap"></div>
    </div><!-- bookmarkListSection end -->
<c:import url="/WEB-INF/template/link.jsp"/>
<script>
    let checkedCnt=0;
    let dWidth = window.innerWidth;
    //console.log("ddd"+dWidth);
    let whiteSpace = (dWidth-1100)/2;//도큐멘트 전체크기에서 content크기를 빼서/2를 해줌
    const lefts = [330+whiteSpace,585+whiteSpace,841+whiteSpace];

    getCheckedEvent();

    function getCheckedEvent(){
        $(".bookmark_checkbox").change(function () {//checkbox가 변했을 때
            // alert("test");
            checkedCnt=$("input:checkbox[name=bookmark]:checked").length;//checked된 애의 개수를 가져옴
            //alert(checkedCnt);
            if (checkedCnt>1){//체크된게 2개 이상부터 버튼 활성화
                $("#bookmarkCompareBtn").addClass("compare_btn");
                if (checkedCnt<4){//체크된게 3개까지는 버튼 활성화
                    $("#bookmarkCompareBtn").css("background-color", "#C50532").prop("disabled", false);
                }else {//만약 3개보다 더 눌렀을 때 체크못하게
                    checkedCnt=checkedCnt-1;
                    $(this).prop("checked", false);
                }//if~else end
            }else{//체크를 풀어서 2개 미만일 때 다시 버튼 비활성화
                $("#bookmarkCompareBtn").css("background-color", "#b3b3b3").prop("disabled", true);
            }//if~else end
            $("#bookmarkCompareBtn").text("비교하기 "+checkedCnt+"/3");//버튼에 체크된 개수 표시
        });//bookmark_checkbox checked end
    }//getCheckedEvent() end

    let positions = [];

    var bounds = new kakao.maps.LatLngBounds();

    let price = [];
    $("#bookmarkCompareBtn").click(function () {//비교하기 버튼 눌렀을 때
        $("#bookmarkCompareWrap").show();
        $("#bookmarkResetBtn").show().addClass("compare_btn");
        $("#mapCompareWrap").show();
        $(".bookmark_checkbox").hide();
        let $checked = $("input:checked");//체크된 애들을 가져옴
        const $compareBoxes = $checked.parent();//체크된 애들의 부모요소 선택

        $compareBoxes.each(function(idx) {//체크된 개수만큼 돌기
            const $this = $(this);
            lat = $this.attr("data-lat");
            lng = $this.attr("data-lng");
            price = $this.attr("data-price");

            positions.push({
                title: idx,
                latlng: new kakao.maps.LatLng(lat, lng)
            });//push end



            const left = $this.offset().left;//품카드의 left값을 구함
            const top = $this.offset().top;//품카드의 top값을 구함

            this.dataset.left = left+51;//품카드에 체크박스의 크기까지 더해 data에 left값 set
            this.dataset.top = top;

            if(idx>0) {//시작하는 곳을 원래 있던 카드에서 시작하게 하기위해
                this.dataset.top = parseInt(this.dataset.top)+54;
            }//if end



        });//compareBoxes each end

        $("#bookmarkListSection").addClass("resize");
        dWidth = window.innerWidth;

        var mapContainer = document.getElementById('mapCompareWrap'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);
        //-----------지-------------------도------------------------------

        // 마커 이미지의 이미지 주소입니다
        var imageSrc = "img/marker.png";


        $compareBoxes.each(function (idx) {

            const $this = $(this);

            const $clone = $this.clone().addClass("hide");


            $this.after($clone);

            const left  = this.dataset.left;
            const top = this.dataset.top;


            $this.addClass("compare");
            $this.css({left:left+"px",top:top+"px"});

           setTimeout(function () {
               $this.animate({left:lefts[idx],top:245},200, function () {
                   $("#bookmarkCompareWrap").append($this);
                   $this.removeClass("compare");
                  // $this.addClass("complete");
               });//animate end
           },1);//setTimeout end

            const price = $this.attr("data-price");


            // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(60, 60);

            // 마커 이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
           // let idx = positions[i].title;
            var content = '<div class ="label" data-idx='+idx+' style="margin-top: -20px"><span class="left"></span><span class="center">'+price+'</span><span class="right"></span></div>';
            // 커스텀 오버레이를 생성합니다
            var customOverlay = new kakao.maps.CustomOverlay({
                position: positions[idx].latlng,
                content: content
            });

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[idx].latlng, // 마커를 표시할 위치
                title : positions[idx].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                image : markerImage // 마커 이미지
            });

            $(".label").attr('data-idx', idx);

            bounds.extend(positions[idx].latlng);
            customOverlay.setMap(map);


        });//compareBoxes each end


        for (var i = 0; i < positions.length; i ++) {



        }//for end


        $("#mapCompareWrap").on("mouseenter", ".label", function () {
            let idx = $(this).attr("data-idx");
            console.log(idx);
            $("#bookmarkCompareWrap").children().eq(idx).addClass("price_hover");
        });//.label mouseenter end

        $("#mapCompareWrap").on("mouseleave", ".label", function () {
            let idx = $(this).attr("data-idx");
            console.log(idx);
            $("#bookmarkCompareWrap").children().eq(idx).removeClass("price_hover");
        });//.label mouseenter end


        map.setBounds(bounds);
        // 커스텀 오버레이를 지도에 표시합니다
        //-----------지-------------------도------------------------------
    });//bookmarkCompareBtn clikc end



    $("body").on("click", "#bookmarkResetBtn", function  () {
        let sTop = $(window).scrollTop();
        positions = [];
        //alert("dd");
        console.log(sTop);
        $("#bookmarkCompareBtn").text("비교하기 0/3").css("background-color", "#b3b3b3").prop("disabled", true).removeClass("compare_btn");//버튼에 체크된 개수 표시
        $(".hide").removeClass("hide").each(function () {

            const $this = $(this);

            $this.css("opacity",0);

            let opacity = 0;
            let idx = setInterval(function () {
                for (i=0; i<=1 ; i++){
                    opacity += i;
                    $this.css("opacity",opacity);

                    if(opacity==1) {
                        clearInterval(idx);
                    }//if end
                }

            },100);
        });



        $item = $("#bookmarkCompareWrap").children();


        $("#bookmarkCompareWrap").hide();
        $("#mapCompareWrap").hide();
        $("#bookmarkListSection").removeClass("resize");



        $item.each(function (idx) {

            $item.appendTo("#bookmarkListSection");

            const left = this.dataset.left;
            let top = this.dataset.top-sTop;

            if(idx>0) {
                top = top-54;
            }

            $(this).addClass("compare").animate({left:left,top:top, opacity:0},500,function () {
                $item.remove();
                $item.off("transitionend");
            });


        });//
        $(this).hide();
        $("input").prop("checked", false);

        getCheckedEvent();
    });//bookmarkResetBtn click end



















    //--------header--------------------------------
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
    //----------------header end-----------------------

</script>
</body>
</html>