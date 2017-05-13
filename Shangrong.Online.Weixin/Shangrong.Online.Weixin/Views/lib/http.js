/**
 * Enables common http request scenarios.
 * @module http
 * @requires jquery
 * @requires knockout
 */
function ajax(method, url, data, token) {
    var parameters = method === 'GET' ? data : ko.toJSON(data);
    var settings = {
        url: url,
        data: parameters,
        type: method,
        contentType: 'application/json',
        dataType: 'json',
        traditional: 'true',
        beforeSend: function (xhr) {
            if (method === 'POST' && token) {
                xhr.setRequestHeader('__RequestVerificationToken', token);
            }
        },
        error: function (response) {
            if (response.status === 401) {
                toastr.error('您没有权限进行此操作，请刷新页面或重新登录！');
            }
            else if (response.status === 400) {
                var error = response.responseJSON;
                var message = error.message;
                if (message === "LoginExpired") {
                    window.location.reload();
                }
                toastr[response.responseJSON.level](message);
            }
        }
    };
    return $.ajax(settings);
}

function SaveAjax(method, url, data, token,obj) {
    var objx = obj;
    var parameters = method === 'GET' ? data : ko.toJSON(data);
    var settings = {
        url: url,
        data: parameters,
        type: method,
        contentType: 'application/json',
        dataType: 'json',
        traditional: 'true',
        beforeSend: function (xhr) {
            if (method === 'POST' && token) {
                xhr.setRequestHeader('__RequestVerificationToken', token);
            }
        },
        error: function (response) {
            objx.isDisable(false);
            if (response.status === 401) {
                toastr.error('您没有权限进行此操作，请刷新页面或重新登录！');
            }
            else if (response.status === 400) {
                var error = response.responseJSON;
                var message = error.message;
                if (message === "LoginExpired") {
                    window.location.reload();
                }
                toastr[response.responseJSON.level](message);
            }
        }
    };
    return $.ajax(settings);
}


var $http = {
    get: function (url, query) {
        return ajax('GET', url, query);
    },
    post: function (url, data, token, creditSave, obj) {
        if (creditSave) {
            return SaveAjax('POST', url, data, token,obj);
        }
        return ajax('POST', url, data, token);
    }
};

var ScollPostion = function () {
    var t, l, w, h, c_w, c_h;
    if (document.documentElement && document.documentElement.scrollTop) {
        t = document.documentElement.scrollTop;
        l = document.documentElement.scrollLeft;
        w = document.documentElement.scrollWidth;
        h = document.documentElement.scrollHeight;
        c_w = document.documentElement.clientWidth;
        c_h = document.documentElement.clientHeight;
    } else if (document.body) {
        t = document.body.scrollTop;
        l = document.body.scrollLeft;
        w = document.body.scrollWidth;
        h = document.body.scrollHeight;
        c_w = document.body.clientWidth;
        c_h = document.body.clientHeight;
    }
    return { top: t, left: l, width: w, height: h, c_width: c_w, c_height: c_h };
}