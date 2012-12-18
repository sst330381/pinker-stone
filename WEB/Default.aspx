<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/Styles/default.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banners">
    </div>
    <div class="wrapper">
        <div class="container" id="home-main">
            <div class="floater">
                <div class="row-fluid title-box">
                    <div class="main-title">
                        <div class="padded3 border-right">
                            <h1 class="title">
                                轻松拼车,环保出行.
                            </h1>
                            <h2 class="subtitle">
                                向左走，向右走，点击<a href="">发布路线</a>寻找一起拼车的TA吧
                            </h2>
                        </div>
                    </div>
                    <div class="main-action">
                        <div class="padded3">
                            <input id="btn_pubroute" rel="tooltip" data-original-title="Default tooltip" type="button"
                                class="btn btn-info btn-xxlarge" value="发布路线" onclick="location.href='/PubRoute.aspx'" />
                        </div>
                    </div>
                </div>
                <div class="row-fluid main-cars">
                    <div id="main_cars" class="span12 viewer">
                        <div class="viewport">
                            <div style="width: 1552px;" id="car_list" class="car-list overview" onmouseover="stopscroll();"
                                onmouseout="doscroll()">
                                <div class="car">
                                    <a href="#">
                                        <div style="background: url(http://api.map.baidu.com/staticimage?width=240&height=150&paths=120.101986,30.266591;120.188481,30.24987&markers=120.101986,30.266591|120.188481,30.24987&pathStyles=0xff0000,5,1&markerStyles=l,A|l,B|l)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_001.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">username </a><a href="#">
                                            <div class="car_make" title="大众(进口)-Jetta">
                                                大众(进口)-Jetta
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥7.00
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="#">
                                        <div style="background:  url(http://api.map.baidu.com/staticimage?width=240&height=150&paths=120.101986,30.266591;120.188481,32.24987&markers=120.101986,30.266591|120.188481,32.24987&pathStyles=0xff0000,5,1&markerStyles=l,A|l,B|l)"
                                         class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_002.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">username </a><a href="#">
                                            <div class="car_make" title="大众GTi">
                                                大众GTi
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥8
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="#">
                                        <div style="background:  url(http://api.map.baidu.com/staticimage?width=240&height=150&paths=120.101986,30.216591;120.188481,30.24987&markers=120.101986,30.216591|120.188481,30.24987&pathStyles=0xff0000,5,1&markerStyles=l,A|l,B|l)"
                                         class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_003.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">mini </a><a href="#">
                                            <div class="car_make" title="Mini Cooper">
                                                Mini Cooper
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥10
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="#">
                                        <div style="background:  url(http://api.map.baidu.com/staticimage?width=240&height=150&paths=120.121986,30.296591;120.188481,30.24987&markers=120.121986,30.296591|120.188481,30.24987&pathStyles=0xff0000,5,1&markerStyles=l,A|l,B|l)"
                                         class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_004.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">toddtimes </a><a href="#">
                                            <div class="car_make" title="大众 Jetta">
                                                大众Jetta
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥5
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="#">
                                        <div style="background: url(/img/home/cardemo.png)" class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_005.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">tacoma24 </a><a href="#">
                                            <div class="car_make" title="丰田 Tacoma">
                                                丰田 Tacoma
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥10
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car last">
                                    <a href="#">
                                        <div style="background: url(/img/home/cardemo.png)" class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="/img/mavatar/M_006.JPG" style="height: 75px; width: 75px" class="image">
                                        </div>
                                        <a href="#" class="car_name">hybrid </a><a href="#">
                                            <div class="car_make" title="本田 思域">
                                                本田 思域
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="浙江 杭州">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥6
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="width: 950px;" id="car_scrollbar" class="scrollbar">
                            <div class="scrollbar_bg">
                            </div>
                            <div class="track" style="width: 950px;">
                                <div class="thumb" style="left: 360.4384003974168px; width: 115.6234475906607px;">
                                    <div class="thumb_bg">
                                    </div>
                                    <div class="end">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="callout">
                <div class="split left-side">
                    <div class="padded2">
                        <h2>
                            关于17拼客
                        </h2>
                        <p>
                            17拼客网是一个拼车平台，致力于为广大车主和拼客提供更环保的出行方式 。通过网络手段建立起用户与顺风车司机以及租车公司之间的信息桥梁。 17拼车网致力于解决人们在春运等各大节日期间由于各种原因没有买到车票而无法出行的困难，让拼车回家成为可能；
                            又能让广大白领朋友轻松上下班，无需挤公交和倒车，不必为等车烦恼。采用拼车方式，省时、省力、省心。 <a href="#">更多</a>
                        </p>
                    </div>
                </div>
                <div class="split right-side">
                    <div class="padded2">
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
