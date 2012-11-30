<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs"
    Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    登录
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="ctl03">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="ctl03">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" AssociatedControlID="Password">验证码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtImgValid" runat="server" Font-Size="0.8em"></asp:TextBox>
                                    <asp:ImageButton ID="imgValid" ImageUrl="/ImageValidate.aspx" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" ValidationGroup="ctl03" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <a href="/Register.aspx">注册新用户</a>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
