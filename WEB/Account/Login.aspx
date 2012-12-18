<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs"
    Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body
        {
            background: #f2f1f0 url("/img/patterns/papergrain.png");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="page">
            <div class="span5 offset3">
                <div class="card">
                    <div class="padded2">
                        <asp:Login ID="Login1" runat="server">
                            <LayoutTemplate>
                                <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                                    <tr>
                                        <td>
                                            <table cellpadding="0" style="margin-left: 80px;">
                                                <tr>
                                                    <td align="center" colspan="2">
                                                        <h2>
                                                            登录</h2>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="border-top: 1px solid #000000">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" style="padding-right: 20px;">
                                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                            ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="ctl03">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                            ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="ctl03">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" /><span class="text-warning" style="margin-left: 10px;">下次记住我</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="2" style="color: Red;">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" colspan="2">
                                                        <asp:Button CssClass="btn btn-info" ID="LoginButton" runat="server" CommandName="Login"
                                                            Text="登录" ValidationGroup="ctl03" OnClick="LoginButton_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <a href="/Account/Register.aspx"style="margin-left: 80px;">注册新用户</a>
                                <a href="/Account/QQweiboHandle.ashx" class="pull-right" style="margin-left: 10px;">
                                        <img src="/img/qweibo32.png" /></a><a href="/Account/QQweiboHandle.ashx" class="pull-right">
                                    <img src="/img/sina32.png" /></a> 
                            </LayoutTemplate>
                        </asp:Login>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
