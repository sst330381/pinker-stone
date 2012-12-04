<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MapTest.aspx.cs" Inherits="MapTest" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>异步加载</title>
    <script type="text/javascript">
        function initialize() {
            var map = new BMap.Map('map');
            map.centerAndZoom(new BMap.Point(121.491, 31.233), 11);
            map.addControl(new BMap.NavigationControl());
        }

        function loadScript() {
            var script = document.createElement("script");
            script.src = "http://api.map.baidu.com/api?v=1.4&callback=initialize";
            document.body.appendChild(script);
        }

        window.onload = loadScript;
    </script>
</head>
<body>
    <div id="map" style="width: 500px; height: 320px;position:absolute">
    </div>
</body>
</html>
