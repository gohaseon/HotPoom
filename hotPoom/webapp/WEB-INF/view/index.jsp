<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOTPOOM</title>
    <c:import url="/WEB-INF/template/link.jsp"/>
<!--     <link rel="stylesheet" href="/css/activatePopup.css">
    <link rel="stylesheet" href="/css/authentificationPopup.css"> -->
    <link rel="stylesheet" href="/css/index.css"/>
</head>
<body>
<c:import url="/WEB-INF/template/header.jsp"/>

    <div id="indexContentsSection">
        <form id="indexHeroImageWrap">
            <div id="indexHeroImageInner">
                <div id="indexHeroImageLocationBox" class="index_hero_image_box">
                    <h4>위치</h4>
                    <label for="indexHeroImageLocationInput">
                    <input id="indexHeroImageLocationInput" name="indexLocation" class="index_hero_image_long_input"/></label>
                    <div class="index_hero_image_location_auto auto_complete">
                        <ul id="indexLocationAutoComplete" class="index_auto_complete_ul">

                        </ul>
                    </div>
                </div>
                <div id="indexHeroImageDateBox" class="index_hero_image_box">
                        <h4>체크인</h4>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="startpicker-input" name="indexCheckIn" type="text" aria-label="Date">
                        <span class="tui-ico-date"></span>
                        <div id="startpicker-container" style="margin-left: -1px;"></div>
                    </div>
                        <h4>체크아웃</h4>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input id="endpicker-input" name="indexCheckOut" type="text" aria-label="Date">
                        <span class="tui-ico-date"></span>
                        <div id="endpicker-container" style="margin-left: -1px;"></div>
                    </div>
                </div>
                <div id="indexHeroImageSpeciesBox" class="index_hero_image_box">
                    <h4>종</h4>
                    <label for="indexHeroImageSpeciesInput">
                    <input id="indexHeroImageSpeciesInput" name="indexSpecies" class="index_hero_image_long_input"/></label>
                    <div class="index_hero_image_species_auto auto_complete">
                        <ul id="indexSpeciesAutoComplete" class="index_auto_complete_ul">

                        </ul>
                    </div>
                </div>
                <div id="indexHeroImageNumBox" class="index_hero_image_box">
                    <h4>마리 수</h4>
                    <input id="indexPetCntInput" name="indexPetCnt" class="index_hero_image_short_input"/> 마리
                </div>
                <button id="indexHeroImageSearchBtn" type="submit">검색</button>
            </div><!-- //indexHeroImageInner -->
        </form><!-- //indexHeroImageWrap -->
        <div id="indexContentsPoomWrap">
            <span id="indexContentsPoomTitle">품(POOM)이란?</span>
            <div id="indexContentsPoomInner">
                <span>PET + ROOM을 합친 합성어이며 펫이 머무르는 방이라는 뜻을 가지고 있습니다. </span>
                <p>
                	<span>한글로 '품다'라는 뜻을 나타내기도 합니다.</span>
                </p>
            </div>
        </div><!-- //indexContentsPoomWrap -->
        <div id="indexContentsHotPoomWrap" class="index_contents_poom_wrap">
            <span id="indexContentsHotPoomTitle" class="index_contents_poom_title">HOT POOM</span>
            <div id="indexContentsHotPoomInner" class="index_contents_poom_inner">
                
            </div><!--  //indexContentsHotPoomInner  -->
        </div><!-- //indexContentsHotPoomWrap -->
        <div id="indexContentsNewPoomWrap" class="index_contents_poom_wrap">
            <span id="indexContentsNewPoomTitle" class="index_contents_poom_title">NEW POOM</span>
            <div id="indexContentsNewPoomInner" class="index_contents_poom_inner">
                <c:forEach items="${newPoomList }" var="newPoom">
                <div class="small_card">
                    <ul>
                        <li class="small_card_li">
                        <li><img class="small_card_img" src="/img/poom/${newPoom.img }" alt="${newPoom.title }"/></li>
                        <li><div class="small_card_hotel small_card_padding"> 
                        	<c:choose>
                        		<c:when test="${newPoom.type eq 'C' }"><i class="fas fa-hotel"></i></c:when>
                        		<c:otherwise> <i class="fas fa-home"></i></c:otherwise>
                        	</c:choose>
							${newPoom.title}
                        	</div></li>
                        <li><div class="small_card_pet small_card_padding">${newPoom.petName } ${newPoom.petCnt }마리</div></li>
                    </ul>
                </div> <!--  //small_card  -->
                </c:forEach>
            </div><!--  //indexContentsHotPoomInner  -->
        </div><!-- //indexContentsNewPoomWrap -->
    </div><!--  //indexContentsSection  -->
<c:import url="/WEB-INF/template/footer.jsp"/>
<script type="text/template" id="indexLocationAutoTmp">
    <@_.each(locations, function(location){@>
        <li class="index_location_auto" data-name="<@=location.name@>"><@=location.name@></li>
    <@});@>
</script>
<script type="text/template" id="indexSpeciesAutoTmp">
    <@_.each(speciesList, function(species){@>
        <li class="index_species_auto" data-name="<@=species.name @>"><@=species.name @></li>
    <@});@>
</script>
<script type="text/template" id="indexSmallCardTmp">
<@_.each(poomList, function(poom){@>	
<div class="small_card">
	<ul id="hotPoomList">
   		<div class="small_card_li"> 
			<li><img class="small_card_img" src="/img/poom/<@=poom.img @>" alt="<@=poom.title @>"/></li>
    		<li><div class="small_card_hotel small_card_padding"> 
				<@ if(poom.type == 'P') {@><i class="fas fa-home"></i> <@} else {@><i class="fas fa-hotel"></i><@}@>
				<@ if(poom.title.length > 10) {@> <@=poom.title@> <@} else {@><@=poom. title@><@}@>
				</div></li>
    		<li><div class="small_card_pet small_card_padding"><i class="fas fa-star"></i> <@=poom.score @></div></li>                    
		</div>            
    </ul>
</div> <!--  //small_card  -->
<@});@>
</script>
<script>
	_.templateSettings = {interpolate : /\<\@\=(.+?)\@\>/gim, evaluate : /\<\@([\s\S]+?)\@\>/gim, escape : /\<\@\-(.+?)\@\>/gim};

	const indexLocationAutoTmp = _.template($("#indexLocationAutoTmp").html());
	const indexSpeciesAutoTmp = _.template($("#indexSpeciesAutoTmp").html());
	const indexSmallCardTmp = _.template($("#indexSmallCardTmp").html());
	
	let $locationAuto = $("#indexLocationAutoComplete");
	let $locationInput = $("#indexHeroImageLocationInput");
	
	let $speciesAuto = $("#indexSpeciesAutoComplete");
	let $speciesInput = $("#indexHeroImageSpeciesInput");
	
	
	/*****************위치 자동완성********************/
	
	function autoCompleteLocation() {
	    let location = $locationInput.val().trim();
	
	    console.log(location);
	
	    if (location.length == 0) {
	        return false;
	    }
	
	    console.log("test");
	
	    $.ajax({
	        url:"/ajax/location/auto/"+location,
	        dataType:"json",
	        type:"get",
	        error:function () {
	            alert("서버 점검 중");
	        },
	        success:function (json) {
	            console.log(json);
	
	            $locationAuto.empty();
	
	            $locationAuto.append(indexLocationAutoTmp({"locations":json}));
	        }//success end
	    });//ajax end
	}//autoCompleteLocation() end
	
	$("#indexHeroImageLocationBox").on("keyup",$locationInput,function () {
	    autoCompleteLocation();
	    $(".index_hero_image_location_auto").show();
	});//#indexHeroImageLocationBox keyup end
	
	
	$locationAuto.on("click", ".index_location_auto", function() {
	
	    $locationInput.val(this.dataset.name);
	
	    locationName = $locationInput.val();
	
	    console.log(locationName);
	
	    $(".index_hero_image_location_auto").empty().hide();
	
	});//$locationAuto click end
	
	/*****************위치 자동완성********************/
	
	
	/*****************종 자동완성********************/
	function autoCompleteSpecies() {
	    let indexSpecies = $speciesInput.val().trim();
	
	    console.log(indexSpecies);
	
	    if (indexSpecies.length == 0) {
	        return false;
	    }
	
	    console.log("test111");
	
	    $.ajax({
	        url:"/ajax/species/auto/"+indexSpecies,
	        dataType:"json",
	        error:function () {
	            alert("서버 점검 중");
	        },
	        success:function (json) {
	            console.log(json);
	
	            $speciesAuto.empty();
	
	            $speciesAuto.append(indexSpeciesAutoTmp({"speciesList":json}));
	        }//success end
	    });//ajax end
	}//autoCompleteSpecies() end
	
	
	$("#indexHeroImageSpeciesBox").on("keyup", $speciesInput, function () {
	    autoCompleteSpecies();
	    $(".index_hero_image_species_auto").show();
	});//#indexHeroImageLocationBox keyup end
	
	
	$speciesAuto.on("click", ".index_species_auto", function() {
	
	    $speciesInput.val(this.dataset.name);
	
	    speciesName = $speciesInput.val();
	
	    console.log(speciesName);
	
	    $(".index_hero_image_species_auto").empty().hide();
	
	});//$locationAuto click end
	/*****************종 자동완성********************/
	
	
	/*****************달력********************/
	let today = new Date();
	const picker = tui.DatePicker.createRangePicker({
	    startpicker: {
	        date: today,
	        input: '#startpicker-input',
	        container: '#startpicker-container'
	    },
	    endpicker: {
	        date: today,
	        input: '#endpicker-input',
	        container: '#endpicker-container'
	    },
	    selectableRanges: [
	        [today, new Date(today.getFullYear() + 1, today.getMonth(), today.getDate())]
	    ],
	    language:'ko'
	});
	/*****************달력*******************/
	
	
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
	
	
	//버튼 클릭시 검색
	$("#indexHeroImageSearchBtn").on("click", function () {
	
		let location = $("#indexHeroImageLocationInput").val();
		let species = $("#indexHeroImageSpeciesInput").val();
		let petCnt = $("#indexPetCntInput").val();
		
		if(location ==  "") {
			
			$("#indexHeroImageLocationInput").focus();
			return false;
		}
		
		if(species == "") {
			
			$("#indexHeroImageSpeciesInput").focus();
			return false;
		}
		
		if(petCnt == "") {
			
			$("indexPetCntInput").focus();
			return false;
		}
		
	});//indexHeroImageSearchBtn click() end
	
	//small card
	function getHotPoomList() {
		
		$.ajax({
			url:"/ajax/hot/poom",
			dataType:"json",
			type:"get",
			error:function (){
				alert("hot poom 점검 중");
			},
			success:function (json){
				$("#indexContentsHotPoomInner").append(indexSmallCardTmp({"poomList" : json}));
			}//success end
		});//ajax end
	}//getHotPoomList() end
	
	getHotPoomList();

</script>
</body>
</html>