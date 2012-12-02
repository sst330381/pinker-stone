<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="PinkerList.aspx.cs"
    Inherits="PinkerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/Styles/widget097.css" rel="stylesheet" type="text/css" />
    <link href="/Styles/pinkerlist.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid page">
        <div class="row-fluid">
            <div class="span8">
                <div class="card">
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
                </div>
                <div id="list" style="">
                    <div id="sort">
                        <div id="sort_text">
                            <span class="gray">Sort by:</span> <a sort="distance" href="/rent-car?q=10451%2C+60649&amp;sort=distance"
                                class="current_sort">Distance </a><span class="gray">| </span><a sort="price" href="/rent-car?q=10451%2C+60649&amp;sort=price"
                                    class="other_sort">Price </a>
                        </div>
                    </div>
                    <div id="search_result_hook">
                        <div style="display: none;" class="addthis_large center">
                            <center>
                                <p>
                                    No cars meet your search criteria. Invite friends and neighbors to list their cars.
                                </p>
                                <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
                                    <a class="addthis_button_facebook at300b" title="Facebook" href="#"><span class=" at300bs at15nc at15t_facebook">
                                        <span class="at_a11y">Share on facebook</span></span></a> <a class="addthis_button_email at300b"
                                            title="Email" href="#"><span class=" at300bs at15nc at15t_email"><span class="at_a11y">
                                                Share on email</span></span></a> <a class="addthis_button_twitter at300b" title="Tweet This"
                                                    href="#"><span class=" at300bs at15nc at15t_twitter"><span class="at_a11y">Share on
                                                        twitter</span></span></a> <a class="addthis_button_compact at300m" href="#"><span
                                                            class=" at300bs at15nc at15t_compact"><span class="at_a11y">More Sharing Services</span></span></a>
                                    <script type="text/javascript">
                                        var pageTracker = [];
                                        if (_gaq._getAsyncTracker) pageTracker = _gaq._getAsyncTracker('');
                                        var addthis_config = {};
                                        addthis_config.username = "getaround";
                                        addthis_config.data_track_clickback = true;
                                        addthis_config.ui_cobrand = "Getaround";
                                        addthis_config.data_ga_tracker = pageTracker;
                                        addthis_config.data_track_clickback = true;
                                        addthis_config.services_exclude = "print";
                                        addthis_config.data_ga_social = true;
                                        var addthis_share = {}
                                        addthis_share.url = 'http://www.getaround.com/';
                                        addthis_share.title = 'Anybody willing to rent me their car? You can do it safely via Getaround. Includes insurance too.';
                                        addthis_share.description = 'Social car sharing: Rent cars by the hour from people around you. Start renting out yours today, and earn cash using your car.';
                                        addthis_share.templates = { twitter: "{{title}} {{url}}" }
                                    </script>
                                    <div class="atclear">
                                    </div>
                                </div>
                            </center>
                        </div>
                        <div class="list_loading" style="display: none;">
                        </div>
                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div id="car_results">
                                <div class="car_result">
                                    <div class="row-fluid">
                                        <div class="information span9">
                                            <div class="photo">
                                                <a href="http://www.getaround.com/tigerstaurus" title="2002 Ford Taurus SES  Sedan, Red">
                                                    <div style="background: url(http://images.getaround.com/AMIfv96xiIeyRCkt5p52OkYn09lRS6Qf7tU6I0JKfHud00ywiuJfEoxj4Yk397_fsLGWrJsvW8lWEyi6eg3JNcY1cndeZ7h4mbp7XFKXWNVpkoDyKc7tYPrkj_wICKm86CH58o2fdvkgq3yfsadnECYs1RImlz6FlQ/150x100)"
                                                        class="car_photo">
                                                    </div>
                                                </a>
                                            </div>
                                            <a href="http://www.getaround.com/tigerstaurus" class="title" title="2002 Ford Taurus SES  Sedan, Red">
                                                <h3>
                                                    2002 Ford Taurus SES Sedan, Red
                                                </h3>
                                            </a>
                                            <div class="rating">
                                                <span class="star-ratings"><span class="icon-star-empty"></span><span class="icon-star-empty">
                                                </span><span class="icon-star-empty"></span><span class="icon-star-empty"></span><span
                                                    class="icon-star-empty"></span></span><a href="http://www.getaround.com/tigerstaurus#rating"
                                                        title="2002 Ford Taurus SES  Sedan, Red">( 0 ratings ) </a>
                                            </div>
                                            <div class="description">
                                                Sean DjTiger ... <strong>tigerstaurus </strong>with air conditioning, cruise control,
                                            </div>
                                            <div class="response_time">
                                                <span>47 hour</span> average response time.
                                            </div>
                                        </div>
                                        <div class="action span3">
                                            <h3 class="price">
                                                $12.00</h3>
                                            <div class="duration">
                                                for 1 hour</div>
                                            <div class="distance">
                                                <span><span class="icon icon-map-marker"></span>1.0 </span><span class="muted">miles
                                                    away </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="list_loading">
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div id="car_results">
                        <div class="car_result">
                            <div class="row-fluid">
                                <div class="information span9">
                                    <div class="photo">
                                        <a href="http://www.getaround.com/tigerstaurus" title="2002 Ford Taurus SES  Sedan, Red">
                                            <div style="background: url(http://images.getaround.com/AMIfv96xiIeyRCkt5p52OkYn09lRS6Qf7tU6I0JKfHud00ywiuJfEoxj4Yk397_fsLGWrJsvW8lWEyi6eg3JNcY1cndeZ7h4mbp7XFKXWNVpkoDyKc7tYPrkj_wICKm86CH58o2fdvkgq3yfsadnECYs1RImlz6FlQ/150x100)"
                                                class="car_photo">
                                            </div>
                                        </a>
                                    </div>
                                    <a href="http://www.getaround.com/tigerstaurus" class="title" title="2002 Ford Taurus SES  Sedan, Red">
                                        <h3>
                                            2002 Ford Taurus SES Sedan, Red
                                        </h3>
                                    </a>
                                    <div class="rating">
                                        <span class="star-ratings"><span class="icon-star-empty"></span><span class="icon-star-empty">
                                        </span><span class="icon-star-empty"></span><span class="icon-star-empty"></span><span
                                            class="icon-star-empty"></span></span><a href="http://www.getaround.com/tigerstaurus#rating"
                                                title="2002 Ford Taurus SES  Sedan, Red">( 0 ratings ) </a>
                                    </div>
                                    <div class="description">
                                        Sean DjTiger ... <strong>tigerstaurus </strong>with air conditioning, cruise control,
                                    </div>
                                    <div class="response_time">
                                        <span>47 hour</span> average response time.
                                    </div>
                                </div>
                                <div class="action span3">
                                    <h3 class="price">
                                        $12.00</h3>
                                    <div class="duration">
                                        for 1 hour</div>
                                    <div class="distance">
                                        <span><span class="icon icon-map-marker"></span>1.0 </span><span class="muted">miles
                                            away </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list_loading">
                        </div>
                    </div>
                    <div style="" class="addthis_small center">
                        <div class="addthis_toolbox addthis_default_style">
                            <a class="addthis_button_facebook at300b" title="Facebook" href="#"><span class="at16nc at300bs at15nc at15t_facebook at16t_facebook">
                                <span class="at_a11y">Share on facebook</span></span></a> <a class="addthis_button_email at300b"
                                    title="Email" href="#"><span class="at16nc at300bs at15nc at15t_email at16t_email"><span
                                        class="at_a11y">Share on email</span></span></a> <a class="addthis_button_twitter at300b"
                                            title="Tweet This" href="#"><span class="at16nc at300bs at15nc at15t_twitter at16t_twitter">
                                                <span class="at_a11y">Share on twitter</span></span></a> <a class="addthis_button_compact at300m"
                                                    href="#"><span class="at16nc at300bs at15nc at15t_compact at16t_compact"><span class="at_a11y">
                                                        More Sharing Services</span></span></a>
                            <script type="text/javascript">
                                var pageTracker = [];
                                if (_gaq._getAsyncTracker) pageTracker = _gaq._getAsyncTracker('');
                                var addthis_config = {};
                                addthis_config.username = "getaround";
                                addthis_config.data_track_clickback = true;
                                addthis_config.ui_cobrand = "Getaround";
                                addthis_config.data_ga_tracker = pageTracker;
                                addthis_config.data_track_clickback = true;
                                addthis_config.services_exclude = "print";
                                addthis_config.data_ga_social = true;
                                var addthis_share = {}
                                addthis_share.url = 'http://www.getaround.com/';
                                addthis_share.title = 'Anybody willing to rent me their car? You can do it safely via Getaround. Includes insurance too.';
                                addthis_share.description = 'Social car sharing: Rent cars by the hour from people around you. Start renting out yours today, and earn cash using your car.';
                                addthis_share.templates = { twitter: "{{title}} {{url}}" }
                            </script>
                            <div class="atclear">
                            </div>
                        </div>
                        <div class="muted">
                            Not finding the car you need? Invite friends and neighbors to list their cars.
                        </div>
                    </div>
                </div>
            </div>
            <div class="span4">
                <div id="queue" class="card">
                    <div id="queueBox">
                        <h3 class="section-title">
                            <span class="icon icon-shopping-cart"></span>Request queue
                        </h3>
                    </div>
                    <div class="section-content">
                        <div id="queue-times" class="times">
                            <span id="queue-range"></span>
                        </div>
                        <div id="queue-list">
                        </div>
                        <div id="queue-list-auto">
                            <div class="autoqueue-separator">
                                Added by Getaround for faster approval
                            </div>
                            <div id="autoqueued-cars">
                            </div>
                        </div>
                        <a href="/checkout/signin" id="checkout" class="btn btn-primary input-fullwidth">Checkout
                        </a>
                        <div id="howto">
                            You can bundle up to 5 requests at once. Owners compete to respond quickly. The
                            first owner to respond wins your business.
                        </div>
                    </div>
                    <!-- #expiredRequestModal.modal.fade{"aria-hidden" : "true", "aria-labelledby" : "myModalLabel", "role" : "dialog", "tabindex" : "-1"} -->
                    <!-- .modal-header -->
                    <!-- %h3 -->
                    <!-- Your request queue has expired. -->
                    <!-- .modal-body -->
                    <!-- %p -->
                    <!-- Oops. The starting time for your rental has passed. We will need to clear your queue. :-( -->
                    <!-- .modal-footer -->
                    <!-- %button.btn.btn-small{"aria-hidden" : "true", "data-dismiss" : "modal"} Close -->
                </div>
            </div>
        </div>
        <div id="search-list">
            <asp:Repeater ID="Repeater1" runat="server">
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
    </div>
</asp:Content>
