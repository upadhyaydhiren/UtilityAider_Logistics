<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>login</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/stylesloginpage.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/textloginpage.css"/>
        <link rel="stylesheet" type="text/css" href="https://static.licdn.com/scds/concat/common/css?h=765zh9odycznutep5f0mj07m4-38so5ftc5lv2bbm0jf5rvv1qj-7mxyksftlcjzimz2r05hd289r-4uu2pkz5u0jch61r2nhpyyrn8-dxl1g2k3wk6qpss8oq9lwul9c-7poavrvxlvh0irzkbnoyoginp-4om4nn3a2z730xs82d78xj3be-mea0xb6thaagfbcx9i1vg82z-ct4kfyj4tquup0bvqhttvymms-3pwwsn1udmwoy3iort8vfmygt&amp;fc=1" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <meta name="_csrf" content="${_csrf.token}"/>
        <meta name="_csrf_header" content="${_csrf.headerName}"/>
        <style>
            :required {
                background-color: lightyellow;
            }
            .touched:required:valid {
                background-color:white;
            }
            .touched:required:invalid {
                background-color: pink;
            }
        </style>
    </head>
    <body dir="ltr" class="guest v2 new-ghome login-in-header chrome-v5 chrome-v5-responsive sticky-bg guest" id="pagekey-guest-home">
        <div>          
            <div id="header">
                <div class="container">
                    <div class="login">
                        <form:form action="j_spring_security_check" method="POST" name="login" id="login" modelAttribute="owner">
                            <fieldset style="margin-right: -31%; float: right;">
                                <legend>Sign In</legend>
                                <ul>
                                    <li>
                                        <div class="fieldgroup">
                                            <form:input path="email" id="email" autofocus="true" tabindex="1" size="27" placeholder="Email address/Mobile no"/>
                                        </div>
                                        <span class="error" id="login-error">${loginMessage}</span>
                                    </li>
                                    <li>                                            
                                        <div class="fieldgroup">
                                            <form:password path="password" id="password" tabindex="2" size="27" placeholder="Password"/>
                                        </div>
                                        <a href="" class="forgot-pwd" tabindex="4">Forgot your password?</a>
                                    </li>
                                    <li >
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <form:button type="submit" name="signin" id="signin" tabindex="3" class="btn-action" >Sign In</form:button>
                                        </li>                                       
                                    </ul>
                                </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
            <div id="main-wrapper">
                <div id="main">
                    <section>
                        <div class="leo-module mod-feat jointoday" id="module-id3">
                            <div class="header"><h2>Please Sign Up &ndash; it&rsquo;s free.</h2>
                                <p>
                                    Registration takes less than few minutes.
                                </p></div>
                            <div class="content">
                                <form:form action="registration" method="POST" name="coldRegistrationForm" modelAttribute="owner">
                                    <legend>Sign Up</legend>
                                    <ul>
                                        <li id="first-name">
                                            <label for="firstName-coldRegistrationForm">First name</label>
                                            <span class="error" id="firstName-coldRegistrationForm-error"></span>
                                            <div class="fieldgroup">
                                                <form:input path="firstName" oninvalid="this.setCustomValidity('First Name is only alphabet accept')" value="" id="firstName-coldRegistrationForm" pattern="[A-Za-z]{2,50}" tabindex="5" required="required" oninput="setCustomValidity('')" />
                                            </div>
                                        </li>
                                        <li id="last-name">
                                            <label for="lastName-coldRegistrationForm">Last name</label>
                                            <span class="error" id="lastName-coldRegistrationForm-error"></span>
                                            <div class="fieldgroup">
                                                <form:input path="lastName"  oninvalid="this.setCustomValidity('Last Name is only alphabet accept')" value="" id="lastName-coldRegistrationForm" pattern="[A-Za-z]{2,50}" tabindex="6" required="required" oninput="setCustomValidity('')" />
                                            </div>
                                        </li>
                                        <li id="email-address">
                                            <label for="email-coldRegistrationForm">Mobile no</label>
                                            <span class="error" id="mobile-coldRegistrationForm-error"></span>
                                            <div class="fieldgroup">
                                                <form:input path="mobile" value="" oninvalid="this.setCustomValidity('Only Idian mobile number accept')" oninput="setCustomValidity('')" id="mobile-coldRegistrationForm" pattern="[7-9][0-9]{9}" tabindex="7" onblur="usernameExists(this);" required="required" />
                                            </div>
                                        </li>
                                        <li id="password">
                                            <label for="password-coldRegistrationForm">Password (6 or more characters)</label>
                                            <span class="error" id="password-coldRegistrationForm-error"></span>
                                            <div class="fieldgroup">
                                                <form:password path="password" oninvalid="this.setCustomValidity('Password should be alphanumeric')" value="" id="password-coldRegistrationForm" tabindex="8" pattern="[a-zA-Z0-9]){6,}" required="required" />
                                            </div>
                                        </li>
                                        <li>
                                            <span class="error" id="signup-error">${registrationMessage}</span>
                                        </li>
                                    </ul>
                                    <div class="form-bottom-row">
                                        <p class="policy">
                                            By clicking Join Now, you agree to Utilader's <a href="">User Agreement</a>.
                                        </p>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <input type="submit" name="" value="Join now" id="btn-submit" class="btn-action" tabindex="9">
                                    </div>
                                    <div class="progress-indicator"></div>
                                </form:form>
                                </section>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(':required').one('blur keydown', function () {
                                $(this).addClass('touched');
                            });
                        </script>
                        <script type="text/javascript">
                            function usernameExists(username)
                            {
                                var url = "<c:url value="/usernameExists/"/>" + username.value;
                                console.log(url);
                                if (username.value !== '')
                                {
                                    $.ajax({
                                        mimeType: "application/json",
                                        type: "POST",
                                        url: url,
                                        success: function (data) {
                                            console.log(data);
                                            if (data === false) {
                                                username.value = "";
                                                alert("Your Mobile no is already registered");
                                            }
                                        },
                                        error: function (event) {

                                            console.log(event.responseText);

                                        }
                                    });
                                }
                            }
                        </script>
                        <script type="text/javascript">
                            function validate(obj)
                            {
                                if (!obj.checkValidity())
                                {
                                    obj.value = '';
                                }
                            }
                        </script>
                        <style type="text/css">
                            .error {
                                color: red; font-weight: bold;
                            }
                        </style>
                        </body>
                        </html>