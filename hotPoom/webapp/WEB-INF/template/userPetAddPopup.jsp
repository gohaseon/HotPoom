<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="bg"><!-- form이 없네요~ -->
    <div id="petAddPopup">
        <h1>펫 추가하기</h1>
        <button class="popup_close"><i class="far fa-times-circle"></i></button>
        <div id="petAddPopupWrap">
            <p>성별</p>
            수컷<input type="radio"/> 암컷<input type="radio"/>
            <p>이름</p>
            <input id="petNameInput" placeholder="펫의 이름을 입력해주세요."/>
            <p>사진</p>
            <div id="petImgBox">
                <img id="petImg" src="img/defaultProfile.jpg" />
                <label>
                    <i class="fas fa-camera img_icon"></i>
                    <input id="petFile" type="file" />
                </label>
            </div>
            <button id="petAddBtn" class="btn">등록</button>
        </div><!--//petAddPopupWrap-->
    </div><!--//petAddPopup-->
</div>