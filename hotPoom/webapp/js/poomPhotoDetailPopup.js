$("#popupBtn").on("click",function () {
   $("#poomBg").show();
});

/*-----------------------------사진 디테일--------------------*/

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