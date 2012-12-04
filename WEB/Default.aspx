<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/Styles/default.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banners">
    </div>
    <div class="wrapper">
        <div class="container" id="home-main">
            <div class="floater">
                <div class="row-fluid title-box">
                    <div class="main-title">
                        <div class="padded border-right">
                            <h1 class="title">
                                轻松拼车,环保出行.
                            </h1>
                            <h2 class="subtitle">
                                向左走，向右走，点击<a href="">发布路线</a>寻找一起拼车的TA吧~~
                            </h2>
                        </div>
                    </div>
                    <div class="main-action">
                        <div class="padded">
                            <a href="#" id="signup_button" class="btn btn-primary btn-large has-block-icon btn-join-now"
                                data-original-title="">
                                <div class="block-icon block-icon-fb icon-facebook">
                                </div>
                                <div class="btn-label ">
                                    发布路线
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="main-cars">
                    <div class="padded">
                        <asp:TextBox CssClass="text-btn" ID="txtStart" runat="server" />
                        <asp:TextBox CssClass="text-btn" ID="txtDest" runat="server" />
                        <asp:Button ID="btnSearch" Text="查询" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-danger" />
                    </div>
                    <br />
                </div>
            </div>
            <div class="callout">
                <div class="split left-side">
                    <div class="padded">
                        <h2>
                            关于17拼客
                        </h2>
                        <p>
                            17拼客网是一个拼车平台，致力于为广大车主和拼客提供更环保的出行方式 。通过网络手段建立起用户与顺风车司机以及租车公司之间的信息桥梁。 巧拼车既能解决人们在春运等各大节日期间由于各种原因没有买到车票而无法出行的困难，让拼车回家成为可能；
                            又能让广大白领朋友轻松上下班，无需挤公交和倒车，不必为等车烦恼。采用拼车方式，省时、省力、省心。 <a href="#">更多</a>
                        </p>
                    </div>
                </div>
                <div class="split right-side">
                    <div class="padded">
                        <h2>
                            安全与信任
                        </h2>
                        <p>
                            17拼客网是一个拼车平台，致力于为广大车主和拼客提供更环保的出行方式 。在网络上约起拼车的过程中，要确认好拼车人信息。详细记录拼车者 姓名、年龄、身份证、个人及家庭联系方式等，最好有认识的人一起拼车。
                            车主和同车人应分别将了解到的对方信息发送给至少一名亲友，以备出现问题后联系使用，并有意让对方知道这个情况。<a href="#">更多 </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="push">
        </div>
    </div>
</asp:Content>
