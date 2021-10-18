<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" type="text/css" th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}" />

    <title>Registration</title>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
     <span class="sr-only">Toggle navigation</span> <span
      class="icon-bar"></span> <span class="icon-bar"></span> 
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#" th:href="@{/}">Login</a>
            </div>
        </div>
    </nav>

    <br>
    <br>

    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <div th:if="${param.success}">
                    <div class="alert alert-info">You've successfully registered to our awesome app!</div>
                </div>

                <h1>Registration</h1>
                <form th:action="@{/registration}" th:object="${user}" method="post">

                    <p class="error-message" th:if="${#fields.hasGlobalErrors()}" th:each="error : ${#fields.errors('global')}" th:text="${error}">Validation error
                    </p>

                    <div class="form-group" th:classappend="${#fields.hasErrors('Name')}? 'has-error':''">
                        <label for="Name" class="control-label">Name</label> <input id="Name" class="form-control" th:field="*{Name}" />
                        <p class="error-message" th:each="error : ${#fields.errors('Name')}" th:text="${error}">Validation error</p>
                    </div>
                    <div class="form-group" th:classappend="${#fields.hasErrors('email')}? 'has-error':''">
                        <label for="email" class="control-label">E-mail</label> <input id="email" class="form-control" th:field="*{email}" />
                        <p class="error-message" th:each="error : ${#fields.errors('email')}" th:text="${error}">Validation error
                        </p>
                    </div>
                    <div class="form-group" th:classappend="${#fields.hasErrors('confirmEmail')}? 'has-error':''">
                        <label for="confirmEmail" class="control-label">Confirm
       e-mail</label> <input id="confirmEmail" class="form-control" th:field="*{confirmEmail}" />
                        <p class="error-message" th:each="error : ${#fields.errors('confirmEmail')}" th:text="${error}">Validation error</p>
                    </div>
                    <div class="form-group" th:classappend="${#fields.hasErrors('password')}? 'has-error':''">
                        <label for="password" class="control-label">Password</label> <input id="password" class="form-control" type="password" th:field="*{password}" />
                        <p class="error-message" th:each="error : ${#fields.errors('password')}" th:text="${error}">Validation error</p>
                    </div>
                    <div class="form-group" th:classappend="${#fields.hasErrors('confirmPassword')}? 'has-error':''">
                        <label for="confirmPassword" class="control-label">Confirm
       password</label> <input id="confirmPassword" class="form-control" type="password" th:field="*{confirmPassword}" />
                        <p class="error-message" th:each="error : ${#fields.errors('confirmPassword')}" th:text="${error}">Validation error</p>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success">Register</button>
                        <span>Already registered? <a href="/" th:href="@{/login}">Login
        here</a></span>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <script type="text/javascript" th:src="@{/webjars/jquery/3.2.1/jquery.min.js/}"></script>
    <script type="text/javascript" th:src="@{/webjars/bootstrap/3.3.7/js/bootstrap.min.js}"></script>
</body>
</html>