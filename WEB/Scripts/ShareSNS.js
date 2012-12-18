
function postToWb() {
    var _url = encodeURIComponent(document.location);
    var _assname = encodeURI("125158082"); //你注册的帐号，不是昵称
    var _appkey = encodeURI("12a31cffbe8fff2182b2863bb066b7fc"); //你从腾讯获得的appkey
    var _pic = encodeURI(''); //（例如：var _pic='图片url1|图片url2|图片url3....）
    var _t = "我正在17PINKER找顺风车呢~ ——环保出行，尽在17拼客"; //$('.container hero-unit h1').valueOf(); //标题和描述信息
    var metainfo = document.getElementsByTagName("meta");
    for (var metai = 0; metai < metainfo.length; metai++) {
        if ((new RegExp('description', 'gi')).test(metainfo[metai].getAttribute("name"))) {
            _t = metainfo[metai].attributes["content"].value;
        }
    }
    //_t = $("#herodiv h1").html() + _t; //请在这里添加你自定义的分享内容
    if (_t.length > 120) {
        _t = _t.substr(0, 117) + '...';
    }
    _t = encodeURI(_t);
    var _u = 'http://share.v.t.qq.com/index.php?c=share&a=index&url=' + _url + '&appkey=' + _appkey + '&pic=' + _pic + '&assname=' + _assname + '&title=' + _t;
    window.open(_u, '', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no');
}

function postToSina() {
    var _url = encodeURIComponent(document.location);
    var _assname = encodeURI("125158082"); //你注册的帐号，不是昵称
    var _appkey = encodeURI("12a31cffbe8fff2182b2863bb066b7fc"); //你从腾讯获得的appkey
    var _pic = encodeURI(''); //（例如：var _pic='图片url1|图片url2|图片url3....）
    var _t = "我正在17PINKER找顺风车呢~ ——环保出行，尽在17拼客"; //$('.container hero-unit h1').valueOf(); //标题和描述信息
    var metainfo = document.getElementsByTagName("meta");
    for (var metai = 0; metai < metainfo.length; metai++) {
        if ((new RegExp('description', 'gi')).test(metainfo[metai].getAttribute("name"))) {
            _t = metainfo[metai].attributes["content"].value;
        }
    }
    //_t = $("#herodiv h1").html() + _t; //请在这里添加你自定义的分享内容
    if (_t.length > 120) {
        _t = _t.substr(0, 117) + '...';
    }
    _t = encodeURI(_t);
    var _u = 'http://v.t.sina.com.cn/share/share.php?title=' + _t + '&url=' + _url;
    window.open(_u, '', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no');
}

function postToRenren() {
    var rrShareParam = {
        resourceUrl: '', //分享的资源Url
        pic: '', 	//分享的主题图片Url
        title: '我正在17PINKER找顺风车呢~ ——环保出行，尽在17拼客', 	//分享的标题
        description: ''	//分享的详细描述
    };
    rrShareOnclick(rrShareParam);
}