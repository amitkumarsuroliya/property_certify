var BufkoWeb = angular.module("BufkoWeb", ['ngResource', 'ui.router']);

BufkoWeb.config([ "$httpProvider", function($httpProvider) {
        $httpProvider.defaults.headers.common["X-CSRF-Token"] = $("meta[name=csrf-token]").attr("content");
        var interceptor = [ "$location", "$rootScope", "$q", function ($location, $rootScope, $q) {
                var success = function (response) {
                    return response;
                };
                var error = function (response) {
                    if (response.status === 401) {
                        $rootScope.$broadcast("event:unauthorized");
                        $location.path("/users/sign-in");
                        return response;
                    }
                    return $q.reject(response);
                };
                return function (promise) {
                    return promise.then(success, error);
                };
            }
        ];
        return $httpProvider.responseInterceptors.push(interceptor);
    }
]);

BufkoWeb.config(function($stateProvider) {
    $stateProvider
        .state('home', {
            url: '/',
            templateUrl: '/templates/home/index.html',
            controller: 'MainIndexCtrl'
        })
        .state('login', {
            url: '/users/sign-in',
            templateUrl: '/templates/users/sign-in.html',
            controller: UsersCtrl
        })
        .state('logout', {
            url: '/users/sign-out',
            templateUrl: '/templates/users/sign-out.html',
            controller: UsersCtrl
        });
});