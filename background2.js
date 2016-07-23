chrome.tabs.onUpdated.addListener(function(id,info,tab) {
    chrome.tabs.sendMessage(id, {action: "got_id", "tab_id" : id}, function(response) {});

    
    if (tab.url.indexOf("yandex.ru") != -1) {
        chrome.browserAction.setIcon({
            path: "img/icon2.png",
            tabId: id
        });

    }

    chrome.browserAction.setBadgeText({text: id + ""});
    chrome.browserAction.setBadgeBackgroundColor({color:[0, 200, 0, 100]});
});
