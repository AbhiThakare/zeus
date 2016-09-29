angular.module('routedTabs').controller('DynamicFormController', function($scope, $log) {
    // we would get this from the api
    $scope.entity = {
        name: "Course",
        fields: [{
            type: "text",
            name: "firstname",
            label: "FirstName",
            required: true,
            data: ""
        },
        {
            type: "text",
            name: "midlename",
            label: "MidleName",
            required: true,
            data: ""
        }, {
            type: "text",
            name: "Lasttname",
            label: "LastName",
            required: true,
            data: ""
        }, {
            type: "radio",
            name: "color_id",
            label: "Colors",
            options: [{
                id: 1,
                name: "orange"
            }, {
                id: 2,
                name: "pink"
            }, {
                id: 3,
                name: "gray"
            }, {
                id: 4,
                name: "cyan"
            }],
            required: true,
            data: ""
        }, {
            type: "email",
            name: "emailUser",
            label: "Email",
            required: true,
            data: ""
        }, {
            type: "text",
            name: "city",
            label: "City",
            required: true,
            data: ""
        }, {
            type: "password",
            name: "pass",
            label: "Password",
            min: 6,
            max: 20,
            required: true,
            data: ""
        }, {
            type: "select",
            name: "teacher_id",
            label: "Teacher",
            options: [{
                name: "Mark"
            }, {
                name: "Claire"
            }, {
                name: "Daniel"
            }, {
                name: "Gary"
            }],
            required: true,
            data: "",
            value: "Mark"
        }, {
            type: "checkbox",
            name: "car_id",
            label: "Cars",
            options: [{
                id: 1,
                name: "bmw"
            }, {
                id: 2,
                name: "audi"
            }, {
                id: 3,
                name: "porche"
            }, {
                id: 4,
                name: "jaguar"
            }],
            required: true,
            data: ""
        }]
    };
    $scope.submitForm = function() {
        $log.debug($scope.entity);
    };
}).controller("mainController", function($rootScope, $scope, $state) {
    $scope.go = function(route) {
        $state.go(route);
    };
    $scope.active = function(route) {
        return $state.is(route);
    };
    $scope.tabs = [{
        heading: "Tab 1",
        route: "main.tab1",
        active: false
    }, {
        heading: "Tab 2",
        route: "main.tab2",
        active: false
    }, {
        heading: "Tab 3",
        route: "main.tab3",
        active: false
    }, ];
    $scope.$on("$stateChangeSuccess", function() {
        $scope.tabs.forEach(function(tab) {
            tab.active = $scope.active(tab.route);
        });
    });
});