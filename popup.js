chrome.extension.onMessage.addListener(function(msg, sender, sendResponse) {
    if (msg.action == 'popup') {
        alert(msg.name);
    }
});
