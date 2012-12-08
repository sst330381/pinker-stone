<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="PubRoute.aspx.cs"
    Inherits="PubRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .lead
        {
            font-family: "sommet-rounded" , Helvetica, Arial, sans-serif;
            font-size: 20px;
            color: #888883;
            line-height: 20px;
            padding-top: 6px;
            padding-bottom: 20px;
            border-bottom: 1px solid #afafa9;
            margin-bottom: 20px;
            line-height: 30px;
            text-shadow: 0 1px 0 white;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $()
            $(".resutil>li").click(function () {
                $(this).parent().find("li").children().css("display", "none");
                $(this).children().css("display", "block");
                switch ($.trim($(this).children().html())) {
                    case "✔车主":
                        $("#div_pass").css("display", "block");
                        break;
                    case "✔拼客":
                        $("#div_pass").css("display", "none");
                        break;
                    case "✔上下班拼车":
                        $("#select_shortrun").css("display", "block");
                        $("#datepicker_longrun").css("display", "none");
                        break;
                    case "✔长途拼车":
                        $("#select_shortrun").css("display", "none");
                        $("#datepicker_longrun").css("display", "block");
                        break;
                    case "✔自驾拼车":
                        break;
                }
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="container-fluid page">
            <div class="row-fluid">
                <div class=" span8">
                    <h1>
                        发布路线
                    </h1>
                    <p class="lead">
                        建议您填写以下信息,完整的信息有助于您获取更多的机会!
                    </p>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 我是</label>
                        <div class="controls form-inline">
                            <ul class="resutil">
                                <li tsize="host">车主<span style="display: none;">✔车主 </span></li>
                                <li tsize="pinker">拼客<span style="display: none;">✔拼客 </span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 拼车类型</label>
                        <div class="controls form-inline">
                            <ul class="resutil">
                                <li tsize="shortrun">上下班拼车<span style="display: none;">✔上下班拼车 </span></li>
                                <li tsize="longrun">长途拼车<span style="display: none;">✔长途拼车 </span></li>
                                <li tsize="selfrun">自驾拼车<span style="display: none;">✔自驾拼车 </span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 起点:</label>
                        <div class="controls">
                            <input type="text" placeholder="起点" />
                            终点: <input type="text" placeholder="终点" />
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 出发时间</label>
                        <div class="controls">
                            <select id="select_shortrun" style="display: block; float: left;">
                                <option value="工作日">工作日</option>
                                <option value="周末">周末</option>
                                <option value="每天">每天</option>
                                <option value="其他">其他</option>
                            </select>
                            <input id="datepicker_shortrun" type="text" placeholder="出发时间" style="display: none;
                                float: left;" />
                            <input id="datepicker_longrun" type="text" placeholder="出发日期" style="display: none;
                                float: left;" />
                            <select>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <select>
                                <option value="00">00</option>
                                <option value="10">10</option>
                                <option value="20">20</option>
                                <option value="30">30</option>
                                <option value="40">40</option>
                                <option value="50">50</option>
                            </select></div>
                    </div>
                    <div id="div_pass" class="form-horizontal">
                        <label class="control-label-low">
                            途径地点:</label>
                        <div class="controls">
                            <input type="text" placeholder="途径地点" />
                            <input type="text" placeholder="途径地点" />
                            <input type="text" placeholder="途径地点" /></div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            补充说明:</label>
                        <div class="controls">
                            <textarea rows="8" style="width: 625px;" placeholder="请输入你要补充的信息..."></textarea></div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                           * 联系人:</label>
                        <div class="controls">
                            <input type="text" placeholder="拼车联系人" /></div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                           * 联系电话:</label>
                        <div class="controls">
                            <input type="text" placeholder="拼车人联系电话" /></div>
                    </div>
                    <p class="lead">
                    </p>
                    <input class="btn btn-large btn-primary" type="button" value="马上发布" />
                </div>
                <div class="span4">
                    <div class="card">
                        <div id="queueBox">
                            <h3 class="section-title">
                                拼车清单
                            </h3>
                        </div>
                        <div class="padded2">
                            aaaaaaaaaaaaaaaaaaaa
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
