<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .billboard
        {
            background-image: url(/img/home/header_bg.jpg);
            background-position: center;
            height: 590px;
            background-repeat: no-repeat;
            background-position: top center;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            position: relative;
        }
        .heading-title
        {
            padding-bottom: 80px;
        }
        .heading-title h1
        {
            text-align: center;
            font-size: 40px;
            line-height: 42px;
            font-family: "sommet-rounded" , Helvetica, Arial, sans-serif;
            padding-bottom: 20px;
        }
        .heading-title h3
        {
            text-align: center;
            font-size: 30px;
            font-family: "sommet-light" , Helvetica, Arial, sans-serif;
            color: #888883;
            line-height: normal;
            margin-top: -10px;
        }
        .sheet
        {
            padding: 40px 40px 80px 40px;
            margin-bottom: 40px;
            background: white;
            border: 1px solid #E6E6E6;
            -webkit-box-shadow: 0 15px 10px -10px rgba(0, 0, 0, 0.15);
            -moz-box-shadow: 0 15px 10px -10px rgba(0, 0, 0, 0.15);
            box-shadow: 0 15px 10px -10px rgba(0, 0, 0, 0.15);
        }
        .space-breaker
        {
            margin: 80px 20px;
            background: #D5D5D0;
            height: 1px;
        }
        .fact-sheet
        {
            text-align: left;
            padding: 0 40px;
            border-right: 1px dashed #D5D5D0;
        }
        .fact-sheet .purple-fact
        {
            text-align: center;
            color: #AB3F97;
            font-family: "sommet-light" , Helvetica, Arial, sans-serif;
            font-size: 50px;
            line-height: 60px;
            padding-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="billboard header drop-shadow">
        <div class="container">
            <div class="page">
                <h1 style="margin-right: 0px;">
                </h1>
                <h3 class="offset6">
                    分享是永恒之道.
                    <br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Share to continue a timeless tradition.
                </h3>
                <div class="input-append" style="margin: 100px auto auto 200px;">
                    <input type="text" class="span6" style="height: 30px;"  value="QQ: 125158082   新浪微博:Livermorest"/>
                    <input type="button" class="btn btn-info" value="查询"
                    style="height: 40px; width: 100px;margin:auto auto 9px -5px;"/>
                </div>
            </div>
        </div>
    </div>
    <div class="sheet top container">
        <div class="heading-title">
            <h1>
                致力于资源共享的社区
            </h1>
            <h3>
                和顺路的人一起搭车
            </h3>
        </div>
        <div class="row-fluid">
            <div class="span4">
                <div class="fact-sheet">
                    <div class="purple-fact">
                        简单
                        </div>
                    <p>
                        通过网站或者App，输入起始点和终点，快速搜索附近可以搭乘的顺风车。
                    </p>
                </div>
            </div>
            <div class="span4">
                <div class="fact-sheet">
                    <div class="purple-fact">
                        透明
                    </div>
                    <p>
                        车主设置搭乘的价格，拼客选择适合自己的价格和路线。
                    </p>
                </div>
            </div>
            <div class="span4">
                <div class="fact-sheet last">
                    <div class="purple-fact">
                        快捷
                    </div>
                    <p>
                        选择合适的路线，通过身份验证，即可联系到车主。
                    </p>
                </div>
            </div>
        </div>
        <div class="space-breaker">
        </div>
        <!-- / Facts #2 -->
        <div class="heading-title">
            <h1>
                致力于人与地球的和谐共存
            </h1>
            <h3>
                保护环境 从我做起
            </h3>
        </div>
        <div class="row-fluid">
            <div class="span4">
                <div class="fact-sheet">
                    <div class="purple-fact">
                        10 亿
                    </div>
                    <p>
                        目前全世界汽车保有量将近10亿，而在将来的10年，全球汽车数量依然会继续猛增，至2027年会达到20亿辆。
                    </p>
                </div>
            </div>
            <div class="span4">
                <div class="fact-sheet">
                    <div class="purple-fact">
                        70%
                    </div>
                    <p>
                        在大气污染中，汽车尾气排放所造成的污染占大气污染的60%~70%。
                    </p>
                </div>
            </div>
            <div class="span4">
                <div class="fact-sheet last">
                    <div class="purple-fact">
                        22 小时
                    </div>
                    <p>
                        平均每辆车每天空座时间达到22小时，这样每天将有200亿的车时被浪费。
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
