require.config({
    baseUrl: 'app',
    urlArgs: "v=1.0.1",
    paths: {
        'ionic': '../lib/ionic/js/ionic.bundle.min',
        'ocLazyLoad': '../lib/ocLazyLoad/dist/ocLazyLoad',
        'angularAMD': '../lib/angularAMD/angularAMD.min', 
        'angular': '../lib/ionic/js/angular/angular.min',
        'lazy-image': '../lib/angular-lazy-image/lazy-image',
        'angularCss': '../lib/angular-css/angular-css.min',
        'bindonce':'../lib/angular-bindonce/bindonce.min',
        'localStorageUsage':'../lib/ng-localStorage/localStorageUsage.min',
        'angularpdf':'../lib/pdf/angular-pdf',
        'file-upload': '../lib/ng-file-upload/ng-file-upload.min',
        'ngFile':'../lib/ng-file-upload/ng-file-upload-shim.min',
        'angular-cookies':'../lib/angular-cookies/angular-cookies.min',
        'selcity':'../lib/ionic-selcity/src/js/ionic-selcity-directive',       
        'ionic-datepicker':'../lib/ionic-datepicker/ionic-datepicker.bundle.min'      
    },
    shim: {
        'angularCss': ['angular'],
        'ocLazyLoad': ['angular'],
        "angular": { exports: "angular" },
        'lazy-image': ['angular'],
        'bindonce': ['angular'],
        'localStorageUsage':['angular'],
        'angularpdf':['angular'],
        'file-upload': ['angular'],
        'ngFile': ['angular'],
        'angular-cookies':['angular'],
        'selcity':['angular'],        
        'ionic-datepicker':['angular']        
    },
    deps: ['appMobile']
});
