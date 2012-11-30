function startTime() {
    var today = new Date()
    var lefttime=new date(2)-today
    var h = today.getHours()
    var m = today.getMinutes()
    var s = today.getSeconds()
    // add a zero in front of numbers<10
    m = checkTime(m)
    s = checkTime(s)
    document.getElementById('clock').innerHTML = h + ":" + m + ":" + s
    t = setTimeout('startTime()', 500)
}

function checkTime(i) {
    if (i < 10)
    { i = "0" + i }
    return i
}

var pubd;
function leftTime(pubdate) {
    pubd = pubdate;
    now = new Date();
    y2k = new Date(parseInt(pubdate.substring(0, 4)), parseInt(pubdate.substring(4, 6)) - 1, parseInt(pubdate.substring(6, 8))+1);
    days = (y2k - now) / 1000 / 60 / 60 / 24;
    daysRound = Math.floor(days);
    hours = (y2k - now) / 1000 / 60 / 60 - (24 * daysRound);
    hoursRound = Math.floor(hours) + daysRound*24;
    minutes = (y2k - now) / 1000 / 60  - (60 * hoursRound);
    minutesRound = Math.floor(minutes);
    seconds = (y2k - now) / 1000  - (60 * 60 * hoursRound) - (60 * minutesRound);
    secondsRound = Math.round(seconds);
    $("#count_hour").html(hoursRound);
    $("#count_min").html(minutesRound);
    $("#count_sec").html(secondsRound);
    newtime = setTimeout("leftTime(pubd);", 500);
}