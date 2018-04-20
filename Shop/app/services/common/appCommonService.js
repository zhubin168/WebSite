/**
 * Created by tianxc on 16-8-2.
 */
define(['angular'], function(angular) {

    var commonService = angular.module('app.commonService', []);

        commonService.service('CommonService', ['$rootScope', '$q', '$ionicLoading', '$timeout', '$http', '$state','Upload','Settings', '$localStorageUsage','$window','$httpParamSerializerJQLike','$ionicHistory',function($rootScope, $q, $ionicLoading, $timeout, $http, $state,Upload,Settings, $localStorageUsage,$window,$httpParamSerializerJQLike,$ionicHistory) {
            var serviceBase = Settings.apiServiceBaseUrl;

            function showToast(string, duration,url,par) {
                $ionicLoading.show({
                    template: string,
                    noBackdrop: true
                });
                $timeout(function() {
                    $ionicLoading.hide();
                    if(url!=null)
                        $state.go(url, par);
                }, duration);
            }
            
            function ToastAndBack(string, duration,functionName) {
                $ionicLoading.show({
                    template: string,
                    noBackdrop: true
                });
                $timeout(function() {
                    $ionicLoading.hide();
                    $ionicHistory.goBack(-1);
                    functionName();
                }, duration);
            }

            return {
                showToast: function(string, duration) { //消息提示框
                    showToast(string, duration,null,null);
                },
                showGoToast: function(string, duration, url, par) { //消息提示,后自动跳转
                    showToast(string, duration,url,par);
                },
                ToastAndBack: function(string, duration,functionName) { //消息提示，然后后退
                    ToastAndBack(string, duration,functionName);
                },                
                getAuthorizationData: function() { //获取用户信息
                    var authData = $localStorageUsage.getItem('authorizationData');
                    if (authData != null) {
                        authData = eval('(' + authData + ')');
                    } else {
                        authData = null;
                    }
                    return authData;
                },
                clearStorage: function() {
                	for (var key in $window.localStorage) {
	                    $window.localStorage.removeItem(key);
                	}
                    //$localStorageUsage.clearAll();
                },
                clearStorage: function(str) {
                    $localStorageUsage.clear(str);
                },
                setStorageItem: function(key, value) { //存储数据
                	$window.localStorage.setItem(key, value);
                    //$localStorageUsage.setItem(key, value, 1);
                },
                getStorageItem: function(key) { //获取本地存储数据
                    return $window.localStorage.getItem(key);//$localStorageUsage.getItem(key);
                },
                removeStorageItem: function(key) { //删除本地存储数据
                    //$localStorageUsage.removeItem(key);
                    $window.localStorage.removeItem(key);
                },
                getJsonData: function(url, par) { //获取JSON数据

                    if ($rootScope.token == '' ||$rootScope.token==undefined) {
                        var dataV={'data':{'token':''},'message':'','result':false};
                        try{
                            var authData = getStorageItem('authorizationData') == null ? JSON.stringify(dataV) : getStorageItem('authorizationData');
                            authData = eval('(' + authData + ')');
                            $rootScope.token = authData.data.token != "" ? authData.data.token : '';
                        }catch(err){
                            $rootScope.token='000';
                        }
                    }
//                  console.log($rootScope.token);
                    var deferred = $q.defer();
                    var num = Settings.version;
                    var dataJs =Settings.deBug === true ? '.json?v=' + num : '';
                    
                    $http({
                        url: serviceBase + url + dataJs,
                        method: (Settings.deBug === true ? "get" : "post"),
                        headers: {
                            'Authorization':'Bearer '+($rootScope.token==''?'000':$rootScope.token),
                        },
                        data: par,
                        timeout:30000
                    }).success(function (data) {
                        if (data.hasOwnProperty('result')!==true && (JSON.stringify(data).indexOf('login')>0)) {
                            $localStorageUsage.clear();
                            $state.go('login');
                        }
                        else {
                            deferred.resolve(data);
                        }
                    }).error(function(error, status) {

                        var msg = '获取数据出现错误!';
                        if(status==undefined || status==401){
                            $localStorageUsage.clear();
//                          $window.location.href=Settings.oauthUrl;
                            //showToast('认证失效,请重新登录!', 2000,'login',null);
                        }else if (status==0 || status == 500 || status==404){
                            msg = '('+status+')系统错误!';

                            showToast(msg, 1000);
                            deferred.reject(msg);
                        }else{
                            showToast(msg, 1000);
                            deferred.reject(msg);
                        }
                    });
                    return deferred.promise;
                },
                getFormData: function(url, par) { //表单提交             
                	var deferred = $q.defer();
	                $http({
					    method: 'POST',
					    url: serviceBase+url,
					    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
					    data: $httpParamSerializerJQLike(par)
					}).success(function (data) {
                         deferred.resolve(data);
                            
					}).error(function(error, status) {
	                        var msg = '获取数据出现错误!';
	                        if(status==undefined){
	                            $localStorageUsage.clear();
	                            showToast('认证失效,请重新登录!', 2000,'login',null);
	
	                        }else if (status==0 || status == 500 || status==404){
	                            msg = '('+status+')系统错误!';
	
	                            showToast(msg, 1000);
	                            deferred.reject(msg);
	                        }else{
	                            showToast(msg, 1000);
	                            deferred.reject(msg);
	                        }						
						});
                      return deferred.promise;
				},
                //上传文件
                uploadFile: function (url, file, par) {
	                $ionicLoading.show({
	                    template: "正在上传，请稍后..",
	                    noBackdrop: true
	                });                	
                	var deferred = $q.defer();
                	var num=Settings.version;
                	var dataJs = Settings.deBug === true ? '.json?v='+num: '';
	                Upload.upload({
	                    //服务端接收
	                    url: serviceBase + url + dataJs,
	                    //上传的同时带的参数
	                    data: par,
	                    method: (Settings.deBug === true ? "get" : "post"),
	                    file: file
	                }).progress(function (evt) {
	                    //进度条
	                    var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
	                    $rootScope.progressPercentage=progressPercentage;
//	                    console.log('progess:' + progressPercentage + '%' );
	                }).success(function (data, status, headers, config) {
	                	$ionicLoading.hide();
	                    //上传成功
	                    deferred.resolve(data);
	                }).error(function (data, status, headers, config) {
	                    //上传失败
	                    $ionicLoading.hide();
	                    console.log('error status: ' + status);
	                });
	                return deferred.promise;
	            }
            }
        }])
        .service('UtilService',['$window',function($window){
            return {
                isNull: function (val) {//检查给定的对象是否为Null或未定义
                    return val == null || val=='' || typeof(val) == "undefined";
                },
                isName:function(val){//姓名只能输入最小2个最大15个汉字字母组成
                    return !/^[a-zA-Z\u4e00-\u9fa5]{2,15}$/.test(val);
                },
                isNumber: function (val) {//判断给定的值是否是数字
                    return isNaN(val);
                },
                isInteger:function(val){//5位正整数
                    return !/^[1-9]{1}\d{0,7}$/.test(val);
                },
                isLength:function(val,minNum,maxNum){//判断字符串长度
                    return !(val.length>=minNum && val.length<maxNum)?true:false;
                },
                isEmpty: function (val) {//检查给定的字符串是否是空串或未定义
                    return this.trim(val).length == 0;
                },
                trim: function (val) {//移除给定的字符串两端的空白字符，如果字符串不存在则返回空串。
                    return !val ? "" : val.replace(/(^\s*)|(\s*$)/g, "");
                },
                isMobile:function(val){//检测手机号码格式号码是否正确
                    return !/^1[0-9]{10}$/.test(val);
                },
                isTelephone:function(val){//检测电话号码如0775-88888888
                    return !/^0\d{2,3}-\d{7,8}$/.test(val);
                },
                isEmail:function(val){//检测邮箱格式是否正确
                    return !/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/.test(val);
                },
                isBankNo:function(val){//检测银行卡号格式是否正确
                    return !/^[0-9]{16,19}$/.test(val);
                },
                isArray: function (val) {//判断是否为数组
                    return !this.isNull(val) && Object.prototype.toString.call(val) === "[object Array]";
                },
                isStartWith: function (val, prefix) {//检查给定的字符串是否以某个字符串开头，如果要检测多个prefix，可指定prefix为数组。
                    if (!val) return false;
                    var arrays = this.isArray(prefix) ? prefix : [prefix];
                    for (var i = 0; i < arrays.length; i++) {
                        if (val.indexOf(arrays[i]) == 0) {
                            return true;
                        }
                    }
                    return false;
                },
                isContain: function (val, array) {//检查指定的值是否在给定的数组中。
                    if (!this.isArray(array)) return false;
                    for (var i = 0; i < array.length; i++) {
                        if (array[i] == val) return true;
                    }
                    return false;
                },
                isIdent:function(val){//验证身份证号格式是否正确
                    if(val.length==15)
                        return !/^\d{15}$/.test(val);
                    else
                        return !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/.test(val);
                },
                getSexByIdent:function(val){//根据身份证判断性别
                    if(val.length==15){
                        return (parseInt(val.toString().charAt(val.length-1))%2==0?0:1);
                    }else{
                        return parseInt(val.toString().charAt(val.length-2))%2==0?0:1;
                    }
                },
                getAgeByIdent:function(val){//根据身份证获取年龄
				    var myDate = new Date();  
				    var month = myDate.getMonth() + 1;  
				    var day = myDate.getDate();  
				    var age = myDate.getFullYear() - val.substring(6, 10) - 1;  
				    if (val.substring(10, 12) < month || val.substring(10, 12) == month && val.substring(12, 14) <= day) {  
				        age++;  
				    }       
				    return age;
                },
                getBirthByIdent:function(val){//根据身份证获取出生年月日
                      var birth = val.substring(6, 10) + "-" + val.substring(10, 12) + "-" + val.substring(12, 14); 
                      return birth;
                }
            }
        }])
        .service('dateService',['$window','$filter',function($window,$filter){
        	return {
        		parserDate:function (date) {  
			    var t = Date.parse(date);  
			    if (!isNaN(t)) {  
			        return new Date(Date.parse(date.replace(/-/g, "/")));  
			    } else {  
			        return;  
			    }  
	          },  
        	 formatDate:function (date) {  
				var t=$filter('date')(date,'yyyy-MM-dd hh:mm');
				return t;
	           }  
	         }
        }]);  
    return commonService;
});
