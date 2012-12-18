<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
    <!--滚动的javascript-->
    <script type="text/javascript">
        var t = $("#demo").scrollWidth;
        var trigger = true;
        function doMarquee() {
            if (demo.scrollLeft == demo.scrollWidth - demo.offsetWidth) {
                trigger = false;
                demo.scrollLeft = demo.scrollLeft - 1;
            }
            if (demo.scrollLeft == 0) {
                trigger = true;
                demo.scrollLeft = demo.scrollLeft + 1;
            }
            if (trigger) {
                demo.scrollLeft = demo.scrollLeft + 1
            }
            else {
                demo.scrollLeft = demo.scrollLeft - 1
            }
        }
        function doscroll() {
            sc = setInterval(doMarquee, 20)
        }
        function stopscroll() {
            clearInterval(sc)
        }
        doscroll()
    </script>
</head>
<body>
    <div id="demo" style="overflow: hidden; width: 200px; border: 1px solid #e0e0e0;
        margin-left: 700px; padding: 2px;" onmouseover="stopscroll();" onmouseout="doscroll()">
        <div id="demo1" style="white-space: nowrap; padding: 0;">
            <a href="javascript:alert('发表新贴');">
                <img src="img/s1.png" height="120" width="104" border="0"></a> <a href="javascript:alert('发表回复');">
                    <img src="img/car1.jpg" height="120" width="104" border="0"></a><a href="javascript:alert('发表回复');">
                        <img src="img/car1.jpg" height="120" width="104" border="0"></a><a href="javascript:alert('发表回复');">
                            <img src="img/car1.jpg" height="120" width="104" border="0"></a><a href="javascript:alert('发表回复');">
                                <img src="img/car1.jpg" height="120" width="104" border="0"></a>
        </div>
    </div>
    <div>
        <asp:Label ID="guid" Text="guid" runat="server" />
        <asp:Label ID="username" Text="username" runat="server" />
        <asp:Label ID="userpsw" Text="userpsw" runat="server" />
    </div>
</body>
</html>
