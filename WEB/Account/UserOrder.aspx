<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="UserOrder.aspx.cs" Inherits="Account_UserOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="span10 offset1 page">
            <div class="img-circle-border">
                <img src="/img/mavatar/M_001.JPG" class="pull-left img-circle" />
            </div>
            <h1>
                <asp:Label ID="lbltitle" Text="This is the title" runat="server" /></h1>
        </div>
    </div>
</asp:Content>
