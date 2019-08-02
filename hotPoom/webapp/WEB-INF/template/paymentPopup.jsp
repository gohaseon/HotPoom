<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="paymentBg" class="bg">
    <div id="paymentPopup">
        <button type="button" class="close_popup far fa-times-circle"></button>
        <h3>결제</h3>
            <form id="reviewRegisterForm" action="" method="post">
            <div id="date" class="title">기간</div>
            <div id="dateContent">08.18 ~ 08.19, 2019</div>
            <div id="pet" class="title">펫</div>
            <div id="petContent">고양이 2마리</div>
            <div id="pay" class="title">금액</div>
            <div id="payContent">88,000원</div>
            <div id="paymentMethod" class="title">결제수단 선택</div>
            <select name="cardNo" id="paymentMethodSelect">
                <option value="1">신한 - 8409</option>
                <option value="2">농협 - 1204</option>
            </select>
            <button type="button" id="addCredit" class="btn">결제수단 추가</button><!--//없을때만 select없애고 넣기-->
            <div id="request" class="title">요청사항 작성</div>
            <textarea id="requestTextarea" name="" placeholder="요청사항을 입력해주세요."></textarea>
        <button type="submit" id="paymentBtn" class="btn">결제하기</button>
        </form>
    </div><!--//paymentPopup-->

    <div id="creditCardAddPopup">
        <button type="button" class="close_popup far fa-times-circle"></button>
        <h4>결제수단 추가</h4>
        <form id="creditCardAddForm" action="" method="post">
        <div id="creditCardSelectWrap">
            <h5 class="title">카드</h5>
            <select name='cardNo'  class='card_list_select'>
                <option value='0'>-선택-</option>
                <option value='1'>SC제일은행</option>
                <option value='2'>경남은행</option>
                <option value='3'>광주은행</option>
                <option value='4'>국민은행</option>
                <option value='5'>기업은행</option>
                <option value='6'>농협중앙회</option>
                <option value='7'>대구은행</option>
                <option value='8'>뱅크오브아메리카(BOA)</option>
                <option value='9'>부산은행</option>
                <option value='10'>산업은행</option>
                <option value='11'>새마을금고</option>
                <option value='12'>수협중앙회</option>
                <option value='13'>신한은행</option>
                <option value='14'>신협중앙회</option>
                <option value='15'>외환은행</option>
                <option value='16'>우리은행</option>
                <option value='17'>우체국</option>
                <option value='18'>전북은행</option>
                <option value='19'>제주은행</option>
                <option value='20'>하나은행</option>
                <option value='21'>한국씨티은행</option>
            </select>
        </div><!--//creditCardSelectWrap-->
        <div id="cardPersonInsertWrap">
            <div id="cardPersonNameInsertInner">
                <h5 class="title">이름</h5>
                <input name="name" class="card_name_insert_input" placeholder="이름"/>
            </div><!--//cardPersonNameInsertInner-->
        </div><!--//cardPersonInsertWrap-->
        <div id="cardInformaionInsertWrap">
            <h5 class="title">카드 정보</h5>
            <input name="cardNum" id="cardInformationInput" placeholder="카드번호"/>
            <div id="cardInformaionInsertInner">
                <span class="card_information_detail limit">만료일</span>
                <input name="month" class="card_information_detail_input credit_card_month" placeholder="월"/>
                <span class="card_information_detail slash">/</span>
                <input name="year" class="card_information_detail_input credit_card_year" placeholder="년도"/>
                <span class="card_information_detail">cvc</span>
                <input name="cvc" class="card_information_detail_input" placeholder="cvc"/>
            </div>
        </div>

        <div id="creditCardInsertBtnWrap">
            <button type="submit" class="credit_card_insert_btn credit_card_popup_register btn">등 록</button>
        </div>
        </form>
	</div>
</div><!-- //paymentBg -->