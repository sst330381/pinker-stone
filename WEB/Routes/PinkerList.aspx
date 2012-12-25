<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="PinkerList.aspx.cs"
    Inherits="PinkerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/Styles/pinkerlist.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
    <script type="text/javascript">
        $(function () {
            $("#lbltype1_short").css("display", "block"); $("#lbltype2_finddri").css("display", "block");
            $(".resutil>li").click(function () { $(this).parent().find("li").children().css("display", "none"); $(this).children().css("display", "block") });
            $('#showList').click(function () { if ($('#showList').attr('class') == 'btn') { $('#resultlist').css('display', 'block'); $('#resultmap').css('display', 'none') } });
            $('#showMap').click(function () { if ($('#showMap').attr('class') == 'btn') { $('#resultmap').css('display', 'block'); $('#resultlist').css('display', 'none') } });

            $("#lbltype1_host").click(function () { $.cookie("pubtype1_s", "host"); });
            $("#lbltype1_pinker").click(function () { $.cookie("pubtype1_s", "pinker"); });
            $("#lbltype2_short").click(function () { $.cookie("pubtype2_s", "short"); });
            $("#lbltype2_long").click(function () { $.cookie("pubtype2_s", "long"); });
            $("#lbltype2_self").click(function () { $.cookie("pubtype2_s", "self"); });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="container-fluid page">
            <div class="row-fluid">
                <div class="span8">
                    <div class="card padded2">
                        <div class="form-horizontal">
                            <label class="control-label-low">
                                拼车类型:</label>
                            <div class="controls form-inline">
                                <ul class="resutil">
                                    <%--<li>全部<span id="lbltype1_all" runat="server" style="display: none;">✔全部 </span></li>--%>
                                    <li id="lbltype2_short">上下班拼车<span id="lbltype1_short" style="display: none;">✔上下班拼车 </span>
                                    </li>
                                    <li id="lbltype2_long">长途拼车<span id="lbltype1_long" style="display: none;">✔长途拼车 </span>
                                    </li>
                                    <li id="lbltype2_self">自驾拼车<span id="lbltype1_self" style="display: none;">✔自驾拼车 </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="form-horizontal">
                            <label class="control-label-low">
                                拼客类型:</label>
                            <div class="controls form-inline">
                                <ul class="resutil">
                                    <li id="lbltype1_host" tsize="driver">找车主<span id="lbltype2_finddri" style="display: none;">✔找车主
                                    </span></li>
                                    <li id="lbltype1_pinker" tsize="pinker">找拼客<span id="lbltype2_findpin" style="display: none;">✔找拼客
                                    </span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="form-horizontal">
                            <label class="control-label">
                                线路:</label>
                            <div class="controls">
                                <input id="txtStart" type="text" placeholder="输入起点..." runat="server"/>
                                到
                                <input id="txtDest" type="text" placeholder="输入终点..." runat="server"/>
                                <input id="btnsearch" type="button" class="btn btn-primary" value="搜索" />
                            </div>
                        </div>
                    </div>
                    <div id="controls">
                        <div displayed="list" id="toggle">
                            <div style="">
                                <div id="num_results" class="summary">
                                    <span id="summary" style="display: inline;">
                                        <%=resultcout%></span> <span id="summary_text" style="display: inline;">条结果</span>
                                    <div style="display: none;" id="summary_loading">
                                    </div>
                                </div>
                                <div class="btn-group toggle-display" data-toggle="buttons-radio">
                                    <a id="showList" class="btn active"><span class="icon-list"></span>列表</a> <a id="showMap"
                                        class="btn"><span class="icon-map-marker"></span>地图</a>
                                </div>
                            </div>
                            <div id="summary_and_filter" class="filters" style="">
                            </div>
                        </div>
                    </div>
                    <div id="resultmap" class="hide" style="margin-top: 10px; border: 1px solid #BBB;
                        -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px;">
                        <div id="bmap" style="height: 300px;">
                        </div>
                    </div>
                    <div id="resultlist">
                        <div id="sort">
                            <div id="sort_text">
                                <span class="gray">排序:</span> <a sort="distance" href="#" class="current_sort">距离
                                </a><span class="gray">| </span><a sort="price" href="#" class="other_sort">价格 </a>
                            </div>
                        </div>
                        <asp:Repeater ID="rptcars" runat="server">
                            <ItemTemplate>
                                <div id="car_results">
                                    <div class="car_result">
                                        <div class="row-fluid">
                                            <div class="information span9">
                                                <div class="photo">
                                                    <a href='/Routes/RouteDetail.aspx?id=<%#Eval("ID") %>' title="">
                                                        <%--<div style="background: url('/img/car1.jpg')" class="car_photo">
                                                        </div>--%>
                                                        <div style="background: url('http://api.map.baidu.com/staticimage?width=150&height=100&paths=<%#Eval("StartLocation") %>;<%#Eval("DestLocation") %>&markers=<%#Eval("StartLocation") %>|<%#Eval("DestLocation") %>&pathStyles=0xff0000,5,1&markerStyles=l,A|l,B|l')" class="car_photo">
                                                        </div>
                                                    </a>
                                                </div>
                                                <a href='/Routes/RouteDetail.aspx?id=<%#Eval("ID") %>' class="title" title="">
                                                    <h3>
                                                        <%#Eval("Startpoint")%>---<%#Eval("Destination")%>
                                                    </h3>
                                                </a>
                                                <div class="rating">
                                                    <span class="star-ratings"><span class="icon-star-empty"></span><span class="icon-star-empty">
                                                    </span><span class="icon-star-empty"></span><span class="icon-star-empty"></span><span
                                                        class="icon-star-empty"></span></span>
                                                        <a href="#" title="">
                                                            ( 0 喜欢 ) </a>
                                                </div>
                                                <div class="description">
                                                    <%#Eval("Remark")%>（寻找杭州上下班拼车的车友，油价涨了，分担一下油费）
                                                </div>
                                            </div>
                                            <div class="action span3">
                                                <h3 class="price">
                                                    ￥10.00</h3>
                                                <div class="duration">
                                                    单程</div>
                                                <div class="distance">
                                                    <span><span class="icon icon-map-marker"></span><%#Eval("Miles")%> </span><span class="muted">公里</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="pagination pagination-right pagination-large">
                            <ul>
                                <li><a href="#">«</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">.........</a></li>
                                <li><a href="#">14</a></li>
                                <li><a href="#">15</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="muted pull-right">
                        没有找到合适你的？邀请附近的朋友加入拼车一族！[weibo_api]
                    </div>
                </div>
                <div class="span4">
                    <div class="card">
                        <div id="queueBox">
                            <h3 class="section-title">
                                拼车清单
                            </h3>
                        </div>
                        <div id="sideIntro" class="padded2">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript" src="/Scripts/pinkerlist.js"></script>
</asp:Content>
