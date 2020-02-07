
Object.toparams=function ObjecttoParams(obj){
    var p=[];
    for(var key in obj){
        p.push(key+"="+encodeURIComponent(obj[key]));
    }
    return p.join("&");
};


//========================================================//
var app = angular.module('myApp',[]);
app.controller('cntrl', 
    function($scope, $http){
    $scope.list=[];


//================Load Form=================================
    $scope.loadForms = function loadForms() {
        $http({
            method: "POST",
            url:"form_select.php",
            headers:{"Content-Type":"application/x-www-form-urlencoded"}
        }).then(function(result){
            $scope.list=result.data;
        },
        function(){
            alert("Error getting records");
        });
    };

//===============Insert Form=================================
     $scope.insertForms = function insertForms(formName,formText) {
   
        var post = {};

        console.log(formName);
        post.formName = formName;
        post.formText = formText;
    
        $http({
            method: "POST",
            url:"form_insert.php",
            data: Object.toparams(post),
            headers:{"Content-Type":"application/x-www-form-urlencoded"}
        }).then(function(result){
            alert("record inserted");
            $scope.loadForms();
        },
        function(){
            alert("Error deleting records");
        });
    };
    
//================Delete Form=================================
    $scope.deleteForms = function deleteForms(form) {
   
        var post = {};

        post.formID = form.FormID;
       
    
        $http({
            method: "POST",
            url:"form_delete.php",
            data: Object.toparams(post),
            headers:{"Content-Type":"application/x-www-form-urlencoded"}
        }).then(function(result){
            $scope.loadForms();
        },
        function(){
            alert("Error deleting records");
        });
    };

//===============Update Form=================================
     $scope.updateForms = function updateForms(form) {
   
        var post = {};

        post.formID = form.FormID;
        post.formName = form.FormName;
        post.formText = form.FormText;
    
        $http({
            method: "POST",
            url:"form_update.php",
            data: Object.toparams(post),
            headers:{"Content-Type":"application/x-www-form-urlencoded"}
        }).then(function(result){
            alert("record updated");
            $scope.loadForms();
        },
        function(){
            alert("Error deleting records");
        });
    };


//===============Load Merge=================================
      $scope.merge=[];
      $scope.loadMerges = function loadMerges() {
        $http({
            method: "POST",
            url:"merge_select.php",
            headers:{"Content-Type":"application/x-www-form-urlencoded"}
        }).then(function(result2){
             console.log(result2);
            $scope.merge=result2.data;
        },
        function(){
           
            alert("Error getting records");
        });
    };


          
    });