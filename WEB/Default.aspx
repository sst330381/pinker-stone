<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
    </script>
    <style type="text/css">
        body
        {
            background: url(/img/home/main_bg.jpg?) no-repeat top center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-position: center top;
            height: 100%;
        }
        .floater<%--磨砂玻璃--%>
        {
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            -ms-border-radius: 6px;
            -o-border-radius: 6px;
            border-radius: 6px;
            -webkit-box-shadow: 0 4px 16px 0px rgba(0, 0, 0, 0.5);
            -moz-box-shadow: 0 4px 16px 0px rgba(0, 0, 0, 0.5);
            box-shadow: 0 4px 16px 0px rgba(0, 0, 0, 0.5);
            margin: 20px 0 40px 0;
        }
        .wrapper {
          min-height: 100%;
          height: auto !important;
          height: 100%;
          margin: 0 auto -188px;
        }
        /* line 35, ../sass/app/_home.sass */
        .wrapper .container {
          width: 980px;
          padding-top: 60px;
          position: relative;
          margin: 0 auto 0;
          height: auto;
          min-width: 980px;
          overflow: visible;
        }
        .wrapper .push {
          height: 188px;
        }
        .wrapper .title-box 
        {
          border-top: 1px solid #888883;
          background: url(/img/patterns/checker_medium.png);
          -moz-border-radius-topleft: 6px;
          -webkit-border-top-left-radius: 6px;
          -ms-border-top-left-radius: 6px;
          -o-border-top-left-radius: 6px;
          border-top-left-radius: 6px;
          -moz-border-radius-topright: 6px;
          -webkit-border-top-right-radius: 6px;
          -ms-border-top-right-radius: 6px;
          -o-border-top-right-radius: 6px;
          border-top-right-radius: 6px;
        }
        /* line 49, ../sass/app/_home.sass */
        .wrapper .main-title {
          width: 65%;
          margin-left: 0px;
          float: left;
        }
        /* line 53, ../sass/app/_home.sass */
        .wrapper .main-title .title {
          font-size: 40px;
          color: white;
          margin-bottom: 10px;
          text-shadow: 0 1px 0 black;
        }
        /* line 58, ../sass/app/_home.sass */
        .wrapper .main-title .subtitle {
          color: #d5d5d0;
          text-shadow: 0 1px 0 black;
        }
        /* line 61, ../sass/app/_home.sass */
        .wrapper .main-action {
          width: 34%;
          float: right;
          text-align: center;
          border-left: 1px solid #555550;
          height: 130px;
        }
        /* line 67, ../sass/app/_home.sass */
        .wrapper .main-action .padded {
          padding-bottom: 10px;
        }
        /* line 69, ../sass/app/_home.sass */
        .wrapper .main-action .facepile-box {
          width: 235px;
          margin-left: 30px;
          filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
          opacity: 0;
        }
        /* line 74, ../sass/app/_home.sass */
        .main-cars {
          height: 286px;
          padding: 15px 0px 0px 0px;
          border-top: 1px solid #555550;
          background: url(/img/patterns/checker_medium.png);
          position: relative;
          -moz-border-radius-bottomleft: 6px;
          -webkit-border-bottom-left-radius: 6px;
          -ms-border-bottom-left-radius: 6px;
          -o-border-bottom-left-radius: 6px;
          border-bottom-left-radius: 6px;
          -moz-border-radius-bottomright: 6px;
          -webkit-border-bottom-right-radius: 6px;
          -ms-border-bottom-right-radius: 6px;
          -o-border-bottom-right-radius: 6px;
          border-bottom-right-radius: 6px;
          -webkit-box-shadow: 0px -1px 5px rgba(0, 0, 0, 0.8) inset;
          -moz-box-shadow: 0px -1px 5px rgba(0, 0, 0, 0.8) inset;
          box-shadow: 0px -1px 5px rgba(0, 0, 0, 0.8) inset;
        }
        /* line 82, ../sass/app/_home.sass */
        .main-cars .viewer {
          height: 270px;
          padding-top: 15px;
        }
        /* line 85, ../sass/app/_home.sass */
        .main-cars .viewer .viewport {
          width: 100%;
          height: 230px;
          position: relative;
          overflow: hidden;
        }
        /* line 90, ../sass/app/_home.sass */
        .main-cars .viewer .viewport .overview {
          list-style: none;
          position: absolute;
          left: 0px;
          top: 0px;
          padding: 0px;
          margin: 0px;
        }
        /* line 97, ../sass/app/_home.sass */
        .main-cars .car-list {
          width: 2692px;
          height: 230px;
        }
        /* line 100, ../sass/app/_home.sass */
        .main-cars .car-list .car {
          width: 240px;
          height: 230px;
          margin: 0px 12px;
          border-radius: 6px;
          -moz-border-radius: 6px;
          -webkit-box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
          -moz-box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
          box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
          background-color: white;
          background-image: url(/img/home/car_bg.png);
          background-repeat: repeat;
          display: inline-block;
          vertical-align: top;
        }
        /* line 114, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_photo {
          width: 240px;
          height: 150px;
          border-radius: 6px 6px 0px 0px;
          -moz-border-radius: 6px 6px 0px 0px;
          -webkit-box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
          -moz-box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
          box-shadow: rgba(0, 0, 0, 0.75) 0px 1px 4px inset;
        }
        /* line 122, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description {
          width: 240px;
          height: 80px;
          position: relative;
        }
        /* line 126, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .user_photo, .main-cars .car-list .car .car_description .car_name, .main-cars .car-list .car .car_description .car_make, .main-cars .car-list .car .car_description .car_city, .main-cars .car-list .car .car_description .car_price {
          position: absolute;
        }
        /* line 128, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .user_photo {
          width: 60px;
          height: 60px;
          top: 10px;
          left: 8px;
          border-radius: 6px;
          -moz-border-radius: 6px;
        }
        /* line 135, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_name, .main-cars .car-list .car .car_description .car_city, .main-cars .car-list .car .car_description .car_make {
          white-space: nowrap;
          overflow: hidden;
          text-overflow: ellipsis;
          width: 150px;
        }
        /* line 140, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_name {
          display: block;
          top: 4px;
          left: 79px;
          color: #00a8b4;
          font-size: 13px -1;
          font-family: "sommet-rounded-bold", Helvetica, Arial, sans-serif;
        }
        /* line 147, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_make {
          top: 21px;
          left: 79px;
          font-size: 16px;
          color: #444444;
          font-family: "sommet-rounded-bold", Helvetica, Arial, sans-serif;
        }
        /* line 153, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_city {
          top: 39px;
          left: 79px;
          font-size: 12px;
        }
        /* line 157, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_price {
          top: 55px;
          left: 79px;
          font-size: 14px;
          color: #ab3f97;
          font-family: "sommet-rounded-bold", Helvetica, Arial, sans-serif;
        }
        /* line 163, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_price .time {
          color: #777777;
        }
        /* line 165, ../sass/app/_home.sass */
        .main-cars .car-list .car .car_description .car_price .money, .main-cars .car-list .car .car_description .car_price .time {
          display: inline;
        }
        /* line 167, ../sass/app/_home.sass */
        .main-cars .car-list .car.first {
          margin-left: 20px;
        }
        /* line 169, ../sass/app/_home.sass */
        .main-cars .car-list .car.last {
          margin-right: 20px;
        }
        /* line 171, ../sass/app/_home.sass */
        .scrollbar {
          background: transparent url(/img/home/scrollbar_bg.png) no-repeat 0px 0px;
          position: relative;
          clear: both;
          width: 950px;
          height: 26px;
          margin: 7px 15px 0px 15px;
        }
        /* line 178, ../sass/app/_home.sass */
        .scrollbar .scrollbar_bg {
          position: absolute;
          top: 0px;
          left: 13px;
          width: 924px;
          height: 26px;
          background: transparent url(/img/home/scrollbar_bg.png) repeat-x 0px -52px;
        }
        /* line 185, ../sass/app/_home.sass */
        .scrollbar .track {
          background: transparent url(/img/home/scrollbar_bg.png) no-repeat 937px -26px;
          width: 950px;
          height: 26px;
          position: relative;
        }
        /* line 190, ../sass/app/_home.sass */
        .scrollbar .track .thumb {
          background: transparent url(/img/home/scrollbar.png) no-repeat right -22px;
          height: 22px;
          cursor: pointer;
          overflow: hidden;
          position: absolute;
          left: 0;
          top: 2px;
        }
        /* line 198, ../sass/app/_home.sass */
        .scrollbar .track .thumb .thumb_bg {
          margin: 0px 12px;
          background: transparent url(/img/home/scrollbar.png) repeat-x 0px -44px;
          height: 22px;
        }
        /* line 202, ../sass/app/_home.sass */
        .scrollbar .track .thumb .end {
          position: absolute;
          top: 0px;
          left: 0px;
          background: transparent url(/img/home/scrollbar.png) no-repeat 0px 0px;
          overflow: hidden;
          height: 22px;
          width: 12px;
        }
        /* line 210, ../sass/app/_home.sass */
        .scrollbar .disable {
          display: none;
        }
                /*-------------------------------callout--------------------------------*/
                .callout {
          width: 100%;
          margin: 10px 0;
          color: white;
          border-top: 1px solid #888883;
          border-top: 1px solid rgba(136, 136, 131, 0.82);
          border-bottom: 1px solid #333328;
          border-bottom: 1px solid rgba(0, 0, 0, 0.82);
          -webkit-border-radius: 6px;
          -moz-border-radius: 6px;
          -ms-border-radius: 6px;
          -o-border-radius: 6px;
          border-radius: 6px;
          background: url(/img/patterns/checker_medium.png);
          overflow: hidden;
        }
        /* line 226, ../sass/app/_home.sass */
        .callout .split {
          display: block;
          float: left;
          width: 49%;
          height: auto;
          min-height: 175px;
        }
        /* line 232, ../sass/app/_home.sass */
        .callout .split.left-side {
          border-right: 1px solid #555550;
        }
        /* line 234, ../sass/app/_home.sass */
        .callout .split.right-side {
          border-left: 1px solid black;
        }
        /* line 237, ../sass/app/_home.sass */
        .callout .split h2, .callout .split h3, .callout .split p {
          color: white;
          text-shadow: 0 1px 0 black;
        }
        /* line 240, ../sass/app/_home.sass */
        .callout .split a {
          text-decoration: underline;
        }
        /* line 242, ../sass/app/_home.sass */
        .callout .split a:hover {
          text-decoration: none;
          color: #00cfe4;
        }
    </style>
    <script src="http://api.amap.com/webapi/init?v=1.1" type="text/javascript"></script>
    <script type="text/javascript">
        function initialize() {
            var mapObj = new AMap.Map("container"); // 创建地图实例  
            var point = new AMap.LngLat(116.404, 39.915); // 创建点坐标  
            mapObj.setCenter(point); // 设置地图中心点坐标  
        }  
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banners">
    </div>
    <div class="wrapper">
        <div class="container" id="home-main">
            <div class="floater">
                <div class="row-fluid title-box">
                    <div class="main-title">
                        <div class="padded border-right">
                            <h1 class="title">
                                轻松拼车,环保出行.
                            </h1>
                            <h2 class="subtitle">
                                向左走，向右走，点击<a href="">发布路线</a>寻找一起拼车的TA吧~~
                            </h2>
                        </div>
                    </div>
                    <div class="main-action">
                        <div class="padded">
                            <a href="#" id="signup_button" class="btn btn-primary btn-large has-block-icon btn-join-now"
                                data-original-title="">
                                <div class="block-icon block-icon-fb icon-facebook">
                                </div>
                                <div class="btn-label ">
                                    发布路线
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="main-cars">
                    <div class="padded">
                        <asp:TextBox ID="txtStart" runat="server" />
                        <asp:TextBox ID="txtDest" runat="server" />
                        <asp:Button ID="btnSearch" Text="查询" runat="server" OnClick="btnSearch_Click" CssClass="btn-danger btn-small" />
                    </div>
                    <div id="container">
                    </div>
                </div>
            </div>
            <div class="callout">
                <div class="split left-side">
                    <div class="padded">
                        <h2>
                            关于17拼客
                        </h2>
                        <p>
                            17拼客网是一个拼车平台，致力于为广大车主和拼客提供更环保的出行方式 。通过网络手段建立起用户与顺风车司机以及租车公司之间的信息桥梁。 巧拼车既能解决人们在春运等各大节日期间由于各种原因没有买到车票而无法出行的困难，让拼车回家成为可能；
                            又能让广大白领朋友轻松上下班，无需挤公交和倒车，不必为等车烦恼。采用拼车方式，省时、省力、省心。 <a href="#">更多</a>
                        </p>
                    </div>
                </div>
                <div class="split right-side">
                    <div class="padded">
                        <h2>
                            安全与信任
                        </h2>
                        <p>
                            17拼客网是一个拼车平台，致力于为广大车主和拼客提供更环保的出行方式 。在网络上约起拼车的过程中，要确认好拼车人信息。详细记录拼车者 姓名、年龄、身份证、个人及家庭联系方式等，最好有认识的人一起拼车。
                            车主和同车人应分别将了解到的对方信息发送给至少一名亲友，以备出现问题后联系使用，并有意让对方知道这个情况。<a href="#">更多 </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
