<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="PinkerPub.aspx.cs"
    Inherits="PinkerPub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    * 我是
    <ul class="resutil">
        <li tsize="all">全部<span style="display: none;">✔全部 </span></li>
        <li tsize="shortrun">上下班拼车<span style="display: none;">✔上下班拼车 </span></li>
    </ul>
    <br />
    * 拼车类型
    <ul class="resutil">
        <li tsize="all">全部<span style="display: none;">✔全部 </span></li>
        <li tsize="shortrun">上下班拼车<span style="display: none;">✔上下班拼车 </span></li>
    </ul>
    <br />
    * 起点:<input type="text" name="" value="" />
    终点:<input type="text" name="" value="" /><br />
    途径地点:<input type="text" name="" value="" /> -
    <input type="text" name="" value="" /> -
    <input type="text" name="" value="" /><br />
    * 出发时间 
    <select>
        <option value="工作日">工作日</option>
        <option value="周末">周末</option>
        <option value="每天">每天</option>
        <option value="其他">其他</option>
    </select>
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
    </select>:
    <select>
        <option value="00">00</option>
        <option value="10">10</option>
        <option value="20">20</option>
        <option value="30">30</option>
        <option value="40">40</option>
        <option value="50">50</option>
    </select><br />
    补充说明:
    <input type="text" value=" " /><br />
    联系人:<input type="text" name="" value=" " /><br />
    联系电话:<input type="text" name="" value="" /><br />
    <input type="button" value="马上发布" />
</asp:Content>
