<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Register.aspx.cs"
    Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="page">
            <div class="span5 offset3">
                <div class="card">
                    <div class="padded2">
                        <asp:CreateUserWizard runat="server" ID="CreateUserWizard1" CompleteSuccessText="恭喜你! 注册成功! 赶紧去发布路线吧!"
                            ContinueDestinationPageUrl="~/PinkerList.aspx" ContinueButtonText="返回" OnCreatingUser="CreateUserWizard1_CreatingUser"
                            Width="335px" onnextbuttonclick="CreateUserWizard1_NextButtonClick">
                            <WizardSteps>
                                <asp:CreateUserWizardStep runat="server">
                                    <ContentTemplate>
                                        <table style="margin-left: 50px;">
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <h2>
                                                        注册新帐户</h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                        ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                        ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                                        ErrorMessage="必须填写“确认密码”。" ToolTip="必须填写“确认密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="“密码”和“确认密码”必须匹配。"
                                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    电话:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    E-mail:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                                        ErrorMessage="必须填写“电子邮件”。" ToolTip="必须填写“电子邮件”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <tr>
                                                    <td align="center" colspan="2" style="color: red">
                                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="Label1" runat="server" AssociatedControlID="Password">验证码:</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtImgValid" runat="server" Font-Size="0.8em" Width="130px"></asp:TextBox>
                                                        <asp:ImageButton ID="imgValid" runat="server" ImageUrl="/ImageValidate.aspx" />
                                                    </td>
                                                </tr>
                                        </table>
                                    </ContentTemplate>
                                    <%--<CustomNavigationTemplate>
                                        <asp:Button ID="btnRegist" runat="server" Text="创建用户" OnClick="btnRegist_Click" />
                                    </CustomNavigationTemplate>--%>
                                </asp:CreateUserWizardStep>
                                <asp:CompleteWizardStep runat="server">
                                    <ContentTemplate>
                                        <table style="font-size: 100%; width: 335px;">
                                            <tr>
                                                <td align="center" colspan="2">
                                                    完成
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    恭喜你! 注册成功! 赶紧去发布路线吧!
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">
                                                    <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue"
                                                        Text="返回" ValidationGroup="CreateUserWizard1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:CompleteWizardStep>
                            </WizardSteps>
                        </asp:CreateUserWizard>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
