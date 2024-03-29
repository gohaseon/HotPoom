<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/hotelForm.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
<div id="progressBar">
    <span id="firstCircle" class="circle">1</span>
    <span id="firstBar" class="bar"></span>
    <span id="secondCircle" class="circle">2</span>
    <span id="secondBar" class="bar"></span>
    <span id="thirdCircle" class="circle">3</span>

</div>

<form id="hotelInsert" action="" method="post">
    <!-- 첫번째 페이지   -->
    <div class="page" id="firstPage">
        <h1>품</h1>

            <h2>품 소개하기</h2>
                <p>
                <h3>*이름</h3>
                <input id="poomName" name="poomName" placeholder="품 이름을 입력해주세요">
                <div id="poomNameMsg" class="msg">품의 이름을 입력해 주세요</div>
                </p>

                <p>
                <div id="photoSection">
                    <h3>대표사진</h3>
                    <div id="mainPhotoSecction">

                    <div>
                    <input id="mainPhotoInput" name="mainPhoto" type="file">
                    <img id="mainPhoto" src="" alt="mainPhoto">
                    <i id="mainPhotoDelete" class="far fa-times-circle"></i>
                    </div>
                    <div id="mainPhotoWrap"><label id="mainPhotoLabel" for="mainPhotoInput"><i class="fas fa-plus-circle"></i></label>
                    <input type="hidden" id="mainPhotoValue" name="mainPhotoValue">
                    </div> <div id="mainPhotoMsg" class="msg">대표사진을 입력해 주세요</div>
                    </div>
        <textarea id="mainPhotoInfo" name="mainPhotoInfo"></textarea>

                    <div id="subPhotoTitle"><h3>서브사진</h3></div>
                    <div id="subPhotoWrap">

                        <input id="subPhotoInput" name="subPhoto" type="file">
                        <span class="sub_photo_view"><label id="subPhotoLabel" for="subPhotoInput"><i class="fas fa-plus-circle"></i></label></span>

                    </div>

                </div>
                </p>

                <h2>품소개 및 주의 사항</h2>
                <div id="poomEditWrap">
                <input type="hidden" id="poomContents" name="poomContents">
                <div id="poomEdit" class="edit_inner"></div>
                <input id="poomContent" type="hidden" value=""><!-- 품소개 주의사항 에디터 사용 -->
                </div>
                <button id="firstNextBtn" type="button" class="next_btn btn" >다음</button>


    </div>
    <!-- 첫번째 페이지 end    -->

    <!-- 두번째 페이지    -->
    <div class="page" id="seconPage">
        <h1>기본요금</h1>

        <h2>1마리/1박</h2>
        <div id="priceWrap"> &#8361; <input id="price" name="price" type="text">원 </div>
        <div id="priceMsg" class="msg">금액을 입력해 주세요</div>


        <div id="checkInOutSection">
        <h1>체크인 / 체크아웃</h1>
        <div id="checkInWrap">
        체크인
        <select id="checkIn" name="checkIn"></select>
       </div>
        <div id="checkOutWrap">
        체크아웃
        <select id="checkOut" name="checkOut"></select>
        </div>
        </div>


        <h1>펫</h1>

        <div id="selectAnimalSection">
        *종류

       <input id="animalInput" type="text" value="">
        <div id="animalMsg" class="msg">종류를 선택해 주세요</div><div id="animalName"></div>
            <div id="animalList">
            <ul id="animals">

            </ul>
        </div>

        <div id="aniamlNumber">

            <input id="minusAnimalBtn" type=button value="-" onClick="javascript:this.form.animalNumber.value--;">
            <input id="animalNumber" name="animalNumber" type="text" readonly value="1"> 마리
            <input id="plusAnimalBtn" type=button value="+" onClick="javascript:this.form.animalNumber.value++;">


        </div>

        </div>



        <h1>편의시설 </h1>
        <div id="facilityEditWrap">
        <input type="hidden" id="facilityContents" name="facilityContents">
        <div id="facilityEdit" class="edit_inner"></div>
        <input type="hidden" value="" id="facilityContent">
        </div>
        <button id="firstPrevBtn" type="button" class="prev_btn btn" >이전</button>
                <button id="secondNextBtn" type="button" class="next_btn btn" >다음</button>


    </div>
    <!-- 두번째 페이지 end    -->

    <!-- 새번째 페이지   -->
    <div class="page"  id="thirdPage">


        <!-- 우편번호 등록하기       -->
        <h1>정확한 품위치</h1>

        <h2>*위치</h2>

        <input type="text" id="postcode" placeholder="우편번호" readonly>
        <input type="button" id="searchBtn" value="우편번호 찾기">

        <p>
            <input type="text" readonly id="mainAddress" placeholder="주소" size="50" name="mainAddress">
        <div id="addressMsg" class="msg">주소를 입력해 주세요</div>

        </p>
        <p>
            <input type="text" id="subAddress" placeholder="상세주소" size="50" name="subAddress">
        </p>


        <!-- 우편번호 등록하기 end  -->

        <h2>품 유형</h2>
        <select id="poomType">
            <option>호텔</option>
            <option>집</option>
        </select>

        <h2>교통편</h2>
        <div id="trafficEditWrap">
        <input type="hidden" id="trafficContents" name="trafficContents">
        <div id="trafficEdit" class="edit_inner"></div>
        <input type="hidden" value="" id="trafficContent">

        </div>
               <a id="secondPrevBtn" href="#header" class="prev_btn btn" >이전</a>
               <button type="submit" id="registrationBtn">등록하기</button>
    </div>
    <!-- 새번째 페이지 end    -->
</form>

<input type="file" id="upload">
<c:import url="/WEB-INF/template/footer.jsp"/>
<script type="text/template" id="animalListTmp">
    <@_.each(animals,function(animal){@>
    <@ console.log(animal)@>
    <li class="animal_list"><@=animal.name@></li>
    <@ }) @>

</script>



<script type="text/template" id="subPhotoTmp">

    <input type="hidden" name="subPhotos" value="<@=subPhoto.url@>">
    <div class='sub_photo_inner'><img src="<@=subPhoto.url@>" class='sub_photo'><textarea name="subPhotoInfo" class='sub_photo_info'></textarea></div>


</script>
<script>


    _.templateSettings = {
        interpolate: /\<\@\=(.+?)\@\>/gim,
        evaluate: /\<\@([\s\S]+?)\@\>/gim,
        escape: /\<\@\-(.+?)\@\>/gim
    };

//header
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
//header end

    function numberWithCommas(x) {
        x = x.toString();
        var pattern = /(-?\d+)(\d{3})/;
        while (pattern.test(x))
            x = x.replace(pattern, "$1,$2");
        return x;
    }

    var reg = /^[-|+]?\d+$/; //가격이 양수 임을 나타내는 정규표현식
    let priceVal = '';
    $("#price").change(function () {


        if (!reg.test($("#price").val())){
            $("#priceMsg").html("숫자를 입력해 주세요");
            $("#priceMsg").css("display","block");
        }else {

            $("#priceMsg").css("display","none");
            priceVal = $("#price").val();
            priceValue = priceVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            $(this).val(priceValue);
        }

    });



    $("#firstNextBtn").click(function () {

        if ($("#poomName").val()==""){
            console.log("dd");
            $("#poomNameMsg").css("display","block");
        }
        else {
            $("#firstPage").css("display","none");
            $("#seconPage").css("display","block");
            $("#secondCircle").css("background","#3397eb");
            $("#firstBar").css("background","#3397eb");
            $(window).scrollTop(0);
        }
    }); //두번째 페이지로 넘어가는 버튼



    $("#secondNextBtn").click(function () {

        if ($("#price").val()==""){
            $("#priceMsg").css("display","block");
        }else if (!$("#animalName").hasClass("on") ){
            $("#animalMsg").css("display","block");
        }else if( !reg.test(priceVal)){
            $("#priceMsg").html("1000원 이상부터 입력가능 합니다");
            $("#priceMsg").css("display","block");
        }

        else{


        $("#seconPage").css("display","none");
        $("#thirdPage").css("display","block");

        $("#thirdCircle").css("background","#3397eb");
        $("#secondBar").css("background","#3397eb");
            $(window).scrollTop(0);
        }
    });// 세번쨰 페이지로 넘어가는 버튼

$("#firstPrevBtn").click(function () {
    $("#firstPage").css("display","block");
    $("#seconPage").css("display","none");

    $(".msg").css("display","none");
    $("#secondCircle").css("background","#eee");
    $("#firstBar").css("background","#eee");
    $(window).scrollTop(0);
}); // 첫번째 페이지로 돌아오는 버튼

$("#secondPrevBtn").click(function () {
    $("#seconPage").css("display","block");
    $("#thirdPage").css("display","none");

    $(".msg").css("display","none");
    $("#thirdCircle").css("background","#eee");
    $("#secondBar").css("background","#eee");
    $(window).scrollTop(0);
});// 두번째 페이지로 돌아오는 버튼


//우편번호 등록하기
var $postcode = $("#postcode");
var $address1 = $("#mainAddress");
var $address2 = $("#subAddress");

var width = 500; //팝업의 너비
var height = 600; //팝업의 높이

var themeObj = {
    bgColor: "#162525", //바탕 배경색
    searchBgColor: "#162525", //검색창 배경색
    contentBgColor: "#162525", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
    pageBgColor: "#162525", //페이지 배경색
    textColor: "#FFFFFF", //기본 글자색
    queryTextColor: "#FFFFFF", //검색창 글자색
    //postcodeTextColor: "", //우편번호 글자색
    //emphTextColor: "", //강조 글자색
    outlineColor: "#444444" //테두리
};

$("#searchBtn,#postcode").click(function () {

    new daum.Postcode({
        //theme:themeObj,
        width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
        height: height,
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $postcode.val(data.zonecode); //5자리 새우편번호 사용

            //alert(fullAddr);
            $address1.val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $address2.focus();
        }
    }).open({
        left: (window.screen.width / 2) - (width / 2),
        top: (window.screen.height / 2) - (height / 2)
        ,popupName: '멋진 웹서비스'});
});

//우편번호 등록하기 end

//에디터
const poomEdit = new tui.Editor({
    el: document.querySelector('#poomEdit'),
    initialEditType: 'wysiwyg',
    previewStyle: 'vertical',
    height: '600px',
    language:"ko",
    toolbarItems: [
        'heading',
        'bold',
        'italic',
        'strike',
        'divider',
        'hr',
        'quote',
        'divider',
        'ul',
        'ol',
        'task',
        'divider',
        'table',
        'link',
        'divider'
    ]
}); //poom 에디터


const facilityEdit = new tui.Editor({
    el: document.querySelector('#facilityEdit'),
    initialEditType: 'wysiwyg',
    previewStyle: 'vertical',
    height: '600px',
    language:"ko",
    toolbarItems: [
        'heading',
        'bold',
        'italic',
        'strike',
        'divider',
        'hr',
        'quote',
        'divider',
        'ul',
        'ol',
        'task',
        'divider',
        'table',
        'link',
        'divider'
    ]
}); //facility 에디터

const trafficEdit = new tui.Editor({
    el: document.querySelector('#trafficEdit'),
    initialEditType: 'wysiwyg',
    previewStyle: 'vertical',
    height: '600px',
    language:"ko",
    toolbarItems: [
        'heading',
        'bold',
        'italic',
        'strike',
        'divider',
        'hr',
        'quote',
        'divider',
        'ul',
        'ol',
        'task',
        'divider',
        'table',
        'link',
        'divider'
    ]
}); //traffic 에디터

const editors =[poomEdit,facilityEdit,trafficEdit]; //각각의 에디터들을 배열에 담음

const $upload = $("#upload");

const fileTypeExp = /^image\//;

const toolbar = poomEdit.getUI().getToolbar();
    const toolbar2 = facilityEdit.getUI().getToolbar();
    const toolbar3 = trafficEdit.getUI().getToolbar();
    toolbar.addButton({
        name: 'image',
        event: 'Event1',
        tooltip: '이미지 입력',
        $el: $('<button class="btn_image" data-idx="0"><i class="fas fa-image"></i></button>')
    });
    toolbar2.addButton({
        name: 'image',
        event: 'Event1',
        tooltip: '이미지 입력',
        $el: $('<button class="btn_image" data-idx="1"><i class="fas fa-image"></i></button>')
    });
    toolbar3.addButton({
        name: 'image',
        event: 'Event1',
        tooltip: '이미지 입력',
        $el: $('<button class="btn_image" data-idx="2"><i class="fas fa-image"></i></button>')
    });


let idx = -1;

$(".btn_image").click(function () {
   idx = this.dataset.idx;

    $upload.click();

   console.log(idx);
}); //사진 추가를 각각의 인덱스에 사진을 추가

$upload.on("change",function () {

    var file = this.files[0];

    //console.log(file);

    if(file.size==0) {
        alert("제대로 된 파일을 선택해주세요.");
        return;
    }

    console.log(fileTypeExp.test(file.type));

    if(!fileTypeExp.test(file.type)) {
        alert("이미지만 선택해주세요.");
        return;
    }

    //alert("여기에 오면 파일이 있고 사진임");

    var formData = new FormData();

    formData.append("uploadImg",file,file.name);
    formData.append("type","B");//B는 board의 줄임말

    $.ajax({
        url: 'json/img.json',
        processData: false,
        contentType: false,
        data: formData,
        type: 'POST',
        dataType:"json",
        error:function(xhr,error,code) {
            alert("에러:"+code);
        },
        success: function(result){
            console.log(result.url);

            var squireExt = editors[idx].wwEditor.getEditor();

            squireExt.insertHTML("<img src='"+result.url+"'>");

            //$("<input type='hidden' name='uploadImg'>").val(result.src).appendTo("#writeForm");

        }
    });
});



// 에디터 end



//사진 불러오기
$("#mainPhotoInput").change(function () {
    var file = this.files[0];
    if(!fileTypeExp.test(file.type)) {
        alert("이미지만 선택해주세요.");
        return;
    }
    $.ajax({
        url:"json/img.json",
        dataType:"json",
        type:"GET",
        error: function () {
            alert("서버점검중");
        },
        success: function (json) {

            $("#mainPhoto").attr("src",json.url);
            $("#mainPhoto").css("display","inline-block");
            $("#mainPhotoWrap").css("display","none");
            $("#mainPhotoDelete").css("display","block");
        }
    })

}); //메인 이미지 삽입

$("#mainPhotoDelete").click(function () {
    $("#mainPhoto").attr("src","");
    $("#mainPhotoDelete").css("display","none");
    $("#mainPhoto").css("display","none");
    $("#mainPhotoWrap").css("display","block");
}); //메인 이미지 지우기

    const $subPhotoWrap = $("#subPhotoWrap");
    const subPhotoTmp = _.template($("#subPhotoTmp").html());



$("#subPhotoInput").change(function () {
    var file = this.files[0];
    if(!fileTypeExp.test(file.type)) {
        alert("이미지만 선택해주세요.");
        return;
    }
    $.ajax({
        url:"json/img.json",
        dataType:"json",
        type:"GET",
        error: function () {
            alert("서버점검중");
        },
        success: function (json) {

            console.log(json.url);
            $(".sub_photo_view").before(subPhotoTmp({"subPhoto":json}));
        }
    })

}); //서브이미지 추가

 $("#subPhotoWrap").on("click",".sub_photo",function () {
    $(this).remove();
 });//서브 이미지 삭제제
//사진 불러오기 end




//check in, out 시간 불러오기
const $checkIn = $("#checkIn");
const $checkOut = $("#checkOut");

function makeCheckIn() {
    for(var i = 1;i < 25; ++i){
        $checkIn.append($("<option>").text(i+"시").attr("value",i));
    }
}


function makeCheckOut() {
    for(var i = 1;i < 25; ++i){
        $checkOut.append($("<option>").text(i+"시").attr("value",i));
    }
}
makeCheckIn();
makeCheckOut();
//check in, out 시간 불러오기

//마리수 지정하기



    if( $("#animalNumber").val() <= 1){

        $("#minusAnimalBtn").css("display","none");
    }else {
        $("#minusAnimalBtn").css("display","block");
    };

$("#plusAnimalBtn").click(function () {



    if( $("#animalNumber").val() <= 1){

        $("#minusAnimalBtn").css("display","none");
    }else {
        $("#minusAnimalBtn").css("display","block");
    };


});

$("#minusAnimalBtn").click(function () {

    if( $("#animalNumber").val() <= 1){

        $("#minusAnimalBtn").css("display","none");
    }else {
        $("#minusAnimalBtn").css("display","block");
    };

})
//마리수 지정하기 end

//등록된 동물 자동 완성 //
const $animals = $("#animals");
const animalListTmp = _.template($("#animalListTmp").html());

$.ajax({
    url: "json/animal.json",
    dataType: "json",
    type:"GET",
    error: function () {
        alert("서버점검중");
    },
    success: function (json) {
        console.log(json);
        $animals.append(animalListTmp({"animals":json}));



    }

});


    $("#animalInput").click( function (a) {
        console.log(a);
        $("#animalList").css("display","block");
        a.stopPropagation();
        //    자식은 부모에 포함 되있는 기능을 막는 기능
    });

    $("#content").on("click",function () {
        $("#animalList").css("display","none");
    });

    $("#animals").on("click",".animal_list",function () {
        console.log(this);
        $("#animalInput").val($(this).html());
        $("#animalName").html($(this).html())

        $("#animalName").css("display","block");
        $("#animalName").addClass("on");
        $("#animalInput").css("display","none");
    });

    $("#animalName").click(function () {

        $("#animalInput").val("");
        $("#animalName").html("");

        $("#animalName").css("display","none");
        $("#animalName").removeClass("on");
        $("#animalInput").css("display","block");

    });


//등록된 동물 자동 완성 end

//에디터 값 데이터에 세팅 //질문 서브밋을 막을수가 없음
$("#hotelInsert").submit(function () {
    if ($("#mainAddress").val()==""){
        $("#addressMsg").css("display","block");
    return false;
    }else{
    const poomContents = $("#poomEdit").html();
    const facilityContents = $("#facilityEdit").html();
    const trafficContents = $("#trafficEdit").html();

    $("#poomContent").val(poomContents);
    $("#facilityContent").val(facilityContents);
    $("#trafficContent").val(trafficContents);
    return true;
    }
});



</script>
</body>
</html>