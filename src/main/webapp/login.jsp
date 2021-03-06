<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<title>Log in with your account</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/common.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<div class="container">

   <form method="POST" action="${contextPath}/plain/login.html" class="form-signin">
      <h2 class="form-heading">Log in</h2>

      <div class="form-group ${error != null ? 'has-error' : ''}">
         <span>${message}</span>
         <input name="username" type="text" class="form-control" placeholder="Username"  />
         <input name="password" type="password" class="form-control" placeholder="Password" />
         <span>${error}</span>
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

         <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
         <h4 class="text-center">
            <a href="registration.html">Create an account</a>
         </h4>
      </div>

   </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

