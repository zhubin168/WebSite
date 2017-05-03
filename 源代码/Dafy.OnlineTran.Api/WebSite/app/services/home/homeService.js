/**
 * Created by tianxc on 16-8-3.
 */
define([
    'app'
], function(app) {
    'use strict';

    app.factory('homeService', function($http,CommonService) {
        return {
            dictionaries: function(par,callback) { //获取字典值
                CommonService.getJsonData('api/home/Dictionaries', par).then(function(data) {
                    callback(data);
                });
            },
            saveDictionary: function(par,callback) { //保存字典值
                CommonService.getJsonData('api/home/saveDictionary', par).then(function(data) {
                    callback(data);
                });
            },
            delDictionary: function(par,callback) { //删除字典值
                CommonService.getJsonData('api/home/delDictionary', par).then(function(data) {
                    callback(data);
                });
            },
            logout: function(par,callback) { //退出登录
                CommonService.getJsonData('api/home/Logout', par).then(function(data) {
                    callback(data);
                });
            },
            getAuthorityMeun: function(par,callback) { //获取登录用户菜单
                CommonService.getJsonData('api/home/getAuthorityMeun', par).then(function(data) {
                    callback(data);
                });
            },
            GetRoleList: function(par,callback) { //获取角色列表
                CommonService.getJsonData('api/Permition/GetRoleList', par).then(function(data) {
                    callback(data);
                });
            },
            delRole: function(par,callback) { //删除角色
                CommonService.getJsonData('api/Permition/delRole', par).then(function(data) {
                    callback(data);
                });
            },
            saveRole: function(par,callback) { //添加编辑角色
                CommonService.getJsonData('api/Permition/saveRole', par).then(function(data) {
                    callback(data);
                });
            },
            getUserList: function(par,callback) { //获取人员列表
                CommonService.getJsonData('api/Permition/getUserList', par).then(function(data) {
                    callback(data);
                });
            },
            getUser: function(par,callback) { //查询人员
                CommonService.getJsonData('api/Permition/getUser', par).then(function(data) {
                    callback(data);
                });
            },
            delUser: function(par,callback) { //删除人员
                CommonService.getJsonData('api/Permition/delUser', par).then(function(data) {
                    callback(data);
                });
            },
            saveUser: function(par,callback) { //保存人员
                CommonService.getJsonData('api/Permition/saveUser', par).then(function(data) {
                    callback(data);
                });
            },
            getTaskList: function(par,callback) { //获取权限模块
                CommonService.getJsonData('api/Permition/getTaskList', par).then(function(data) {
                    callback(data);
                });
            },
            setPermitions: function(par,callback) { //设置
                CommonService.getJsonData('api/Permition/setPermitions', par).then(function(data) {
                    callback(data);
                });
            },
            GetProvince: function(par,callback) { //获取省份
                CommonService.getJsonData('api/Common/GetProvince', par).then(function(data) {
                    callback(data);
                });
            },
            GetCitys: function(par,callback) { //根据省份获取城市
                CommonService.getJsonData('api/Common/GetCitys', par).then(function(data) {
                    callback(data);
                });
            },
            getTrainByStudent: function(par,callback) { //培训人员报表
                CommonService.getJsonData('api/report/getTrainByStudent', par).then(function(data) {
                    callback(data);
                });
            },
            getTrainerByTrains: function(par,callback) { //培训师培训信息报表
                CommonService.getJsonData('api/report/getTrainerByTrains', par).then(function(data) {
                    callback(data);
                });
            },
            getTrainerByTrainsDetial: function(par,callback) { //培训师培训信息报表
                CommonService.getJsonData('api/report/getTrainerByTrainsDetial', par).then(function(data) {
                    callback(data);
                });
            },
            GetStudentByTrainerFeedBack: function(par,callback) { //学员对培训师评价报表
                CommonService.getJsonData('api/report/GetStudentByTrainerFeedBack', par).then(function(data) {
                    callback(data);
                });
            },
            GetStudentByTrainerFeedBackDetail: function(par,callback) { //学员对培训师评价明细报表
                CommonService.getJsonData('api/report/GetStudentByTrainerFeedBackDetail', par).then(function(data) {
                    callback(data);
                });
            },      
            GetExpenseInfos: function(par,callback) { //培训师报销信息报表
                CommonService.getJsonData('api/train/GetExpenseInfos', par).then(function(data) {
                    callback(data);
                });
            }, 
            getTrainOnline: function(par,callback) { //学员线上培训报表
                CommonService.getJsonData('api/report/getTrainOnline', par).then(function(data) {
                    callback(data);
                });
            },             
            getTrainOnlineDetail: function(par,callback) { //学员线上培训明细
                CommonService.getJsonData('api/report/getTrainOnlineDetail', par).then(function(data) {
                    callback(data);
                });
            }, 
            getReportTutors: function(par,callback) { //学员对专属导师的评价的汇总
                CommonService.getJsonData('api/report/getReportTutors', par).then(function(data) {
                    callback(data);
                });
            },
            getReportTutorDetails: function(par,callback) { //学员对专属导师的评价的明细
                CommonService.getJsonData('api/report/getReportTutorDetails', par).then(function(data) {
                    callback(data);
                });
            },   
        }
    });
});