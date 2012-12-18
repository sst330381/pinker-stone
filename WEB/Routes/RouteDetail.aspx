<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="RouteDetail.aspx.cs" Inherits="RouteDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
    <script src="/Scripts/ShareSNS.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="container-fluid page">
            <h1>
                <asp:Label ID="lbltitle" Text="This is the title" runat="server" /></h1>
            <p class="leadnew" class="alert">
                <a>提示：上车前建议您核对车主身份信息</a>
            </p>
            <div class="row-fluid">
                <div class="span8">
                    <div class="card">
                        <div class="padded2">
                            <div>
                                <a href="javascript:void(0)" onclick="postToWb();return false;" class="tmblog">
                                    <img style="margin: 10px  0 0 5px; float: right" src="/img/qweibo32.png"></a>
                                <a href="javascript:void(0)" onclick="postToSina();return false;" class="tmblog">
                                    <img style="margin: 10px 0 0 5px; float: right" src="/img/sina32.png"></a>
                                <a href="javascript:void(0)" onclick="postToRenren();return false;" class="tmblog">
                                    <img style="margin: 10px 0 0 5px; float: right" src="/img/renren32.png"></a>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    类型:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lbltype" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    时间:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lbldatetime" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    线路:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lblroute" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    途经:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lblpassby" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    备注:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lblremark" Text="leixing" runat="server" /></div>
                            </div>
                            <br />
                            <div id="resultmap" style="margin-top: 10px; border: 1px solid #BBB; -webkit-border-radius: 4px;
                                -moz-border-radius: 4px; border-radius: 4px;">
                                <div id="bmap" style="height: 300px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <div class="card">
                        <div class="padded2">
                            <a id="a_avatar" runat="server"><asp:Image id="img_avatar" ImageUrl="/img/mavatar/M_001.JPG" class="pull-right" runat="server" /></a>
                            <h1>
                                <asp:Label ID="lblconn_name" Text="leixing" runat="server" /></h1>
                            <div class="form-horizontal" style="margin-top: 20px;">
                                <label class="control-label" style="padding-top: 2px;">
                                    类型:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lbldriver" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    联系人电话:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="lblconn_phone" Text="leixing" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    信用等级:
                                </label>
                                <div class="controls">
                                    <asp:Label ID="Label3" Text="★★★" runat="server" /></div>
                            </div>
                            <div class="form-horizontal">
                                <label class="control-label" style="padding-top: 2px;">
                                    认证信息:
                                </label>
                                <div class="controls">
                                    <a href="http://e.weibo.com/segmentfault" target="_blank">
                                        <img style="width: 20px; height: 20px;" src="/img/sina32.png" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:HiddenField ID="p_start" runat="server" />
                    <asp:HiddenField ID="p_dest" runat="server" />
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var map = new BMap.Map("bmap");
        var point = new BMap.Point(116.404, 39.915);
        var gc = new BMap.Geocoder();
        map.centerAndZoom(point, 12);
        map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
        map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

        $(function () {
            var driving = new BMap.DrivingRoute(map, {
                renderOptions: { map: map, autoViewport: true },
                policy: BMAP_DRIVING_POLICY_LEAST_TIME
            });
            var s_position = new BMap.Point($("#<%=p_start.ClientID %>").val().split(',')[0], $("#<%=p_start.ClientID %>").val().split(',')[1]);
            d_position = new BMap.Point($("#<%=p_dest.ClientID %>").val().split(',')[0], $("#<%=p_dest.ClientID %>").val().split(',')[1]);
            driving.search(s_position, d_position);
        });

    </script>
</asp:Content>
