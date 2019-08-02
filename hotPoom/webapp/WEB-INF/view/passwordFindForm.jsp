<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
    <link rel="stylesheet" href="css/passwordFindForm.css">
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>
    <div id="passwordFindSection">
        <p>비밀번호 찾기</p>
        <p>계정으로 등록된 이메일 주소를 입력하시면 비밀번호 재설정 링크를 전송해드립니다.</p>
        <p>이메일 주소</p>
        <p id="passwordCheckMsg">올바른 이메일 형식을 입력해주세요.</p>
        <form id="passwordFindForm">
            <input id="emailInput" name="email" autocomplete="off" placeholder="ex) people@gmail.com">
            <button id="passwordFindBtn" class="btn">전 송</button>
        </form>
    </div><!--//passwordFindForm-->
    <div id="bg">
        <div id="passwordFindPopup">
            <p><span>jooga2967@gmail.com</span>으로 비밀번호 재설정 링크를 보냈습니다. 링크를 클릭하여 비밀번호를 재설정하세요.</p>
            <a id="emailLinkBtn" href="">비밀번호 재설정하러 가기</a>
        </div>
    </div>
<c:import url="/WEB-INF/template/footer.jsp"/>
<script>
    /* -----------------------------------------------------비밀번호 찾기---------------------------------------- */

    let email = "";

    $("#passwordFindBtn").on("click", function (e) {
        e.preventDefault();
        email = $("#emailInput").val();

        $("#passwordFindPopup span").text(email);


        checkEmail(email);

    });//passwordFindBtn click end

    function checkEmail(email) {

        let subCheck = email.indexOf("@");
        let site = email.substring(subCheck+1,email.length);

        var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

        if (regEmail.test(email)) {
            $("#bg").css("display","block");
            $("#passwordCheckMsg").css("display", "none");
            $("#emailLinkBtn").attr("href","https://www." + site);
        } else {
            $("#passwordCheckMsg").css("display", "block");
        }
    }// 이메일 형식 유효성검사

</script>
</body>
</html>