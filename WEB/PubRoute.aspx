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
            $("#lbltype1_host").click(function () { $.cookie("pubtype1", "host"); });
            $("#lbltype1_pinker").click(function () { $.cookie("pubtype1", "pinker"); });
            $("#lbltype2_short").click(function () { $.cookie("pubtype2", "short"); });
            $("#lbltype2_long").click(function () { $.cookie("pubtype2", "long"); });
            $("#lbltype2_self").click(function () { $.cookie("pubtype2", "self"); });
            $("#<%=lbltype2_shortrunspan.ClientID %>").css("display", "block");
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
                        $("#<%=select_shortrun.ClientID %>").css("display", "block");
                        $("#<%=datepicker_longrun.ClientID %>").css("display", "none");
                        break;
                    case "✔长途拼车":
                        $("#<%=select_shortrun.ClientID %>").css("display", "none");
                        $("#<%=datepicker_otherrun.ClientID %>").css("display", "none");
                        $("#<%=datepicker_longrun.ClientID %>").css("display", "block");
                        break;
                    case "✔自驾拼车":
                        $("#<%=select_shortrun.ClientID %>").css("display", "none");
                        $("#<%=datepicker_otherrun.ClientID %>").css("display", "none");
                        $("#<%=datepicker_longrun.ClientID %>").css("display", "block");
                        break;
                }
            });
            function pubcheck() {
                alert('123');
                if ($("#<%=Startpoint.ClientID %>").val() == "") {
                    alert('tooltip');
                }
                return false;
            };
            $("#<%=select_shortrun.ClientID %>").click(function () {
                $("#<%=select_shortrun.ClientID %>").children().each(function () {
                    if ($(this).attr("selected") == "selected" && $(this).val() == "其他") {
                        $("#<%=datepicker_otherrun.ClientID %>").css("display", "block");
                    }
                    if ($(this).attr("selected") == "selected" && $(this).val() != "其他") {
                        $("#<%=datepicker_otherrun.ClientID %>").css("display", "none");
                    }
                });
            });
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
                            <ul id="pintype1" class="resutil">
                                <li id="lbltype1_host">车主 <span id="lbltype1_hostspan" style="display: block;" runat="server">
                                    ✔车主 </span></li>
                                <li id="lbltype1_pinker">拼客<span id="lbltype1_pinkerspan" style="display: none;"
                                    runat="server">✔拼客 </span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 拼车类型</label>
                        <div class="controls form-inline">
                            <ul id="pintype2" class="resutil">
                                <li id="lbltype2_short">上下班拼车<span id="lbltype2_shortrunspan" runat="server" style="display: block;">✔上下班拼车
                                </span></li>
                                <li id="lbltype2_long">长途拼车<span id="lbltype2_longrunspan" runat="server" style="display: none;">✔长途拼车
                                </span></li>
                                <li id="lbltype2_self">自驾拼车<span id="lbltype2_selfrunspan" runat="server" style="display: none;">✔自驾拼车
                                </span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 起点:</label>
                        <div class="controls">
                            <asp:TextBox ID="Startpoint" placeholder="起点" runat="server" Validate="NotNull"/>
                            终点:
                            <asp:TextBox ID="Destination" placeholder="终点" runat="server" />
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 出发时间</label>
                        <div class="controls">
                            <asp:DropDownList ID="select_shortrun" runat="server" Style="display: block; float: left;
                                margin-right: 4px;">
                                <asp:ListItem Text="工作日" />
                                <asp:ListItem Text="周末" />
                                <asp:ListItem Text="每天" />
                                <asp:ListItem Text="其他" />
                            </asp:DropDownList>
                            <asp:TextBox ID="datepicker_otherrun" placeholder="出发时间" Style="display: none; float: left;
                                margin-right: 4px;" runat="server" />
                            <asp:TextBox ID="datepicker_longrun" placeholder="出发时间" Style="display: none; float: left;
                                margin-right: 4px;" runat="server" />
                            <asp:DropDownList ID="datepicker_hour" runat="server">
                                <asp:ListItem Text="1" />
                                <asp:ListItem Text="2" />
                                <asp:ListItem Text="3" />
                                <asp:ListItem Text="4" />
                                <asp:ListItem Text="5" />
                                <asp:ListItem Text="6" />
                                <asp:ListItem Text="7" />
                                <asp:ListItem Text="8" />
                                <asp:ListItem Text="9" />
                                <asp:ListItem Text="10" />
                                <asp:ListItem Text="11" />
                                <asp:ListItem Text="12" />
                            </asp:DropDownList>
                            <asp:DropDownList ID="datepicker_minuts" runat="server">
                                <asp:ListItem Text="00" />
                                <asp:ListItem Text="10" />
                                <asp:ListItem Text="20" />
                                <asp:ListItem Text="30" />
                                <asp:ListItem Text="40" />
                                <asp:ListItem Text="50" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div id="div_pass" class="form-horizontal">
                        <label class="control-label-low">
                            途径地点:</label>
                        <div class="controls">
                            <asp:TextBox ID="txtpassby1" type="text" placeholder="途径地点" runat="server" />
                            <asp:TextBox ID="txtpassby2" type="text" placeholder="途径地点" runat="server" />
                            <asp:TextBox ID="txtpassby3" type="text" placeholder="途径地点" runat="server" /></div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            补充说明:</label>
                        <div class="controls">
                            <textarea id="txtappend" runat="server" rows="8" style="width: 625px;" placeholder="请输入你要补充的信息..."></textarea></div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 联系人:</label>
                        <div class="controls">
                            <asp:TextBox ID="txtconnectname" placeholder="拼车联系人" runat="server" />
                        </div>
                    </div>
                    <div class="form-horizontal">
                        <label class="control-label-low">
                            * 联系电话:</label>
                        <div class="controls">
                            <asp:TextBox ID="txtconnectphone" placeholder="拼车人联系电话" runat="server" />
                        </div>
                        <p class="lead">
                        </p>
                        <asp:Button ID="btnPub" CssClass="btn btn-large btn-primary" Text="马上发布" runat="server"
                            OnClick="btnPub_Click" OnClientClick="return pubcheck();"/>
                    </div>
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
