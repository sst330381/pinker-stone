<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/Styles/default.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/getaround-min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banners">
    </div>
    <div class="wrapper">
        <div class="container" id="home-main">
            <div class="floater">
                <div class="row-fluid title-box">
                    <div class="main-title">
                        <div class="padded3 border-right">
                            <h1 class="title">
                                轻松拼车,环保出行.
                            </h1>
                            <h2 class="subtitle">
                                向左走，向右走，点击<a href="">发布路线</a>寻找一起拼车的TA吧
                            </h2>
                        </div>
                    </div>
                    <div class="main-action">
                        <div class="padded3">
                            <input type="button" class="btn btn-info btn-xxlarge" value="发布路线" onclick="location.href='/PubRoute.aspx'" />
                        </div>
                    </div>
                </div>
                <div class="row-fluid main-cars">
                    <div id="main_cars" class="span12 viewer">
                        <div class="viewport">
                            <div style="width: 1552px;" id="car_list" class="car-list overview" onmouseover="stopscroll();" onmouseout="doscroll()">
                                <div class="car first">
                                    <a href="http://www.getaround.com/leventhald">
                                        <div style="background: url(http://images.getaround.com/AMIfv94pfrlnTvpDoW0V0gPZFVl8Z432Q97Bk4kWhwUrSq2cTTcMkLm-EdY6t50tQ_9mwWsA9kiYxr2n77aKm5vB-M0wrjzgxG3YIO3sGb8kY_16MRLVZ5ixnpA1QoX5tIlYfGqmV43-b8BvWi8E40EGK0xN1C9zKg/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="https://gettaimg.appspot.com/AMIfv96-bM0ZzH8GMhQsphjG7ylJZ6mheMKnXqF-iy6NTcO3POK2PofGYqHyU0BfZ3F2pDcYTKB4Sbi53G_g8wqufMSlGw8UyTvblqzMFZZYh-FTKycLMn9xF7i51Unq3b2TJjs4dj_gRH5sY18adjShckDU4BBEsg/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/leventhald" class="car_name">username </a><a
                                            href="http://www.getaround.com/leventhald">
                                            <div class="car_make" title="Volkswagen Jetta">
                                                大众(进口)-Jetta
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="San Francisco, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥7.00
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="http://www.getaround.com/flashgordon">
                                        <div style="background: url(http://images.getaround.com/AMIfv96gi1O1-4KonyGVqgMq7Zshne91_lS4Yqp3UKlHqPT9uE0ybeY1R-bkko2g_40LSFNmamjRLzkXK8Q4mvQgSSmhQZCxyH3Idw_-h6-pNK6ZCCijkcH6Ibvfyd014QSxLpOkJdKxPRl46bsq1wYceaVTwHObOA/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="http://gettaimg.appspot.com/AMIfv94sDDDsiDy5nZwsMpAUYYo-loTJfS0-RyIgRExo1C9NkgGhi51w--nbIAPlIoDQ-Zs_BnJECsF7zHejfZGvqbZ2Y9bouvw55k28qWUgvX3pJsPQ04uF8PcHq8t2f4cJOgRN2Jd8O8v3I9_IQD93dqxIIRq6ZQ/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/flashgordon" class="car_name">username </a>
                                        <a href="http://www.getaround.com/flashgordon">
                                            <div class="car_make" title="Volkswagen GTi">
                                                大众GTi
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="Oakland, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥8
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="http://www.getaround.com/mini">
                                        <div style="background: url(http://images.getaround.com/AMIfv97k15NfktbDConp1Rf7NB3JJS4azQPu7XpzDdvNIBYKrLU_SvvYB_Kr2VgPwX1bE7r2EjGeQyMS-5i2ZMV06AycOwLCxPCy6pP5bJBT2xfmUP9KnbrjUj25DxM8POWs2tey-0a7jS-PoFjabZtz8kGAvycGLg/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="https://gettaimg.appspot.com/AMIfv950qivPZ7vOGdYVxXaMl19Q_0IxghsOCoAx8JmFP1n81rg-rnh10_XwiqcXJKyefoM7fjHIhh5gbDTIDlxiv0Bg2T3LksNoK_vdwOfwAXfo7Gr83sKhPNvdB26nDF0JJ4wQgc89kzpoHyspC45v9--JXoGJBA/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/mini" class="car_name">mini </a><a href="http://www.getaround.com/mini">
                                            <div class="car_make" title="Mini Cooper">
                                                Mini Cooper
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="San Francisco, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥10
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="http://www.getaround.com/toddtimes">
                                        <div style="background: url(http://images.getaround.com/AMIfv94-430_BiKCrKBHXWeadv2rWv6wiWqQdteVUtBWuN3uhmKhK4HUUU6kM321DQ0D8oNBpGvhzz_il6IsiIaVB4QyzxLaAaDhKQxe6HqzTd944nLQS_fcciav5Vkyle8AQpZ4660_uj8ASJTPyl5O0011hRAk3A/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="https://gettaimg.appspot.com/AMIfv95z67ofs1z7mSVO3S921ZS4En3o4CyfjQVwBxqVKmIB2i0yJEqcxhkSzcYl9j6nD0mdpQMiUf3x82Yjviey4FFo-QaKO7x9XaK_U5YVbOyx758K_D1t6yk18vYzlvRZ5YUI1R5FaGiFfAFy3fPwUGyJV1i8Bw/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/toddtimes" class="car_name">toddtimes </a><a href="http://www.getaround.com/toddtimes">
                                            <div class="car_make" title="Volkswagen Jetta">
                                                大众Jetta
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="San Francisco, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                $5
                                            </div>
                                            <div class="time">
                                                / hour
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car">
                                    <a href="http://www.getaround.com/tacoma24">
                                        <div style="background: url(http://images.getaround.com/AMIfv97S6gaGxtoBCEH8HAGybrLP3MHcAey_KZN0jL5TgsBHzt_CEGlB_xAkq6P8PHkxJzfU7wfDz966wYGBf9ZIWJ_eO6lMc88pDAdSre2eNFW_Y4x8MhyzKaDL3YPw7ByaOEd0CEEXOWcgo0V0obMMf0iZq-USKw/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="https://gettaimg.appspot.com/AMIfv96PPq31Ba-jXNOEGfMfnC2O6gXc9OLPV8XTITQjILtSm1J3G4OIKbEYX-5oDnIOBFLrk1KIjyQb5uYIHNbeJoJZNUCGc7T7L6OvbJQb_il7RKWGUaDmPKBi9Jac4NxdJUZJjafOW0L6NqGanuQg55n4uvqwpg/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/tacoma24" class="car_name">tacoma24 </a><a href="http://www.getaround.com/tacoma24">
                                            <div class="car_make" title="Toyota Tacoma">
                                                丰田 Tacoma
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="San Francisco, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥10
                                            </div>
                                            <div class="time">
                                                / 次
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="car last">
                                    <a href="http://www.getaround.com/hybrid">
                                        <div style="background: url(http://images.getaround.com/AMIfv95w0Q5RR2GLGPKxvF8zcl0S-P7GqBasrDrM5zrbRdJfUIsLYm0gYbt69cubI1EzGnzfkDkPfN67ZfPCo4FRji_gSLyMqkdvNs9bwrdRt3Qwa1-ZRLqbveFMIGS84O2W_QEXyF3uotCZm_fS_e1gwb6IT_pjVQ/240x150)"
                                            class="car_photo">
                                        </div>
                                    </a>
                                    <div class="car_description">
                                        <div class="user-photo-small">
                                            <img src="http://gettaimg.appspot.com/AMIfv94q-_hw_SSS5lxq5j_22Eg02MdiMh4WebLCMPqOSvgHYldb4aerlPcoWGAS7uzZVJlofphvLZEzimzan234arqs3JV4xLGY5ox8IEPq6p4Qc8AMY8DwSwx38YuW37D3r1WZgFgrmlteHhXB0EvvMaI-McibLg/75x75"
                                                class="image">
                                        </div>
                                        <a href="http://www.getaround.com/hybrid" class="car_name">hybrid </a><a href="http://www.getaround.com/hybrid">
                                            <div class="car_make" title="Honda Civic">
                                                本田 思域
                                            </div>
                                        </a>
                                        <div class="car_city muted" title="San Francisco, CA">
                                            浙江 杭州
                                        </div>
                                        <div class="car_price">
                                            <div class="money">
                                                ￥6
                                            </div>
                                            <div class="time">
                                                / hour
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="width: 950px;" id="car_scrollbar" class="scrollbar">
                            <div class="scrollbar_bg">
                            </div>
                            <div class="track" style="width: 950px;">
                                <div class="thumb" style="left: 360.4384003974168px; width: 115.6234475906607px;">
                                    <div class="thumb_bg">
                                    </div>
                                    <div class="end">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="callout">
                <div class="split left-side">
                    <div class="padded2">
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
                    <div class="padded2">
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
