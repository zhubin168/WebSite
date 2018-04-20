/**
 * Created by zhubin on 2018-04-18
 */
define(['appMobile'], function(app) {    
	//微信认证
    app.controller('loginCtrl', ['$rootScope','$scope','$state','CommonService','UtilService','userService','$ionicLoading','$interval',function($rootScope, $scope,$state,CommonService,UtilService,userService,$ionicLoading,$interval) {
			
    }]);    
    
    //商城首页
    app.controller('indexCtrl', ['$rootScope','$scope','$state','$stateParams','CommonService','UtilService','userService','$ionicLoading','$ionicPopup','$timeout',function($rootScope, $scope,$state,$stateParams,CommonService,UtilService,userService,$ionicLoading,$ionicPopup,$timeout) {
		//加载更多
		$scope.loadMore = function() {
			//$scope.getNewsList();
			$timeout(function() {
				$scope.$broadcast('scroll.infiniteScrollComplete');
			}, 1000);
		};
		// 下拉刷新
		$scope.doRefresh = function() {
			//$scope.parameter.pageIndex = 1;
			//$scope.newsList = [];
			//$scope.getNewsList();
			$timeout(function() {
				$scope.$broadcast('scroll.refreshComplete');
			}, 1000);
		};
    }]);    
    
    //订单详情
    app.controller('orderCtrl', ['$rootScope','$scope','$state','$stateParams','CommonService','UtilService','userService','$ionicLoading','$ionicPopup',function($rootScope, $scope,$state,$stateParams,CommonService,UtilService,userService,$ionicLoading,$ionicPopup) {
        $rootScope.hideTabs = true;
    }]); 
    
    //提交订单
    app.controller('orsubmitCtrl', ['$rootScope','$scope','$state','$stateParams','CommonService','UtilService','userService','$ionicLoading','$ionicPopup',function($rootScope, $scope,$state,$stateParams,CommonService,UtilService,userService,$ionicLoading,$ionicPopup) {
         $rootScope.hideTabs = true;
    }]); 
    //我的订单
    app.controller('myorderCtrl', ['$rootScope','$scope','$state','$stateParams','CommonService','UtilService','userService','$ionicLoading','$ionicPopup','$timeout',function($rootScope, $scope,$state,$stateParams,CommonService,UtilService,userService,$ionicLoading,$ionicPopup,$timeout) {
        //加载更多
		$scope.loadMore = function() {
			//$scope.getNewsList();
			$timeout(function() {
				$scope.$broadcast('scroll.infiniteScrollComplete');
			}, 1000);
		};
		// 下拉刷新
		$scope.doRefresh = function() {
			$timeout(function() {
				$scope.$broadcast('scroll.refreshComplete');
			}, 1000);
		};
    }]); 
});
