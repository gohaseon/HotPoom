<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
