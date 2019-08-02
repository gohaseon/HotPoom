/************************paymentPopup******************************/
$creditCardAddPopupCloseBtn = $("#creditCardAddPopup .close_popup");
$creditCardAddPopup = $("#creditCardAddPopup");
$paymentPopupCLoseBtn = $("#paymentPopup .close_popup");
$paymentPopup = $("#paymentPopup");
$paymentBg = $("#paymentBg");
$creditCardAddForm = $("#creditCardAddForm");
$addCredit = $("#addCredit");


$addCredit.on("click",function () {
    $creditCardAddPopup.show();
})//$addCredit end

//결제팝업 끄기 버튼
$paymentPopupCLoseBtn.on("click",function () {
    $paymentBg.hide();
})//$paymentPopupCLoseBtn end

//결제카드추가 팝업 끄기 버튼
$creditCardAddPopupCloseBtn.on("click",function () {
    $creditCardAddPopup.hide();
})//$creditCardAddPopupCloseBtn end

//결제카드추가 submit
$creditCardAddForm.on("submit",function (e) {
    e.preventDefault();
    $creditCardAddPopup.hide();
});//$creditCardAddForm end


/************************paymentPopup******************************/