<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>userPage</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/userPage.css">
    <link rel="stylesheet" href="css/userPetAddPopup.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>

<div id="bg">
    <div id="petAddPopup">
        <h1>펫 추가하기</h1>
        <div class="popup_close"><i class="far fa-times-circle"></i></div>
        <form id="petAddPopupWrap">
            <p>성별</p>
            <label class="cursor_pointer" for="male">수컷<input id="male" type="radio" name="gender" value=""/></label>
            <label class="cursor_pointer" for="female">암컷<input id="female" type="radio" name="gender" value=""/></label>
            <p>이름</p>
            <input id="petNameInput" name="" value="" placeholder="펫의 이름을 입력해주세요."/>
            <p>사진</p>
            <div id="petImgBox"><img id="petImg" /></div>

            <label id="petAddPopupLabel">
                <i class="fas fa-camera img_icon"></i>
                <input id="petInput" class="pet_and_user_file" type="file" />
            </label>

            <button id="petAddBtn" class="btn">등록</button>
        </form><!--//petAddPopupWrap-->
    </div><!--//petAddPopup-->
</div> <!--// addPet bg end-->

<div id="reportBg">
    <form>
        <div id="reportPopup">

            <div id="reportHeader">
                <h1 id="reportTitle">신고하기</h1>
                <div class="report_popup_close"><i class="far fa-times-circle"></i></div>
                <div id="reportedPerson">작성자 : 이쥬하</div>
            </div>
            <div id="reportContent">
                <div>
                    <label class="choice_reason" for="report1">음란 또는 청소년에게
                        부적합한 내용</label> <input id="report1" type="radio" name="report" value="a">
                </div>
                <div>
                    <label class="choice_reason" for="report2">부적절한 홍보</label> <input
                        id="report2" type="radio" name="report" value="a">
                </div>
                <div>
                    <label class="choice_reason" for="report3">개인정보 노출</label> <input
                        id="report3" type="radio" name="report" value="a">
                </div>
                <div>
                    <label class="choice_reason" for="report4">저작권 및 명예훼손,
                        기타권리 침해</label> <input id="report4" type="radio" name="report" value="a">
                </div>
            </div>
            <!--//reportContent-->

            <div id="reportFooter">
                <button id="reportSubmitBtn" class="btn">신고하기</button>
            </div>
            <!--//reportFooter-->
        </div>
        <!--//reportPopup -->
    </form>
</div> <!--// addPet bg end-->
    <div id="userProfileImgSection">

        <div id="userProfileWrap"><img id="profilePhoto" /></div>
        <label>
            <i class="fas fa-camera img_icon"></i>
            <input id="profileInput" class="pet_and_user_file" type="file" />
        </label>

        <!--<a href="">사진 업데이트</a>-->
    </div> <!--// userProfileImgSection -->

    <div id="userInfoSection">

        <div id="userIntroduceWrap">
            <h2 id="userIntroduce" style="font-weight: bold">
                안녕하세요. 저는 '이주하'입니다.
            </h2>
            <button id="profileUpdateBtn" class="profile_update_btn">프로필 수정하기</button>
            <button id="profileUpdateCompleteBtn" class="profile_update_btn">수정 완료</button>
            <h3 id="titleIntroduce">소개</h3>
            <div id="profileTextAreaBox" class="user_introduce_detail" >안녕하세용ㅎㅎ 저는 3마리의 강아지와 2마리의 고양이를 키우는 사람입니당 ㅎㅎ</div>

            <div id="profileUpdateTextAreaBox" class="user_introduce_detail" style="display: none">
                <textarea id="profileUpdateTextArea"></textarea>
            </div>
        </div> <!--// userIntroduceSection -->

        <div id="petProfileWrap">
            <h3 id="myPet">함께 사는 펫</h3>
            <button id="addPetBtnInList"><i class="fas fa-plus"></i> 추가하기</button>

            <ul>

            </ul>
            <i class="fas fa-angle-left"></i>
            <i class="fas fa-angle-right"></i>
        </div> <!--// petProfileWrap -->

        <ul id="userMenuTab">
            <li id="poomTab" class="user_menu_tab user_menu_tab_on">품</li>
            <li id="petTab" class="user_menu_tab">펫</li>
            <li id="reviewTab" class="user_menu_tab">리뷰</li>
        </ul> <!--// userMenuTab -->

        <div id="userMenuTabDetailWrap">

            <div></div>
            <ul class="small_card_ul">

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

                <li>
                    <div class="small_card">
                        <a href="">
                            <ul>
                                <li class="small_card_li">
                                    <img class="small_card_img" src="img/petel.jpg" alt="숙소 카드입니다."/></li>
                                <div class="small_card_hotel small_card_padding"><i class="fas fa-hotel"></i> 사랑이 넘치고 넘쳐 흐르…</div></li>
                                <div class="small_card_pet small_card_padding small_star"><i class="fas fa-star"></i> 4.8 (16)</div>
                                </li>
                            </ul>
                        </a>
                    </div> <!--  small_card end  -->
                </li>

            </ul> <!--// small_card_ul end -->

            <div id="petImgAddBtn">
                <label>
                    <i class="fas fa-camera img_icon"></i>
                    <input class="pet_and_user_file" type="file" />
                </label>
            </div> <!--// petImgAddBtn end -->

            <ul id="petImgAddUl" >

            </ul> <!--// petImgAddUl end -->

            <div id="reviewDetailTab" >
                <div id="myReview" class="user_menu_tab_on">남긴 리뷰</div>
                <div id="myPoomReview">품 리뷰</div>
            </div> <!--// reviewDetailTab end -->

            <div id="myPoomReviewList" class="review_card">
                <ul>
                    <li>
                        <div class="review_card_hotel_name"></div>
                        <div class="review_card_content">저희 집 고양희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는
                            평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡
                            기면항상 예민해져`  서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소
                            랑 저희 집를 많이 주는지 애기가 똥똥해져셔 왔더라구요... 아니 뭐 귀엽다고여 ㅎㅎㅎㅎ
                        </div>
                        <div class="review_card_img"><img src="profile/user/defaultProfile.jpg"/></div>
                        <div class="review_card_user_name">이주하</div>
                        <div class="review_card_date">2018.09</div>
                        <div class="review_card_warning">신고</div>
                    </li>
                    <li>
                        <div class="review_card_hotel_name"></div>
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
            </div><!--// review_card end -->

            <div id="myReviewList" class="review_card">
                <ul>
                    <li>
                        <div class="review_card_hotel_name">냥냥 펀치</div>
                        <div class="review_card_content">저희 집 고양희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는
                            평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡
                            기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소
                            랑 저희 집를 많이 주는지 애기가 똥똥해져셔 왔더라구요... 아니 뭐 귀엽다고여 ㅎㅎㅎㅎ
                        </div>
                        <div class="review_card_img"><img src="profile/user/defaultProfile.jpg"/></div>
                        <div class="review_card_user_name">이주하</div>
                        <div class="review_card_date">2018.09</div>
                    </li>
                    <li>
                        <div class="review_card_hotel_name">수댕이 바보</div>
                        <div class="review_card_content">저희 집 고양희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는
                            평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡
                            기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소랑 저희 집 고양이가 다른 곳에 맡기면항상 예민해져서 왔는ㄷ ㅔ여기는 평소
                            랑 저희 집를 많이 주는지 애기가 똥똥해져셔 왔더라구요... 아니 뭐 귀엽다고여 ㅎㅎㅎㅎ
                        </div>
                        <div class="review_card_img"><img src="profile/user/defaultProfile.jpg"/></div>
                        <div class="review_card_user_name">이주하</div>
                        <div class="review_card_date">2018.09</div>
                </ul>
            </div>


        </div><!--  userPoomListBox end  -->

    </div> <!--// userInfoSection -->

<c:import url="/WEB-INF/template/footer.jsp"/>
<script type="text/template" id="petProfileTmp">
    <@ _.each(pets, function(pet){ @>
    <li class="pet_profile" >
        <div class="pet_profile_img"><img src="img/<@=pet.img@>"/></div>
        <div class="pet_name"><i class="fas
        <@ if(pet.gender=="F"){@>
            fa-venus
            <@ }
            else if(pet.gender=="M") {@>
            fa-mars
            <@ } @>
            "></i> <@=pet.name@></div>
    </li>
    <@ }) @>
</script>

<script type="text/template" id="petImgAddTmp">
    <@ _.each(petImgs, function(petImg){ @>
    <li>
        <div class="pet_img"><img src="img/<@=petImg.img@>"/></div>
    </li>
    <@ }) @>
</script>
<script>
    _.templateSettings = {
        interpolate : /\<\@\=(.+?)\@\>/gim,
        evaluate : /\<\@([\s\S]+?)\@\>/gim,
        escape : /\<\@\-(.+?)\@\>/gim
    };

    const petProfileTmp = _.template($("#petProfileTmp").html());
    const $petProfileUl = $("#petProfileWrap ul");
    const petImgAddTmp = _.template($("#petImgAddTmp").html());
    const $petImgAddUl = $("#petImgAddUl ");


    $("#headerProfileImage").click(function (e) {

        $("#lnb").slideToggle(200);
        e.stopPropagation();
    });

    $("#headerLogin").click(function () {
        $("#gnbWrap").show();
        $(this).hide();
    });

    // *************************************** userMenuTab 이동

    $("#userMenuTab li").click(function () {

        $(".user_menu_tab").removeClass('user_menu_tab_on');
        $(this).addClass('user_menu_tab_on');
    });

    // *************************************** poomTab

    $("#poomTab").click(function () {
        $("#myPoomReviewList").hide();
        $("#myReviewList").hide();
        $("#petImgAddUl").hide();
        $("#reviewDetailTab").hide();
        $("#petImgAddBtn").hide();
        $(".small_card_ul").show();
    })

    // *************************************** petTab

    $("#petTab").click(function () {
        $("#myPoomReviewList").hide();
        $("#myReviewList").hide();
        $(".small_card_ul").hide();
        $("#reviewDetailTab").hide();
        $("#petImgAddBtn").show();
        $("#petImgAddUl").show();
    })

    // *************************************** reviewTab
    $("#reviewTab").click(function () {
        $("#myReviewList").show();
        $(".small_card_ul").hide();
        $("#petImgAddUl").hide();
        $("#petImgAddBtn").hide();
        $("#reviewDetailTab").show();

    })

    // *************************************** reviewDetailTab 이동

    $("#reviewDetailTab div").click(function () {
        $("#reviewDetailTab div").removeClass('user_menu_tab_on');
        $("#myReview").removeClass('user_menu_tab_on');
        $(this).addClass('user_menu_tab_on');
    });

    // *************************************** review reportPopup

    $(".review_card_warning").click(function () {

        $("#reportBg").show();
    })

    $(".report_popup_close").click(function () {

        $("#reportBg").hide();
    })

    // *************************************** reviewTab

    $("#myReview").click(function () {
        $("#myPoomReviewList").hide();
        $("#myReviewList").show();

    })

    $("#myPoomReview").click(function () {
        $("#myPoomReviewList").show();
        $("#myReviewList").hide();
    })


    // *************************************** petAddpopUp 띄우고 닫기

    $("#addPetBtnInList").click(function () {
        $("#bg").show();
    });

    $(".popup_close").click(function () {
        $("#bg").hide();
    });

    // *************************************** 소개 수정하기


    function getIntroduce() {

        //$introduce.text(introduceText);
        /*
        $.ajax({
            url : "/ajax/user/${user.no}/intro/" + introduce,
            dataType : "json",
            type : "POST",
            error : function() {
                alert("에러");
            },//error end
            success : function(json) {

            }//success end
        });//ajax end
        */

    }

    getIntroduce();

    $("#profileUpdateBtn").click(function () {

        let introduceText = $("#profileTextAreaBox").text();
        console.log(introduceText);

        $("#profileUpdateTextArea").text(introduceText);

        $("#profileUpdateBtn").hide();
        $("#profileUpdateCompleteBtn").show();
        $("#profileTextAreaBox").hide();
        $("#profileUpdateTextAreaBox").show();

    })

    $("#profileUpdateCompleteBtn").click(function () {

        $("#profileUpdateTextAreaBox").hide();
        $("#profileTextAreaBox").show();
        $("#profileUpdateCompleteBtn").hide();
        $("#profileUpdateBtn").show();

    })

    // *************************************** 함께 사는 펫 이동

    let movePet = 0;
    let nowLeft = 0;

    // move클래스 때주기
    $("#petProfileWrap ul").on("transitionend", function (e) {
        $(this).removeClass("move");
    });

    // 다음사진 버튼
    $("#petProfileWrap").on("click", ".fa-angle-right",function () {

        let $petProfileWrapUl = $(this).parent().find("ul");

        if (!$petProfileWrapUl.hasClass("move")) {
            $petProfileWrapUl.addClass("move");
            console.log("시작");

            var length = $("#petProfileWrap ul li").length;
            console.log("zzzzzz: "+length);

            $("#petProfileWrap ul").css("width",length*252);
            console.log($("#petProfileWrap ul").css("width"));

            // console.log("ul: "+ $petProfileWrapUl);

            nowLeft = $petProfileWrapUl.css("left");
            console.log("left: " + nowLeft);

            nowLeft = nowLeft.substring(0, nowLeft.length - 2);
            console.log("left: " + nowLeft);

            movePet = (length - 3) * 252;
            console.log("movePet: " + movePet);

            if (nowLeft == -1 * movePet) {
                console.log("if");
                nowLeft = 0;
                $petProfileWrapUl.css("left", nowLeft);
            } else if (nowLeft >= -1 * movePet - 252) {
                console.log("if else");
                nowLeft -= 252;
                $petProfileWrapUl.css("left", nowLeft);
                console.log(nowLeft);
            }//if()~else() end

        }//if() end

    }); // next click() end


    // 이전사진 버튼
    $("#petProfileWrap").on("click", ".fa-angle-left",function () {

        let $petProfileWrapUl = $(this).parent().find("ul");

        if (!$petProfileWrapUl.hasClass("move")) {
            $petProfileWrapUl.addClass("move");
            console.log("시작");

            var length = $("#petProfileWrap ul li").length;
            console.log("zzzzzz: "+length);

            $("#petProfileWrap ul").css("width",length*252);
            console.log($("#petProfileWrap ul").css("width"));

            //nowLeft = nowLeft.substring(0, nowLeft.length - 2);

            movePet = (length - 3) * 252;
            console.log("movePet: " + movePet);

            if (nowLeft == 0) {
                console.log("if");
                nowLeft = -1 * movePet;
                $petProfileWrapUl.css("left", nowLeft);
            } else if (nowLeft <= -252) {
                console.log("if else");
                nowLeft = parseInt(nowLeft);
                nowLeft += 252;
                $petProfileWrapUl.css("left", nowLeft);
                console.log(nowLeft);
            } else {
                console.log("else");
            } // prev click() end

        }//if() end

    });//prev_photo click() end


    // petProfile ajax
    function getPetProfileList(){
        $.ajax({
            url:"json/petProfileList.json",
            error:function(){
                alert("서버점검");
            },
            success:function (json) {
                console.log(json);
                $("#petProfileWrap ul").css("width",json.length*252);
                $petProfileUl.html(petProfileTmp({"pets":json}));
                console.log(json.length);
                console.log(json.length*252);
            }
        })// ajax() end
    }// getPetProfile() end

    getPetProfileList();

    // petImg ajax
    function getPetImgList(){
        $.ajax({
            url:"json/petImgList.json",
            error:function(){
                alert("서버점검");
            },
            success:function (json) {
                console.log(json);
                $petImgAddUl.html(petImgAddTmp({"petImgs":json}));
            }
        })// ajax() end
    }// getPetProfile() end

    getPetImgList();

    // 펫 이미지 추가 에이젝스 end
    $("#petImgAddBtn input").change(function () {
        var file = this.files[0];
        if(!fileTypeExp.test(file.type)) {
            alert("이미지만 선택해주세요.");
            return;
        }
        $.ajax({
            url:"json/profileImg.json",
            dataType:"json",
            type:"GET",
            error: function () {
                alert("서버점검중");
            },
            success: function (json) {

                $(".pet_img img").attr("src",json.url);

                getPetImgList();

            }
        })

    }); // 펫 이미지 추가 에이젝스 end

    // 프로필 업로드 ajax

    const $upload = $("#upload");

    const fileTypeExp = /^image\//;

    $("#profileInput").change(function () {
        var file = this.files[0];
        if(!fileTypeExp.test(file.type)) {
            alert("이미지만 선택해주세요.");
            return;
        }
        $.ajax({
            url:"json/profileImg.json",
            dataType:"json",
            type:"GET",
            error: function () {
                alert("서버점검중");
            },
            success: function (json) {

                $("#profilePhoto").attr("src",json.url);
                $("#profilePhoto").css("display","block");
                $("#userProfileImgSection label").css("display","none");
                $("#userProfileWrap").css("display","block");
            }
        })

    }); // 프로필 업로드 에이젝스 end

    // 펫 추가 팝업 에이젝스 end
    $("#petInput").change(function () {
        var file = this.files[0];
        if(!fileTypeExp.test(file.type)) {
            alert("이미지만 선택해주세요.");
            return;
        }
        $.ajax({
            url:"json/profileImg.json",
            dataType:"json",
            type:"GET",
            error: function () {
                alert("서버점검중");
            },
            success: function (json) {

                $("#petImg").attr("src",json.url);
                $("#petImg").css("display","block");
                $("#petAddPopupLabel").css("display","none");
                $("#petImgBox").css("display","block");
            }
        })

    }); // 펫추가 팝업 에이젝스 end



</script>
</body>
</html>