<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="PinkerList.aspx.cs"
    Inherits="PinkerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="search-condition">
        类型1:
        <div class="form-inline">
            <ul class="resutil">
                <li tsize="all">全部<span style="display: none;">✔全部 </span></li>
                <li tsize="shortrun">上下班拼车<span style="display: none;">✔上下班拼车 </span></li>
                <li tsize="longrun">长途拼车<span style="display: none;">✔长途拼车 </span></li>
                <li tsize="selfrun">自驾拼车<span style="display: none;">✔自驾拼车 </span></li>
            </ul>
        </div>
        类型2:
        <div class="form-inline">
            <ul class="resutil">
                <li tsize="driver">找车主<span style="display: none;">✔找车主 </span></li>
                <li tsize="pinker">找拼客<span style="display: none;">✔找拼客 </span></li>
            </ul>
        </div>
        线路:
        <asp:TextBox ID="txtStart" runat="server" />
        到
        <asp:TextBox ID="txtDest" runat="server" />
        <input type="button" value="搜索" />
    </div>
    <div id="search-list">
        <asp:Repeater runat="server">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td>
                    [起始站] → [终点站] 车型:[车型] 途径:【途径地点（最多5个）】
                </td>
            </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
