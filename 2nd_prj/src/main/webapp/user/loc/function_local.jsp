<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지 지시자 설정 --%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
//지역별 휴게소 첫페이지
/* var map ;
window.onload=function(){
var container = document.getElementById('map');
var options = {
	center: new kakao.maps.LatLng(37.56680618275856, 126.97865226396553),//기본 지도 위치는 서울 시청
	level: 13
}; 

}//onload*/
//map = new kakao.maps.Map(container, options);



// 지역을 클릭 했을 때, 이동할 위도/경도/위치를 생성합니다 
function panTo( latLng ) {
    var tempLatLng=latLng.split(",");
    var moveLatLon = new kakao.maps.LatLng(tempLatLng[0],tempLatLng[1], tempLatLng[2],
    		tempLatLng[3],tempLatLng[4],tempLatLng[5],tempLatLng[6],tempLatLng[7],
    		tempLatLng[8],tempLatLng[9],tempLatLng[10],tempLatLng[11],tempLatLng[12],
    		tempLatLng[13],tempLatLng[14]);
    
// 지도 중심을 부드럽게 이동시킵니다
// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
	}        


//각 지역의 중심좌표(시청/도청)
$("#seoul").click( function(){ //37.56680618275856, 126.97865226396553
	$("#hidden").submit();
} );

$("#InCheon").click( function(){ //36.521262837135794, 127.08059923438643
	$("#hidden").submit();
} );

$("#gyeongGiDo").click( function(){ //36.521262837135794, 127.08059923438643
	$("#hidden").submit();
} );

$("#gangWon").click( function(){ //36.521262837135794, 127.08059923438643
	$("#hidden").submit();
} );

$("#chungNam").click( function(){ //36.658823851198, 126.67277789438113
	$("#hidden").submit();
} );

$("#chungBug").click( function(){ //36.6353144624646, 127.49146431652277
	$("#hidden").submit();
} );

$("#daeJeon").click( function(){ //36.35048259471354, 127.38482899946409
	$("#hidden").submit();
} );

$("#jeonNam").click( function(){ //34.816043439644275, 126.46280006087093
	$("#hidden").submit();
} );

$("#jeonBug").click( function(){ //35.820195455176155, 127.10898501017087
	$("#hidden").submit();
} );

$("#gwangJu").click( function(){ //35.16005239546396, 126.85163828080933
	$("#hidden").submit();
} );

$("#gyeongNam").click( function(){ //35.23768689993227, 128.69192143849028
	$("#hidden").submit();
} );

$("#gyeongBug").click( function(){ //36.57597416220703, 128.505798268333
	$("#hidden").submit();
} );

$("#daeGu").click( function(){ //35.8713631180291, 128.60180736020476
	$("#hidden").submit();
} );

$("#ulSan").click( function(){ //35.53957875859995, 129.31160847733696
	$("#hidden").submit();
} );

$("#buSan").click( function(){ //35.179707926039455, 129.07508354364657
	$("#hidden").submit();
} );

$("#jeJu").click( function(){ //서비스 불가 지역
	//$("#hidden").submit();
	alert("휴게소가 존재하지 않습니다.")
} );

</script>




<!-- 지역별 지도 조작 -->
<script>
mus1on  = new Image( );
mus1off = new Image( );
mus2on  = new Image( );
mus2off = new Image( );
mus3on  = new Image( );
mus3off = new Image( );
mus4on  = new Image( );
mus4off = new Image( );
mus5on  = new Image( );
mus5off = new Image( );
mus6on  = new Image( );
mus6off = new Image( );
mus7on  = new Image( );
mus7off = new Image( );
mus8on  = new Image( );
mus8off = new Image( );
mus9on  = new Image( );
mus9off = new Image( );
mus10on  = new Image( );
mus10off = new Image( );
mus11on  = new Image( );
mus11off = new Image( );
mus12on  = new Image( );
mus12off = new Image( );
mus13on  = new Image( );
mus13off = new Image( );
mus14on  = new Image( );
mus14off = new Image( );
mus15on  = new Image( );
mus15off = new Image( );
mus16on  = new Image( );
mus16off = new Image( );
/* 마우스가 올라가면 색이 바뀜 */
mus1off.src = '../loc/map/m061.gif';
mus2off.src = '../loc/map/m063.gif';
mus3off.src = '../loc/map/m055.gif';
mus4off.src = '../loc/map/m033.gif';
mus5off.src = '../loc/map/m041.gif';
mus6off.src = '../loc/map/m031.gif';
mus7off.src = '../loc/map/m043.gif';
mus8off.src = '../loc/map/m054.gif';
mus9off.src = '../loc/map/m064.gif';
mus10off.src = '../loc/map/m02.gif';
mus11off.src = '../loc/map/m032.gif';
mus12off.src = '../loc/map/m042.gif';
mus13off.src = '../loc/map/m062.gif';
mus14off.src = '../loc/map/m053.gif';
mus15off.src = '../loc/map/m052.gif';
mus16off.src = '../loc/map/m051.gif';
mus1on.src  = '../loc/map/m061o.gif';
mus2on.src  = '../loc/map/m063o.gif';
mus3on.src  = '../loc/map/m055o.gif';
mus4on.src  = '../loc/map/m033o.gif';
mus5on.src  = '../loc/map/m041o.gif';
mus6on.src  = '../loc/map/m031o.gif';
mus7on.src  = '../loc/map/m043o.gif';
mus8on.src  = '../loc/map/m054o.gif';
mus9on.src  = '../loc/map/m064o.gif';
mus10on.src  = '../loc/map/m02o.gif';
mus11on.src  = '../loc/map/m032o.gif';
mus12on.src  = '../loc/map/m042o.gif';
mus13on.src  = '../loc/map/m062o.gif';
mus14on.src  = '../loc/map/m053o.gif';
mus15on.src  = '../loc/map/m052o.gif';
mus16on.src  = '../loc/map/m051o.gif';


var cMuName="";

//눌렀을 때 뜨는 메세지
var exx = new Array("","전남","전북","경남","강원","충남","경기","충북","경북","제주",
		"서울","인천","대전","광주","대구","울산","부산","제주 지역은 서비스 불가 지역입니다");
		
//마우스 오버		
function mus_on(musName) {
  if(cMuName!=musName) {
     document [musName].src = eval(musName + 'on.src');
  }
}

function mus_off(musName) {
  if(cMuName!=musName)
     document [musName].src = eval(musName + 'off.src');
}

 function smenu_click(musName){ 
	 if(musName =="제주"){
		 alert("휴게소가 존재하지 않습니다.")
		 return;
	 }
// 서버로 보낼 데이터 준비
     $.ajax({
         url: '../loc/local_ajax.jsp', // 서버의 URL
         type: 'GET',
         dataType: 'json',
         data: "loc=" + musName,
         success: function(jsonObj) {
         // 서버 응답 처리
         var locData = jsonObj.data;
         viewRA( locData )
        
    	    // 이동할 위도 경도 위치를 생성합니다 
    	    var moveLatLon = new kakao.maps.LatLng(jsonObj.lat, jsonObj.lng);
    	    // 지도 중심을 이동 시킵니다
    	    map.setCenter(moveLatLon);
    	    map.setLevel(10);
         },
         error: function(xhr) {
         // 오류 처리
            console.log('오류 발생:'+xhr.status);
         }
      });
     
     
 
     /* cMuName=musName;
     document [musName].src = eval(musName + 'on.src'); */
     
}
</script>




<script> 
	var infowindows  = [];
function viewRA( locData ){
	
	resetFunction();
	var previousInfowindow = null;
	for (var i = 0; i < locData.length; i ++) {
    
	//var infowindow = null;
    var latlng = new kakao.maps.LatLng(locData[i].x, locData[i].y)
    
    // 마커를 생성합니다
    marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: latlng, // 마커를 표시할 위치
        title : locData[i].localName, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        clickable: true
    });
	markers.push(marker);
	
	if (infowindow) {
        infowindow.close(); // 이미 열려있는 인포윈도우가 있다면 닫기
    }
	
	var iwContent = /* "<div  style='padding:5px;'>" +  */
	"<a class='btn btn-success' href='../ra_page/restarea_page.jsp?rano=" + locData[i].rano + "'>"+
			locData[i].localName + "</a>";
    var iwRemoveable = true;

    // 인포윈도우를 생성하고 지도에 표시합니다
    infowindow = new kakao.maps.InfoWindow({
        content: iwContent,
        //removable: iwRemoveable
    });
    
    infowindows.push(infowindow);

    // 클로저를 사용하여 이벤트 핸들러를 등록합니다
    (function (marker, infowindow) {
        kakao.maps.event.addListener(marker, 'click', function () {
        	// 이전에 열린 인포윈도우가 있다면 닫기
                if (previousInfowindow) {
                    previousInfowindow.close();
                }
            infowindow.open(map, marker);
            // 열린 인포윈도우를 previousInfowindow에 저장
            previousInfowindow = infowindow;
        });
    })(marker, infowindow);
	
	}
    
    
    
}//moveRA

</script>

