angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.search   = '';     // set the default search/filter term
  
  // create the list  
  $scope.pink = [
    { id: '1102', name: 'violin', brand: 'A', price:'100',more:'more'},
    { id: '1103', name: 'flute', brand: 'B', price:'200',more:'more'},
    { id: '1104', name: 'guitar', brand: 'C', price:'300',more:'more'},
    { id: '1105', name: 'tabla', brand: 'D', price:'400',more:'more'}
  ];
  
});