var ajax = {};
ajax.x = function() {
    if (typeof XMLHttpRequest !== 'undefined') {
        return new XMLHttpRequest();  
    }
    var versions = [
        "MSXML2.XmlHttp.5.0",   
        "MSXML2.XmlHttp.4.0",  
        "MSXML2.XmlHttp.3.0",   
        "MSXML2.XmlHttp.2.0",  
        "Microsoft.XmlHttp"
    ];

    var xhr;
    for(var i = 0; i < versions.length; i++) {  
        try {  
            xhr = new ActiveXObject(versions[i]);  
            break;  
        } catch (e) {
        }  
    }
    return xhr;
};

ajax.send = function(url, callback, method, data, sync) {
    var x = ajax.x();
    x.open(method, url, sync);
    x.onreadystatechange = function() {
        if (x.readyState == 4) {
            callback(x.responseText)
        }
    };
    if (method == 'POST') {
        x.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    }
    x.send(data)
};

ajax.get = function(url, data, callback, sync) {
    var query = [];
    for (var key in data) {
        query.push(encodeURIComponent(key) + '=' + encodeURIComponent(data[key]));
    }
    ajax.send(url + '?' + query.join('&'), callback, 'GET', null, sync)
};

ajax.post = function(url, data, callback, sync) {
    var query = [];
    for (var key in data) {
        query.push(encodeURIComponent(key) + '=' + encodeURIComponent(data[key]));
    }
    ajax.send(url, callback, 'POST', query.join('&'), sync)
};


ajax.get(chrome.extension.getURL('/jquery.js'), "",

	function(data) {
	    var script = document.createElement("script");
	    script.setAttribute("type", "text/javascript");
	    script.innerHTML = data;
	    document.getElementsByTagName("head")[0].appendChild(script);
	}
);

ajax.get(chrome.extension.getURL('/process.js'), "",

	function(data) {
	    var script = document.createElement("script");
	    script.setAttribute("type", "text/javascript");
	    script.innerHTML = data;
	    document.getElementsByTagName("head")[0].appendChild(script);

        if (window.location.href.indexOf("yandex.ru")) {
            console.log(1);
            console.log(chrome.browserAction);//.setBadgeBackgroundColor({color: [255, 0, 0, 255]});
        }

    }
);

chrome.extension.onMessage.addListener(function(msg, sender, sendResponse) {
    if (msg.action == 'got_id') {
        first_time = true;

        console.log(msg.tab_id);
    }
});
