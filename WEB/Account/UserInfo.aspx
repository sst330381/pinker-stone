<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="UserInfo.aspx.cs" Inherits="Account_UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function saveData() {
            var src = $('#<%=imgavatar.ClientID %>').attr('src');
            $("[id$='imgsrc']").val(src);
            alert("保存成功");
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
            <h1>
                <asp:Label ID="lbltitle" Text="This is the title" runat="server" /></h1>
            <%--<p class="leadnew" class="alert">
                <a>提示：请认真填写身份信息</a>
            </p>--%>
            <hr />
            <div class="form-horizontal">
                <asp:Image ImageUrl="/img/mavatar/M_001.JPG" CssClass="pull-right img-circle" ID="imgavatar" data-toggle="modal" href="#myModal" runat="server" />
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
                    <div class="modal-footer">
                        <a href="#" class="btn" data-dismiss="modal">取消</a> <a href="#" class="btn btn-primary"
                            data-dismiss="modal" id="avatar_save">保存</a>
                    </div>
                </div>
                <label class="control-label-low">
                    * 常用联系人:</label>
                <div class="controls">
                    <asp:TextBox ID="txtname" placeholder="常用联系人" runat="server" />
                </div>
            </div>
            <div class="form-horizontal">
                <label class="control-label-low">
                    * 联系人号码:</label>
                <div class="controls">
                    <asp:TextBox ID="txtphone" placeholder="联系人号码" runat="server" />
                </div>
            </div>
            <div class="form-horizontal">
                <label class="control-label-low">
                    * 电子邮箱:</label>
                <div class="controls">
                    <asp:TextBox ID="txtemail" placeholder="电子邮箱" runat="server" />
                </div>
            </div>
            <hr />
            <asp:Button ID="btnSave" Text="保存信息" CssClass="btn btn-large" runat="server" OnClick="btnSave_Click"/>
        </div>
    </div>
</asp:Content>
