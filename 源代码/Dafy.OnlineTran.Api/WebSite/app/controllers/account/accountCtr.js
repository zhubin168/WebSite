define(['app'], function(app) {
	app.controller('LoginCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
			$scope.user = {
                userId: '',
                password: '',
                uuId:'0000'//device.$$state.value.uuid
            };

            $scope.login = function(user) { //登录
                if (user.userId == '') {
                    toastr.warning('请输入用户名!');
                    return;
                } else if (!/^[0-9]*$/.test(user.userId)) {
                    toastr.warning('用户名只能输入数字!');
                    return;
                }
                if (user.password == '') {
                    toastr.warning('请输入密码!');
                    return;
                }
                $loading.start("loginLoad");
	            AccountService.login(user, function(data) {
	            	console.log(data);
	            	    $loading.finish("loginLoad");
	                    if (data != null && data.state == 1) {	        
	                    	localStorage.setItem('onLineauthorization', JSON.stringify(data.data));
	                        $rootScope.token = data.data.token;
	                        $rootScope.userId=user.userId;	                        
	                        $state.go('home');
	                    } else {
	                    	toastr.warning('用户名或密码不对!');
	                    	localStorage.removeItem('onLineauthorization');
	                    }
	            });

            };
		}]);
});