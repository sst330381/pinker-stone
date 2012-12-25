<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="UserInfo.aspx.cs" Inherits="Account_UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function saveData() {
            var src = $('#<%=imgavatar.ClientID %>').attr('src');
            $("[id$='avatar_hidden']").val(src);
        }

        //avatar选中样式
        $(function () {
            $(".avatar>img").click(function () {
                $(".avatar>img").css("border", "");
                $(".avatar>img").attr("xuanzhong", "no");
                $(this).css("border", "1px solid black");
                $(this).attr("xuanzhong", "yes");
            });
        });

        //保存avatar
        $(function () {
            $("#avatar_save").click(function () {
                $(".avatar>img").each(function () {
                    if ($(this).attr("xuanzhong") == "yes") {
                        $('#<%=imgavatar.ClientID %>').attr("src", $(this).attr('src'));
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="span10 offset1 page">
            <div style="height: 90px;">
                <div class="img-circle-border pull-left">
                    <asp:Image ImageUrl="/img/mavatar/M_001.JPG" CssClass="img-circle" ID="imgavatar"
                        data-toggle="modal" href="#myModal" runat="server" />
                </div>
                <h1>
                    <asp:Label ID="lbltitle" Text="This is the title" runat="server" /></h1>
                <hr />
            </div>
            <div id="myModal" class="modal hide fade" style="width: 500px">
                <div class="modal-header">
                    <a class="close" data-dismiss="modal">&times;</a>
                    <!-- 知识点: close类关闭 -->
                    <h3>
                        头像选择</h3>
                </div>
                <div class="modal-body" data-toggle="click">
                    <div class="control-group  avatar">
                        <img src="/img/mavatar/M_001.JPG" value="M_001.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_002.JPG" value="M_002.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_003.JPG" value="M_003.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_004.JPG" value="M_004.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_005.JPG" value="M_005.JPG" xuanzhong="false" />
                    </div>
                    <div class="control-group avatar">
                        <img src="/img/mavatar/M_006.JPG" value="M_006.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_007.JPG" value="M_007.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_008.JPG" value="M_008.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_009.JPG" value="M_009.JPG" xuanzhong="false" />
                        <img src="/img/mavatar/M_010.JPG" value="M_010.JPG" xuanzhong="false" />
                    </div>
                </div>
                <asp:HiddenField ID="avatar_hidden" runat="server" />
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">取消</a> <a href="#" class="btn btn-primary"
                        data-dismiss="modal" id="avatar_save">保存</a>
                </div>
            </div>
            <div style="display: block; margin-left: 120px;">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width:90px;">* 性别:</td>
                        <td>
                            <input id="radio_m" type="radio" name="name" value="男" runat="server" checked="true" style="margin-right:10px;"/>男
                            <input id="radio_f" type="radio" name="name" value="女" runat="server" style="margin-left:20px;margin-right:10px;"/>女
                        </td>
                    </tr>
                    <tr>
                        <td style="width:90px;">* 常用联系人:</td>
                        <td><asp:TextBox ID="txtname" placeholder="常用联系人" runat="server" style="margin-top:8px;" /></td>
                    </tr>
                    <tr>
                        <td>* 联系人号码:</td>
                        <td><asp:TextBox ID="txtphone" placeholder="联系人号码" runat="server"  style="margin-top:8px;" /></td>
                    </tr>
                    <tr>
                        <td>* 电子邮箱:</td>
                        <td><asp:TextBox ID="txtemail" placeholder="电子邮箱" runat="server"  style="margin-top:8px;" /></td>
                    </tr>
                </table>
            </div>
            <hr />
            <asp:Button ID="btnSave" Text="保存信息" CssClass="btn btn-primary btn-large pull-right"
                runat="server" OnClientClick="saveData();" OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>
