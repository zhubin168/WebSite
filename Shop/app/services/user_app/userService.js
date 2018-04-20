/**
 * Created by tianxc on 16-8-3.
 */
define([
    'appMobile'
], function(app) {
    'use strict';

    app.factory('userService', function($http,CommonService) {
        return {
            saveSign: function(par,callback,callbackError) { //签到
                CommonService.getJsonData('api/collect/saveSign', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            userLogin: function(par,callback,callbackError) { //登录
                CommonService.getJsonData('api/user/userLogin', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            verifyCode: function(par,callback,callbackError) { //获取手机验证码
                CommonService.getJsonData('api/common/verifyCode', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            submitUserInfo: function(par,callback,callbackError) { //提交个人信息登记表
                CommonService.getJsonData('api/user/submitUserInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            getUserInfo: function(par,callback,callbackError) { //获取用户信息
                CommonService.getJsonData('api/user/getUserInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveUserInfo: function(par,callback,callbackError) { //添加个人资料
                CommonService.getJsonData('api/user/saveUserInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveUrgentContact: function(par,callback,callbackError) { //添加紧急联系人
                CommonService.getJsonData('api/user/saveUrgentContact', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveUserAccount: function(par,callback,callbackError) { //添加bank
                CommonService.getJsonData('api/user/saveUserAccount', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveChildrenInfo: function(par,callback,callbackError) { //save Children Info
                CommonService.getJsonData('api/user/saveChildrenInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            delChildrenInfo: function(par,callback,callbackError) { //delete Children Info
                CommonService.getJsonData('api/user/delChildrenInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveFamilyInfo: function(par,callback,callbackError) { //保存家庭信息
                CommonService.getJsonData('api/user/saveFamilyInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            delFamilyInfo: function(par,callback,callbackError) { //删除家庭信息
                CommonService.getJsonData('api/user/delFamilyInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveEducationInfo: function(par,callback,callbackError) { //保存教育信息
                CommonService.getJsonData('api/user/saveEducationInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            delEducationInfo: function(par,callback,callbackError) { //删除教育信息
                CommonService.getJsonData('api/user/delEducationInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveWorkInfo: function(par,callback,callbackError) { //保存工作
                CommonService.getJsonData('api/user/saveWorkInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            delWorkInfo: function(par,callback,callbackError) { //删除工作
                CommonService.getJsonData('api/user/delWorkInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveBackInfo: function(par,callback,callbackError) { //保存背景信息
                CommonService.getJsonData('api/user/saveBackInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            delBackInfo: function(par,callback,callbackError) { //删除背景信息
                CommonService.getJsonData('api/user/delBackInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveDataInfo: function(par,callback,callbackError) { //保存一般资料
                CommonService.getJsonData('api/user/saveDataInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            saveFileInfo: function(par,callback,callbackError) { //保存图片附件
                CommonService.getJsonData('api/user/saveFileInfo', par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            },
            upImage: function(par,file,callback,callbackError) { //上传图片
                CommonService.uploadFile('api/common/upImage',file,par).then(function(data) {
                    callback(data);
                },function(error){
                    callbackError(error);
                });
            }
        }
    });
});