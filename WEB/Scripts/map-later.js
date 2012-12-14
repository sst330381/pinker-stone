
                                $(function () {
                                    $.cookie("m_start", null);
                                    $.cookie("m_dest", null);
                                });

                                var map = new BMap.Map("bmap");
                                var point = new BMap.Point(116.404, 39.915);
                                var gc = new BMap.Geocoder();
                                map.centerAndZoom(point, 12);
                                map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
                                map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

                                //ip定位
                                var myCity = new BMap.LocalCity();
                                myCity.get(function (result) {
                                    var cityName = result.name;
                                    map.setCenter(cityName);
                                });

                                //重新绘制图标
                                function drawicons() {
                                    map.clearOverlays();
                                    var s_position, d_position;
                                    var driving = new BMap.DrivingRoute(map, { renderOptions: { map: map, autoViewport: true} });
                                    if ($.cookie("m_start") != null && $.cookie("m_start") != "") {
                                        var s_icon = new BMap.Icon("/img/map/carmark.png", new BMap.Size(32, 72));
                                        s_position = new BMap.Point($.cookie('m_start').split(',')[0], $.cookie('m_start').split(',')[1]);
                                        var s_marker = new BMap.Marker(s_position, { icon: s_icon });
                                        map.addOverlay(s_marker);
                                        s_marker.enableDragging();
                                        s_position = new BMap.Point($.cookie('m_start').split(',')[0], $.cookie('m_start').split(',')[1]);
                                    }
                                    if ($.cookie("m_dest") != null && $.cookie("m_dest") != "") {
                                        var d_icon = new BMap.Icon("/img/map/homemark.png", new BMap.Size(32, 72));
                                        d_position = new BMap.Point($.cookie('m_dest').split(',')[0], $.cookie('m_dest').split(',')[1]);
                                        var d_marker = new BMap.Marker(d_position, { icon: d_icon });
                                        map.addOverlay(d_marker);
                                        d_marker.enableDragging();
                                        d_position = new BMap.Point($.cookie('m_dest').split(',')[0], $.cookie('m_dest').split(',')[1]);
                                    }
                                    var driving = new BMap.DrivingRoute(map, {
                                        //                    onSearchComplete: taxiFareCalc, //计算出租车价格
                                        //renderOptions: { map: map, panel: "r-result" },//panel选项用来显示在哪里展示路线
                                        renderOptions: { map: map, autoViewport: true },
                                        policy: BMAP_DRIVING_POLICY_LEAST_DISTANCE,
                                        onMarkersSet: function (pois) {
                                            var start = pois[0].marker, end = pois[1].marker;
                                            start.enableDragging(); //开启起点拖拽功能
                                            end.enableDragging(); //开启终点拖拽功能
                                            start.addEventListener("dragend", function (e) {
                                                map.clearOverlays();
                                                driving.search(e.point, end.getPosition());
                                            });
                                            end.addEventListener("dragend", function (e) {
                                                map.clearOverlays();
                                                driving.search(start.getPosition(), e.point);
                                            });
                                        }
                                    });
                                    driving.search(s_position, d_position);
                                }

                                //创建右键菜单
                                var menu = new BMap.ContextMenu();
                                var txtMenuItem = [
                                {
                                    text: '起点',
                                    callback: function (p) {
                                        $.cookie("m_start", p.lng + "," + p.lat);
                                        drawicons();
                                    }
                                },
                                {
                                    text: '终点',
                                    callback: function (p) {
                                        $.cookie("m_dest", p.lng + "," + p.lat);
                                        drawicons();
                                    }
                                }];
                                for (var i = 0; i < txtMenuItem.length; i++) {
                                    menu.addItem(new BMap.MenuItem(txtMenuItem[i].text, txtMenuItem[i].callback, 100));
                                }
                                map.addContextMenu(menu);

                                //输入框智能提示
                                var startac = new BMap.Autocomplete(    //建立一个自动完成的对象
                                {"input": "startplace", "location": map });
                                var destac = new BMap.Autocomplete(    //建立一个自动完成的对象
                                {"input": "destplace", "location": map });

                                startac.addEventListener("onhighlight", function (e) {  //鼠标放在下拉列表上的事件
                                    var str = "";
                                    var _value = e.fromitem.value;
                                    var value = "";
                                    if (e.fromitem.index > -1) {
                                        value = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    }
                                    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

                                    value = "";
                                    if (e.toitem.index > -1) {
                                        _value = e.toitem.value;
                                        value = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    }
                                    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
                                    $("#searchResultPanel").innerHTML = str;
                                });

                                var inputValue;
                                startac.addEventListener("onconfirm", function (e) {    //鼠标点击下拉列表后的事件
                                    var _value = e.item.value;
                                    inputValue = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    $("#searchResultPanel").innerHTML = "onconfirm<br />index = " + e.item.index + "<br />inputValue = " + inputValue;
                                    start_setPlace();
                                });

                                destac.addEventListener("onhighlight", function (e) {  //鼠标放在下拉列表上的事件
                                    var str = "";
                                    var _value = e.fromitem.value;
                                    var value = "";
                                    if (e.fromitem.index > -1) {
                                        value = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    }
                                    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

                                    value = "";
                                    if (e.toitem.index > -1) {
                                        _value = e.toitem.value;
                                        value = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    }
                                    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
                                    $("#searchResultPanel").innerHTML = str;
                                });

                                destac.addEventListener("onconfirm", function (e) {    //鼠标点击下拉列表后的事件
                                    var _value = e.item.value;
                                    inputValue = _value.province + _value.city + _value.district + _value.street + _value.business;
                                    $("#searchResultPanel").innerHTML = "onconfirm<br />index = " + e.item.index + "<br />inputValue = " + inputValue;
                                    dest_setPlace();
                                });

                                function start_setPlace() {
                                    map.clearOverlays();    //清除地图上所有覆盖物
                                    function myFun() {
                                        var p = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
                                        $.cookie("m_start", p.lng + "," + p.lat);
                                        drawicons();
                                    }
                                    var local = new BMap.LocalSearch(map, { //智能搜索
                                        onSearchComplete: myFun
                                    });
                                    local.search(inputValue);
                                }

                                function dest_setPlace() {
                                    map.clearOverlays();    //清除地图上所有覆盖物
                                    function myFun() {
                                        var p = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
                                        $.cookie("m_dest", p.lng + "," + p.lat);
                                        drawicons();
                                    }
                                    var local = new BMap.LocalSearch(map, { //智能搜索
                                        onSearchComplete: myFun
                                    });
                                    local.search(inputValue);
                                }