<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>account</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="/css/account.css"/>
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
<div id="bg"></div>
<div id="accountUpdateSection">
    <div id="personalInformationWrap">
        <h2 class="account_h2">개인정보</h2>
        <div id="nameUpdateInner" class="personal_information_inner">
            <span class="personal_information_inner_head">이름</span>
            <input class="personal_information_inner_middle personal_information_input user_name_input" value="고하선"/>
            <button class="personal_information_inner_foot user_name">수정</button>
            <div class="name_change_success"></div>
        </div>
        <div id="genderUpdateInner" class="personal_information_inner">
            <span class="personal_information_inner_head">성별</span>
            <span class="personal_information_inner_middle">여자</span>
        </div>
        <div id="birthUpdateInner" class="personal_information_inner">
            <span class="personal_information_inner_head">생년월일</span>
            <span class="personal_information_inner_middle">1996-11-29</span>
        </div>
        <div id="emailUpdateInner" class="personal_information_inner">
            <span class="personal_information_inner_head">이메일</span>
            <span class="personal_information_inner_middle">ghdrlfehd@naver.com</span>
        </div>
        <div id="phoneNumUpdateInner" class="personal_information_inner">
            <span class="personal_information_inner_head">전화번호</span>
            <input class="personal_information_inner_middle personal_information_input user_phone_num_input" value="01012345478"/>
            <button class="personal_information_inner_foot send_number">발송</button>
            <button class="personal_information_inner_foot user_phone_num">수정</button>
            <div class="msg phone_num_change_success"></div>
            <input id="accountPhoneConfirm" name="accountPhoneConfirm" autocomplete="off" placeholder=" 인증번호 입력" class="personal_information_inner_middle personal_information_input"/>
            <button class="phone_num_confirm">확인</button>
            <div class="msg phone_num_confirm_success"></div>
        </div>
    </div>
    <div id="paymentInformationWrap">
        <h2 class="account_h2">결제 정보</h2>
        <div id="creditCardSelectInner">
            <h3 class="account_h3">결제 수단</h3>
            <div class="creditCardDetailBox">
                <img class="creditCardBankIcon" src="/img/신한.JPG" alt="신한"/>
                <div class="creditCardDetail">
                    <span>신한 - 8409</span>
                    <span>만료일 05/24</span>
                </div>
                <button class="payment_information_credit_card_btn default_setting">기본으로 설정</button>
                <button class="payment_information_credit_card_btn delete_card">삭제하기</button>
            </div>
            <button class="payment_information_credit_card_btn add_card">결제 수단 추가</button>
        </div>
        <div id="receiptAccountSelectInner">
            <h3 class="account_h3">수령 계좌</h3>
            <div class="receipt_account_detail">
                <span class="receipt_account_no">아직 등록된 계좌가 없습니다.</span>
                <button class="receipt_account_btn add_card">계좌 추가</button>
            </div>
            <div id="receiptAccountDetailBox" class="receipt_account_detail">
                <span>신한은행</span>
                <div id="receiptAccountDetail">
                    <span>고하선</span>
                    <span>111-111-123457</span>
                </div>
                <button class="receipt_account_btn delete_card">삭제하기</button>
            </div>
        </div>
    </div>
</div>

<div id="creditCardAddSection">
    <h1 class="account_h1">결제수단 추가</h1>
    <div id="creditCardSelectWrap">
        <h3 class="account_h3">카드</h3>
        <select name='cardName'  class='card_list_select'>
            <option value=''>-선택-</option>
            <option value='SC제일은행'>SC제일은행</option>
            <option value='경남은행'>경남은행</option>
            <option value='광주은행'>광주은행</option>
            <option value='국민은행'>국민은행</option>
            <option value='기업은행'>기업은행</option>
            <option value='농협중앙회'>농협중앙회</option>
            <option value='대구은행'>대구은행</option>
            <option value='뱅크오브아메리카(BOA)'>뱅크오브아메리카(BOA)</option>
            <option value='부산은행'>부산은행</option>
            <option value='산업은행'>산업은행</option>
            <option value='새마을금고'>새마을금고</option>
            <option value='수협중앙회'>수협중앙회</option>
            <option value='신한은행'>신한은행</option>
            <option value='신협중앙회'>신협중앙회</option>
            <option value='외환은행'>외환은행</option>
            <option value='우리은행'>우리은행</option>
            <option value='우체국'>우체국</option>
            <option value='전북은행'>전북은행</option>
            <option value='제주은행'>제주은행</option>
            <option value='하나은행'>하나은행</option>
            <option value='한국씨티은행'>한국씨티은행</option>
        </select>
    </div>
    <div id="cardPersonInsertWrap">
        <div id="cardPersonFirstNameInsertInner">
            <h3 class="account_h3">성</h3>
            <input class="card_name_insert_input" placeholder="성"/>
        </div>
        <div id="cardPersonNameInsertInner">
            <h3 class="account_h3">이름</h3>
            <input class="card_name_insert_input" placeholder="이름"/>
        </div>
    </div>
    <div id="cardInformaionInsertWrap">
        <h3 class="account_h3">카드 정보</h3>
        <input class="card_information_insert_input" placeholder="카드번호"/>
        <div id="cardInformaionInsertInner">
            <span class="card_information_detail limit">만료일</span>
            <input class="card_information_detail_input credit_card_month" placeholder="MM"/>
            <span class="card_information_detail slash">/</span>
            <input class="card_information_detail_input credit_card_year" placeholder="YY"/>
            <span class="card_information_detail">cvc</span>
            <input class="card_information_detail_input" placeholder="cvc"/>
        </div>
    </div>

    <div id="creditCardInsertBtnWrap">
        <button type="button" class="credit_card_insert_btn credit_card_popup_cancel">취소</button>
        <button type="submit" class="credit_card_insert_btn credit_card_popup_register">등록</button>
    </div>
</div>

<div id="receiptAccountAddSection">
    <h1 class="account_h1">수령 계좌 추가</h1>
    <div id="bankSelectWrap">
        <h3 class="account_h3">은행</h3>
        <select name='bankName'  class='bank_list_select'>
            <option value=''>-선택-</option>
            <option value='SC제일은행'>SC제일은행</option>
            <option value='경남은행'>경남은행</option>
            <option value='광주은행'>광주은행</option>
            <option value='국민은행'>국민은행</option>
            <option value='굿모닝신한증권'>굿모닝신한증권</option>
            <option value='기업은행'>기업은행</option>
            <option value='농협중앙회'>농협중앙회</option>
            <option value='농협회원조합'>농협회원조합</option>
            <option value='대구은행'>대구은행</option>
            <option value='대신증권'>대신증권</option>
            <option value='대우증권'>대우증권</option>
            <option value='동부증권'>동부증권</option>
            <option value='동양종합금융증권'>동양종합금융증권</option>
            <option value='메리츠증권'>메리츠증권</option>
            <option value='미래에셋증권'>미래에셋증권</option>
            <option value='뱅크오브아메리카(BOA)'>뱅크오브아메리카(BOA)</option>
            <option value='부국증권'>부국증권</option>
            <option value='부산은행'>부산은행</option>
            <option value='산림조합중앙회'>산림조합중앙회</option>
            <option value='산업은행'>산업은행</option>
            <option value='삼성증권'>삼성증권</option>
            <option value='상호신용금고'>상호신용금고</option>
            <option value='새마을금고'>새마을금고</option>
            <option value='수출입은행'>수출입은행</option>
            <option value='수협중앙회'>수협중앙회</option>
            <option value='신영증권'>신영증권</option>
            <option value='신한은행'>신한은행</option>
            <option value='신협중앙회'>신협중앙회</option>
            <option value='에스케이증권'>에스케이증권</option>
            <option value='에이치엠씨투자증권'>에이치엠씨투자증권</option>
            <option value='엔에이치투자증권'>엔에이치투자증권</option>
            <option value='엘아이지투자증권'>엘아이지투자증권</option>
            <option value='외환은행'>외환은행</option>
            <option value='우리은행'>우리은행</option>
            <option value='우리투자증권'>우리투자증권</option>
            <option value='우체국'>우체국</option>
            <option value='유진투자증권'>유진투자증권</option>
            <option value='전북은행'>전북은행</option>
            <option value='제주은행'>제주은행</option>
            <option value='키움증권'>키움증권</option>
            <option value='하나대투증권'>하나대투증권</option>
            <option value='하나은행'>하나은행</option>
            <option value='하이투자증권'>하이투자증권</option>
            <option value='한국씨티은행'>한국씨티은행</option>
            <option value='한국투자증권'>한국투자증권</option>
            <option value='한화증권'>한화증권</option>
            <option value='현대증권'>현대증권</option>
            <option value='홍콩상하이은행'>홍콩상하이은행</option>
        </select>
    </div>
    <div id="personInsertWrap">
        <h3 class="account_h3">예금주명</h3>
        <input class="account_insert_input" placeholder="이름"/>
    </div>
    <div id="accountInsertWrap">
        <h3 class="account_h3">계좌번호</h3>
        <input class="account_insert_input" placeholder="계좌번호"/>
    </div>
    <div id="accountInsertBtnWrap">
        <button type="button" class="account_insert_btn account_popup_cancel">취소</button>
        <button type="submit" class="account_insert_btn account_popup_register">등록</button>
    </div>
</div>


<c:import url="/WEB-INF/template/footer.jsp"/>
<script>

    let $nameInput = $(".user_name_input");
    let $phoneNumImput = $(".user_phone_num_input");

    $(".user_name").on("click", function () {
        $nameInput.css({"border":"1px solid #424242","pointer-events":"auto"});
    });//이름 수정 btn click end

    $nameInput.on("keyup",function () {
        let name = $nameInput.val();
        console.log(name);

        $.ajax({
            url: "json/checkingUser.json",
            type: "get",
            dataType: "json",
            data:{"name":name},
            error:function() {
                alert("서버 점검 중");
            },
            success:function(json) {
                $(".name_change_success").text(name+" 으로 변경되었습니다.").css(
                    {"color": "#C50532","position":"absolute","top":"50px","left":"110px"});
                return false;
            }//success end
        })//ajax end
    });//keyup end

    $(".user_phone_num").on("click", function () {
        $phoneNumImput.css({"border":"1px solid #424242","pointer-events":"auto"});
        $("#accountPhoneConfirm").css({"display":"block","pointer-events":"auto"});
        $(".phone_num_confirm").css("display","block");
        $(".send_number").css("display","block");
    });//핸드폰 수정 btn click end

    let phoneNum = null;

    $phoneNumImput.on("keyup",function () {
        phoneNum = $phoneNumImput.val();
        console.log(phoneNum);

        $.ajax({
            url: "json/checkingUser.json",
            type: "get",
            dataType: "json",
            data:{"phoneNum":phoneNum},
            error:function() {
                alert("서버 점검 중");
            },
            success:function(json) {
                $(".phone_num_change_success").text(phoneNum+" 으로 변경되었습니다.").css(
                    {"color": "#C50532","position":"absolute","top":"50px","left":"110px"});
                return false;
            }//success end
        })//ajax end
    });//keyup end

    $(".send_number").click(function () {
        alert(phoneNum+"로 인증번호를 발송했습니다. 확인하여 3분 안에 기입해주세요.");
        $(".phone_num_change_success").text('');
        return false;
    }); //발송 btn click end

    $(".phone_num_confirm").on("click", function () {

        let phoneNumconfirm = $("#accountPhoneConfirm");
        let confirmSuccess = $("#accountPhoneConfirm").val();

        if ( phoneNumconfirm == null || confirmSuccess != "5412") {
            $(".phone_num_confirm_success").text("올바른 인증 번호를 입력해주세요.").css(
                {"color": "#C50532","position":"absolute","top":"123px","left":"100px"});
            phoneNumconfirm.val('');
            phoneNumconfirm.focus();
            return false;
        }else {
            $(".phone_num_confirm_success").text(' ');
        }//if ~ else end
    });//확인 btn end

    $(".payment_information_credit_card_btn.add_card").on("click",function () {
        $("#bg").css("display","block");
        $("#creditCardAddSection").css("display","block");
    });//결제 수단 추가 btn click end

    $(".credit_card_insert_btn").on("click",function () {
        $("#bg").css("display","none");
        $("#creditCardAddSection").css("display","none");
    });//popup 취소, 등록 btn click end

    $(".receipt_account_btn.add_card").on("click",function () {
        $("#bg").css("display","block");
        $("#receiptAccountAddSection").css("display","block");
    });//계좌 추가 btn click end

    $(".account_insert_btn").on("click",function () {
        $("#bg").css("display","none");
        $("#receiptAccountAddSection").css("display","none");
    });//popup 취소, 등록 btn click end

</script>
</body>
</html>