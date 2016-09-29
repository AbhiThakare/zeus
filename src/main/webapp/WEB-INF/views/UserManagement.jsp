<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS $http Example</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body ng-app="myApp" ng-controller="UserController" class="ng-cloak">
      Hello Abhinav123
      <form class="list">
			<div class="item item-divider">Form </div>
			<div ng-repeat="field in entity.fields">
				<ng-form name="form">
					<!-- TEXT FIELDS -->
					<div ng-if="field.type=='text'" class="form-group">
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<input type="{{ field.type }}" dynamic-name="field.name" id="{{field.name}}" data-ng-model="field.data"  class="form-control" required/>
							<!--<span ng-show="myForm.{{field.name}}.$dirty && myForm.{{field.name}}.$error.required">Required!</span>.-->
							<span  data-ng-show=" {{'form.'+field.name+'.$dirty && form.'+field.name+'.$error.required'}}">Required!</span>
						</div>
					</div>
					<!-- RADIO FIELDS -->
					<div ng-if="field.type=='radio'" class="form-group">
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<div class="checkbox" ng-repeat="option in field.options" >
								<label>                
								<input type="radio" data-ng-model="field.data"  name="taskGroup"  id="{{option.name}}" value="{{option.id}}">{{option.name}}
								</label>
							</div>
						</div>
					</div>
					<!-- EMAIL FIELDS -->
					<div ng-if="field.type=='email'" class="form-group">
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<input type="{{ field.type }}" dynamic-name="field.name" data-ng-model="field.data" class="form-control" required/>
							<span data-ng-show=" {{'form.'+field.name+'.$dirty && form.'+field.name+'.$error.required'}}">Required!</span>
							<span data-ng-show=" {{'form.'+field.name+'.$dirty && form.'+field.name+'.$error.email'}}">Not email!</span>
						</div>
					</div>
					<!-- PASSWORD FIELDS -->
					<div ng-if="field.type=='password'" class="form-group" >
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<input type="{{ field.type }}" dynamic-name="field.name" data-ng-model="field.data" ng-minlength={{field.min}} ng-maxlength={{field.max}} class="form-control" required/>
							<span data-ng-show=" {{'form.'+field.name+'.$dirty && form.'+field.name+'.$error.required'}}">Required!</span>
							<span data-ng-show=" {{'!form.'+field.name+'.required && (form.'+field.name+'.$error.minlength || form.'+field.name+'.$error.maxlength)' }}">Passwords must be between 8 and 20 characters.</span>
						</div>
					</div>
					<!-- CHECKBOX FIELDS -->
					<div ng-if="field.type=='checkbox'" class="form-group" >
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<div class="checkbox" ng-repeat="option in field.options" >
								<label>
								<input type="checkbox" data-ng-model="option.data"  name="taskGroup"  id="{{option.name}}" value="{{option.id}}" >{{option.name}}
								</label>
							</div>
						</div>
					</div>
					<div ng-if="field.type=='select'" class="form-group" >
						<label class="col-sm-2 control-label">{{field.label}}</label>
						<div class="col-sm-6">
							<select data-ng-model="field.data" ng-options="option.name for option in field.options" class="form-control" required/>
						</div>
					</div>
				</ng-form>
			<input type="button" ng-click="fetch()" value ="submit"  />
			</div>
		</form>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
     <script src="<c:url value='/static/js/controller/user_controller.js' />"></script>
  </body>
</html>