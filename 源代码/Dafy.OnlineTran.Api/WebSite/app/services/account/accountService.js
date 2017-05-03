/**
 * Created by tianxc on 16-8-3.
 */
define([
    'app'
], function(app) {
    'use strict';

    app.factory('AccountService', function($http,CommonService) {
        return {
            login: function(par,callback) { //登录
                CommonService.getJsonData('api/home/login', par).then(function(data) {
                    callback(data);
                });
            },
            updatePassword: function(par,callback) { //修改密码
                CommonService.getJsonData('api/home/updatePassword', par).then(function(data) {
                    callback(data);
                });
            },
            findPassword: function(par,callback) { //忘记密码
                CommonService.getJsonData('api/home/findPassword', par).then(function(data) {
                    callback(data);
                });
            },
            verifyCode: function(par,callback) { //获取手机验证码
                CommonService.getJsonData('api/home/verifyCode', par).then(function(data) {
                    callback(data);
                });
            },
            getUsers: function(par,callback) { //理财师管理列表
                CommonService.getJsonData('api/Financial/GetUsers', par).then(function(data) {
                    callback(data);
                });
            }, 
            getArticles: function(par,callback) { //资讯管理列表
                CommonService.getJsonData('api/Article/getArticles', par).then(function(data) {
                    callback(data);
                });
            }, 
            getOrders: function(par,callback) { //订单管理列表
                CommonService.getJsonData('api/Order/GetOrders', par).then(function(data) {
                    callback(data);
                });
            }, 
            getProducts: function(par,callback) { //产品管理列表
                CommonService.getJsonData('api/Product/GetProducts', par).then(function(data) {
                    callback(data);
                });
            }, 
            getCourses: function(par,callback) { //课程管理列表
                CommonService.getJsonData('api/Course/GetCourses', par).then(function(data) {
                    callback(data);
                });
            }, 
            getActives: function(par,callback) { //活动管理列表
                CommonService.getJsonData('api/Active/GetActives', par).then(function(data) {
                    callback(data);
                });
            }, 
            getTools: function(par,callback) { //获客助手管理列表
                CommonService.getJsonData('api/Tool/GetTools', par).then(function(data) {
                    callback(data);
                });
            }
        }
    });
});