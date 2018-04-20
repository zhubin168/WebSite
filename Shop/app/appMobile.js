define([
    'angular',
    'angularAMD',
    'angularCss',
    'ionic',
    'lazy-image',
    'bindonce',
    'localStorageUsage',
    'directive/directives',
    'filters/filters',
    'services/common/appCommonService',
    'file-upload',
    'ngFile',
    'angular-cookies',
    'selcity',
    'ionic-datepicker',
], function(angular, angularAMD) {
    'use strict';

    var serviceUrl = 'http://portalapi.dafysz.com/recruit/';
    var imgServiceUrl = '';

    var app = angular.module('app', [
        'ionic', 'ngLocale', 'door3.css', 'afkl.lazyImage', 'pasvaz.bindonce', 'localStorageUsage', 'app.directives','ngCookies','app.filters','ngFileUpload','app.commonService','ionic-selcity','ionic-datepicker'
    ]);

    app.config(['$httpProvider', '$ionicConfigProvider','ionicDatePickerProvider', function($httpProvider, $ionicConfigProvider,ionicDatePickerProvider) {

    var datePickerObj = {
      inputDate: new Date(),
      setLabel: '完成',
      todayLabel: '今天',
      closeLabel: '关闭',
      mondayFirst: false,
      weeksList: ["一", "二", "三", "四", "五", "六", "七"],
      monthsList: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
      templateType: 'popup',
//    from: new Date(2012, 8, 1),
//    to: new Date(),
      showTodayButton: true,
      dateFormat: 'yyyy-MM-dd',
      closeOnSelect: false,
    };
    ionicDatePickerProvider.configDatePicker(datePickerObj);

        $ionicConfigProvider.platform.ios.tabs.style('standard');
        $ionicConfigProvider.platform.ios.tabs.position('bottom');
        $ionicConfigProvider.platform.android.tabs.style('standard');
        $ionicConfigProvider.platform.android.tabs.position('bottom');

        $ionicConfigProvider.platform.ios.navBar.alignTitle('center');
        $ionicConfigProvider.platform.android.navBar.alignTitle('center');

        $ionicConfigProvider.platform.ios.backButton.previousTitleText('').icon('ion-ios-arrow-left');
        $ionicConfigProvider.platform.android.backButton.previousTitleText('').icon('ion-ios-arrow-left');

        $ionicConfigProvider.views.forwardCache(true); //开启全局缓存
        //$ionicConfigProvider.views.maxCache(0); //关闭缓存
        $httpProvider.defaults.headers.put['X-Requested-With'] = 'XMLHttpRequest';
        $httpProvider.defaults.headers.post['X-Requested-With'] = 'XMLHttpRequest';

        $ionicConfigProvider.platform.ios.views.transition('ios');
        $ionicConfigProvider.platform.android.views.transition('android');

    }]);
    //全局常量
    app.constant('Settings', {
        apiServiceBaseUrl: serviceUrl,
        imgServiceUrl: imgServiceUrl,
        clientId: 'RecruitApp',
        version: '1.0.0',
        deBug: false
    });
    app.constant('$ionicLoadingConfig', {
        template: '<ion-spinner icon="bubbles" class="spinner-balanced"></ion-spinner><div style="color:#ccc;">加载中，请稍候…</div>'
    });
    // 配置
    app.config(['$stateProvider', '$urlRouterProvider', '$httpProvider',function($stateProvider, $urlRouterProvider, $httpProvider) {

        var authData = null;

        for (var key in window.localStorage) {
            if (key.indexOf('authorizationData') > 0) {
                authData = window.localStorage.getItem(key);

                authData = eval('(' + authData + ')');
                break;
            }
        }

        $urlRouterProvider.otherwise('/index');

        $stateProvider
        
        .state('index', angularAMD.route({   //商城首页
            url: '/index',
            templateUrl: 'templates/user_app/index.html',
            resolve: {
                loadController: ['$q', '$stateParams',
                    function($q, $stateParams) {
                        var accountCtrl = "app/controllers/user_app/user_appCtrl.js";
                        var userService = "app/services/user_app/userService.js";
                        var deferred = $q.defer();
                        require([accountCtrl,userService], function() {
                            deferred.resolve();
                        });
                        return deferred.promise;
                    }
                ]
            },
            controllerProvider: function($stateParams) {
                return "indexCtrl";
            }
        }))
        
        .state('order', angularAMD.route({   //订单详情
            url: '/order',
            templateUrl: 'templates/user_app/order.html',
            resolve: {
                loadController: ['$q', '$stateParams',
                    function($q, $stateParams) {
                        var accountCtrl = "app/controllers/user_app/user_appCtrl.js";
                        var userService = "app/services/user_app/userService.js";
                        var deferred = $q.defer();
                        require([accountCtrl,userService], function() {
                            deferred.resolve();
                        });
                        return deferred.promise;
                    }
                ]
            },
            controllerProvider: function($stateParams) {
                return "orderCtrl";
            }
        }))
        
       .state('orsubmit', angularAMD.route({   //提交订单
            url: '/orsubmit',
            templateUrl: 'templates/user_app/submit.html',
            resolve: {
                loadController: ['$q', '$stateParams',
                    function($q, $stateParams) {
                        var accountCtrl = "app/controllers/user_app/user_appCtrl.js";
                        var userService = "app/services/user_app/userService.js";
                        var deferred = $q.defer();
                        require([accountCtrl,userService], function() {
                            deferred.resolve();
                        });
                        return deferred.promise;
                    }
                ]
            },
            controllerProvider: function($stateParams) {
                return "orsubmitCtrl";
            }
        }))
       
       .state('myorder', angularAMD.route({   //我的订单
            url: '/myorder',
            templateUrl: 'templates/user_app/myorder.html',
            resolve: {
                loadController: ['$q', '$stateParams',
                    function($q, $stateParams) {
                        var accountCtrl = "app/controllers/user_app/user_appCtrl.js";
                        var userService = "app/services/user_app/userService.js";
                        var deferred = $q.defer();
                        require([accountCtrl,userService], function() {
                            deferred.resolve();
                        });
                        return deferred.promise;
                    }
                ]
            },
            controllerProvider: function($stateParams) {
                return "myorderCtrl";
            }
        }))
         
    }]);

    app.run(['$ionicPlatform','$state', '$rootScope','$cookies','$timeout',function($ionicPlatform,$state,$rootScope,$cookies,$timeout) {
        $rootScope.token=$cookies.get("accessToken");
        $ionicPlatform.ready(function() {

            $rootScope.initWeiXin=function(r){
                wx.config({
                    debug: false,
                    appId:wxAppId,
                    timestamp: r.timestamp,
                    nonceStr: r.nonceStr,
                    signature: r.signature,
                    jsApiList:["hideMenuItems","hideOptionMenu","showOptionMenu","onMenuShareTimeline", "onMenuShareAppMessage", "onMenuShareQQ", "onMenuShareQZone"]
                });
            }
            $rootScope.hideMenuBtn=function(){
                wx.ready(function() {
                    wx.hideMenuItems({
                        menuList: ["onMenuShareTimeline","onMenuShareAppMessage","onMenuShareQQ","onMenuShareQZone"]
                    });
                });
            }
            $rootScope.shareWeiXin = function(q) {
                wx.ready(function() {
                    wx.onMenuShareAppMessage({
                        title: q.title,
                        desc: q.desc,
                        link: q.link,
                        imgUrl: q.imgUrl,
                        trigger: function(r) {},
                        success: function(r) {
                            alert("分享给好友成功");
                        },
                        cancel: function(r) {
                            
                        },
                        fail: function(r) {
                        }
                    });
                    wx.onMenuShareTimeline({
                        title: q.title,
                        desc: q.desc,
                        link: q.link,
                        imgUrl: q.imgUrl,
                        trigger: function(r) {},
                        success: function(r) {
                            alert("分享朋友圈成功");
                        },
                        cancel: function(r) {
                            
                        },
                        fail: function(r) {
                        }
                    });
                    wx.onMenuShareQQ({
                        title: q.title,
                        desc: q.desc,
                        link: q.link,
                        imgUrl: q.imgUrl,
                        success: function(r) {
                            
                        },
                        cancel: function(r) {

                        }
                    });
                    wx.onMenuShareQZone({
                       title: q.title,
                       desc: q.desc,
                       link: q.link,
                       imgUrl: q.imgUrl,
                       trigger: function (r) {

                       },
                       complete: function (r) {

                       },
                       success: function (r) {
                        alert("分享QQ空间成功");
                       },
                       cancel: function (r) {
                         
                       },
                       fail: function (r) {
                        
                       }
                    });
                });
            }
        });
    }]);

    return angularAMD.bootstrap(app);
});
