<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
    <style type='text/css' media='screen'>
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }

    #login .inner {
        width: 340px;
        padding-bottom: 6px;
        margin: 60px auto;
        text-align: left;
        border: 1px solid #aab;
        background-color: #f0f0fa;
        -moz-box-shadow: 2px 2px 2px #eee;
        -webkit-box-shadow: 2px 2px 2px #eee;
        -khtml-box-shadow: 2px 2px 2px #eee;
        box-shadow: 2px 2px 2px #eee;
    }

    #login .inner .fheader {
        padding: 18px 26px 14px 26px;
        background-color: #f7f7ff;
        margin: 0px 0 14px 0;
        color: #2e3741;
        font-size: 18px;
        font-weight: bold;
    }

    #login .inner .cssform p {
        clear: left;
        margin: 0;
        padding: 4px 0 3px 0;
        padding-left: 105px;
        margin-bottom: 20px;
        height: 1%;
    }

    #login .inner .cssform input[type='text'] {
        width: 120px;
    }

    #login .inner .cssform label {
        font-weight: bold;
        float: left;
        text-align: right;
        margin-left: -105px;
        width: 110px;
        padding-top: 3px;
        padding-right: 10px;
    }

    #login #remember_me_holder {
        padding-left: 120px;
    }

    #login #submit {
        margin-left: 15px;
    }

    #login #remember_me_holder label {
        float: none;
        margin-left: 0;
        text-align: left;
        width: 200px
    }

    #login .inner .login_message {
        padding: 6px 25px 20px 25px;
        color: #c33;
    }

    #login .inner .text_ {
        width: 120px;
    }

    #login .inner .chk {
        height: 12px;
    }
    </style>
</head>

<body>
<div class="container">

    <form class="form-signin" action='${postUrl}' method='POST' id='loginForm' autocomplete="off">
        <h2 class="form-signin-heading"><g:message code="pasaporte.emprendedor.login.header.label"/></h2>
        <g:if test='${flash.message}'>
            <div class='alert alert-danger' role="alert">${flash.message}</div>
        </g:if>
        <label class="sr-only" for="username"><g:message code="springSecurity.login.username.label"/>:</label>
        <input class="form-control" name="j_username" id="username" autofocus="" required="" type="text" placeholder="${message(code: "springSecurity.login.username.label")}">
        <label class="sr-only" for="password"><g:message code="springSecurity.login.password.label"/>:</label>
        <input class="form-control" name='j_password' id="password" required="" type="password" placeholder="${message(code: "springSecurity.login.password.label")}">
        <div class="checkbox">
            <label for='remember_me'>
                <input type="checkbox" value="remember-me" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>>
                <g:message code="springSecurity.login.remember.me.label"/>
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" id="submit" value='${message(code: "springSecurity.login.button")}'>
            <g:message code="springSecurity.login.button"/>
        </button>
    </form>

</div>
<script type='text/javascript'>
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</script>
</body>
</html>
