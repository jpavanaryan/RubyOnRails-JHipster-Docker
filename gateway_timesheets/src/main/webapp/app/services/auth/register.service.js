(function () {
    'use strict';

    angular
        .module('gatewayTimesheetsApp')
        .factory('Register', Register);

    Register.$inject = ['$resource'];

    function Register ($resource) {
        return $resource('api/register', {}, {});
    }
})();
