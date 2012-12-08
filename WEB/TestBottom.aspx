<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestBottom.aspx.cs" Inherits="TestBottom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>测试</title>
    <style type="text/css">
        #android-step1
        {
            width: 300px;
            height: 140px;
            float: left;
            background-color: #b8e0f3;
        }
        #android-step1 div
        {
            left: 260px;
            top: 102px;
            background: url(/img/s1.png) center center no-repeat transparent;
        }
        
        #android-step2
        {
            width: 300px;
            height: 200px;
            float: left;
            background-color: #dcf1fa;
        }
        #android-step2 div
        {
            left: 260px;
            top: 177px;
            background: url(../images/s2.png) center center no-repeat transparent;
        }
        
        #android-step3
        {
            width: 320px;
            height: 340px;
            float: right;
            background-color: #cae9f7;
        }
        #android-step3 div
        {
            left: 330px;
            top: 102px;
            background: url(../images/s3.png) center center no-repeat transparent;
        }
    </style>
</head>
<body>
    <div style="width:620px">
        <div class="step" id="android-step1">
            <div>
            </div>
            <ol>
                <li><a href="/signup.jsp" target="_blank">注册</a>开发者账号，</li>
                <li>添加一个应用，并获取AppKey</li>
            </ol>
        </div>
        <div class="step" id="android-step3">
            <div>
            </div>
            <ol>
                <li>登录<a href="/login.jsp" target="_blank">管理Portal</a>，向客户端 Push 通知，</li>
                <li>并可以及时地查看到状态报告。</li>
            </ol>
        </div>
        <div class="step" id="android-step2">
            <div>
            </div>
            <ol>
                <li><a href="/app/dowmload?type=android">下载 Android SDK</a>，</li>
                <li>并参考<a href="http://docs.jpush.cn/pages/viewpage.action?pageId=557214" target="_blank">Android
                    SDK 集成指南</a>来集成 JPush 到应用程序里。</li>
            </ol>
        </div>
    </div>
</body>
</html>
