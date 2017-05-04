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
		
     app.controller('weixinUserCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//理财师管理
			$rootScope.getUsers=function(){
				AccountService.getUsers($scope.parm,function(data){
					    console.log(data);
					    $scope.getUsersList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getUsers");
				        
			    });
			 }
			$rootScope.getUsers();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getUsers();
			};	
			
			//删除
			$scope.delUsers = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delUsers (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getUsers();
					    })
				   }
			}
		}]);
		
		app.controller('articlesCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//资讯管理
			$rootScope.getArticles=function(){
				AccountService.getArticles($scope.parm,function(data){
					    console.log(data);
					    $scope.getArticlesList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getArticles");
				        
			    });
			 }
			$rootScope.getArticles();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getArticles();
			};	
			
			//删除
			$scope.delArticles = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delArticles (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getArticles();
					    })
				   }
			}
		}]);
		
		app.controller('ordersCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//订单管理
			$rootScope.getOrders=function(){
				AccountService.getOrders($scope.parm,function(data){
					    console.log(data);
					    $scope.getOrdersList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getOrders");
				        
			    });
			 }
			$rootScope.getOrders();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getOrders();
			};
			
			//删除
			$scope.delOrders = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delOrders (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getOrders();
					    })
				   }
			}
		}]);
		
		app.controller('productsCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//产品管理
			$rootScope.getProducts=function(){
				AccountService.getProducts($scope.parm,function(data){
					    console.log(data);
					    $scope.getProductsList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getProducts");
				        
			    });
			 }
			$rootScope.getProducts();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getProducts();
			};	
			
		    //删除
			$scope.delProducts = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delProducts (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getProducts();
					    })
				   }
			}
		}]);
		
		app.controller('coursesCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//课程管理
			$rootScope.getCourses=function(){
				AccountService.getCourses($scope.parm,function(data){
					    console.log(data);
					    $scope.getCoursesList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getCourses");
				        
			    });
			 }
			$rootScope.getCourses();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getCourses();
			};	
			
			//删除
			$scope.delCourses = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delCourses (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getCourses();
					    })
				   }
			}
		}]);
		
		app.controller('activesCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//活动管理
			$rootScope.getActives=function(){
				AccountService.getActives($scope.parm,function(data){
					    console.log(data);
					    $scope.getActivesList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getActives");
				        
			    });
			 }
			$rootScope.getActives();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getActives();
			};	
			//删除
			$scope.delActives = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delActives (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getActives();
					    })
				   }
			}
		}]);
		
		app.controller('toolsCtrl', ['$rootScope','$state','$scope','$uibModal','$loading','AccountService','toastr', function($rootScope, $state,$scope,$uibModal,$loading,AccountService,toastr){
            $scope.parm = {
			"paraName":"",
			"pageIndex": 1,
			"pageSize": 10
	        }		
			//活动管理
			$rootScope.getTools=function(){
				AccountService.getTools($scope.parm,function(data){
					    console.log(data);
					    $scope.getToolsList = data.list;
					    $scope.totalItems = data.total;
				        $loading.finish("getTools");
				        
			    });
			 }
			$rootScope.getTools();
			
			//分页事件,获取当前的点击的页数
			$scope.pageChanged = function() {
				console.log($scope.parm.pageIndex);
				$rootScope.getTools();
			};	
			//删除
			$scope.delTools = function(id){
				var parm = {"id":id}
				var comfirm =confirm("是否确认删除该行？");
	           	  if(comfirm){
					  AccountService.delTools (parm, function(data) {
					  	     toastr.success(data.message);
					  	     $rootScope.getTools();
					    })
				   }
			}
		}]);
});