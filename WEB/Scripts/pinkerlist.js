var map = new BMap.Map("bmap");
var point = new BMap.Point(116.404, 39.915);
var myGeo = new BMap.Geocoder();

map.centerAndZoom(point, 12);
map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

//ip定位
var myCity = new BMap.LocalCity();
myCity.get(function (result) {
    var cityName = result.name;
    map.setCenter(cityName);
});
var transit = new BMap.DrivingRoute(map, {
    policy: BMAP_DRIVING_POLICY_LEAST_TIME
});

var index = 0;
var adds = [];

function bdGEO() {
    var pt = adds[index];
    geocodeSearch(pt);
    index++;
}
function geocodeSearch(pt) {
    if (index < adds.length) {
        setTimeout(window.bdGEO, 300);
    }
    myGeo.getLocation(pt, function (rs) { var addComp = rs.business; document.getElementById("sideIntro").innerHTML += index + ". " + adds[index - 1].lng + "," + adds[index - 1].lat + "：" + "商圈(" + rs.business + ")<br/><br/>"; });
}

//$(function () {
//        $.ajax({
//            type: "POST",
//            url: "/Routes/SearchHandler.ashx",
//            data: "",
//            async: false,
//            success: function (return_data) {
//                $.each(return_data, function (key, val) {
//                    var point = new BMap.Point(return_data[key].StartLocation.split(",")[0], return_data[key].StartLocation.split(",")[1]);
//                    adds.push(point);
//                    var marker = new BMap.Marker(point);
//                    var sContent = "<div style='padding-top:10px;'><a href='/Routes/RouteDetail.aspx?id=" + return_data[key].ID + "'>" + return_data[key].Startpoint + "--->" + return_data[key].Destination + "</a></div>";
//                    var infoWindow = new BMap.InfoWindow(sContent);
//                    map.addOverlay(marker);
//                    marker.addEventListener("click", function () {
//                        this.openInfoWindow(infoWindow);
//                        //图片加载完毕重绘infowindow
//                        $('#imgDemo').onload = function () {
//                            infoWindow.redraw();
//                        };
//                        transit.search(
//                         new BMap.Point(return_data[key].StartLocation.split(",")[0], return_data[key].StartLocation.split(",")[1]),
//                        new BMap.Point(return_data[key].DestLocation.split(",")[0], return_data[key].DestLocation.split(",")[1]));
//                    });
//                });
//            },
//            error: function (msg) { alert('Oh,~ shit: ' + msg); }
//        });
//        bdGEO();
//});
