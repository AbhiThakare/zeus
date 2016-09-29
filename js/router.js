angular.module('routedTabs').config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise("/main/tab1");
    $stateProvider.state("main", {
        abtract: true,
        url: "/main",
        templateUrl: "templates/main.html"
    }).state("main.tab1", {
        url: "/tab1",
        templateUrl: "templates/tab1.html",
        controller: "DynamicFormController"
    }).state("main.tab2", {
        url: "/tab2",
        templateUrl: "templates/tab2.html"
    }).state("main.tab3", {
        url: "/tab3",
        templateUrl: "templates/tab3.html"
    });
});