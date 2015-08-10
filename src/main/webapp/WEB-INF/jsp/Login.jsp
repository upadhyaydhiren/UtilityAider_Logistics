<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <title>login</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/stylesloginpage.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/textloginpage.css"/>
        <link rel="stylesheet" type="text/css" href="https://static.licdn.com/scds/concat/common/css?h=765zh9odycznutep5f0mj07m4-38so5ftc5lv2bbm0jf5rvv1qj-7mxyksftlcjzimz2r05hd289r-4uu2pkz5u0jch61r2nhpyyrn8-dxl1g2k3wk6qpss8oq9lwul9c-7poavrvxlvh0irzkbnoyoginp-4om4nn3a2z730xs82d78xj3be-mea0xb6thaagfbcx9i1vg82z-ct4kfyj4tquup0bvqhttvymms-3pwwsn1udmwoy3iort8vfmygt&amp;fc=1" />
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
                                        <label for="session_key-login">Email address</label>
                                        <div class="fieldgroup">
                                            <form:input type="text" path="email" id="email" autofocus="true" tabindex="1" size="27" />
                                            <span class="error" id="session_key-login-error"></span>
                                        </div>
                                    </li>
                                    <li>
                                        <label for="session_password-login">Password</label>
                                        <a href="" class="forgot-pwd" tabindex="4">Forgot your password?</a>
                                        <div class="fieldgroup">
                                            <form:password path="password" id="password" tabindex="2" size="27" />
                                            <span class="error" id="session_password-login-error"></span>
                                        </div>
                                    </li>
                                    <li class="button">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <form:button type="submit" name="signin" id="signin" tabindex="3" class="btn-secondary" >Sign In</form:button>
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
                                <form:form action="registration" method="POST" name="coldRegistrationForm" novalidate="novalidate" class="feature" data-jsenabled="check" id="guest-home-reg-form" modelAttribute="owner">
                                    <input type="hidden" name="isJsEnabled" value="false"/>
                                    <fieldset>
                                        <legend>Sign Up</legend>
                                        <ul>
                                            <li id="first-name">
                                                <label for="firstName-coldRegistrationForm">First name</label>
                                                <span class="error" id="firstName-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <form:input type="text" path="firstName" value="" id="firstName-coldRegistrationForm" autocomplete="on" size="55" maxlength="20" tabindex="5" />
                                                </div>
                                            </li>
                                            <li id="last-name">
                                                <label for="lastName-coldRegistrationForm">Last name</label>
                                                <span class="error" id="lastName-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <form:input type="text" path="lastName" value="" id="lastName-coldRegistrationForm" autocomplete="on" size="55" maxlength="40" tabindex="6" />
                                                </div>
                                            </li>
                                            <li id="email-address">
                                                <label for="email-coldRegistrationForm">Email address</label>
                                                <span class="error" id="email-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <form:input type="email" path="email" value="" id="email-coldRegistrationForm" type="email" autocomplete="on" size="55" maxlength="128" tabindex="7" />

                                                </div>
                                            </li>
                                            <li id="password">
                                                <label for="password-coldRegistrationForm">Password (6 or more characters)</label>
                                                <span class="error" id="password-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <form:password path="password" value="" id="password-coldRegistrationForm" tabindex="8" />
                                                </div>
                                            </li>
                                            <li>
                                                <span class="error" id="signup-error">${message}</span>
                                            </li>
                                        </ul>
                                        <input type="hidden" name="trk" value="guest_home_login"/>
                                        <div class="form-bottom-row">
                                            <p class="policy">
                                                By clicking Join Now, you agree to Utilader's <a href="">User Agreement</a>.
                                            </p>
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <input type="submit" name="" value="Join now" id="btn-submit" class="btn-action" tabindex="9">
                                        </div>
                                    </fieldset>
                                    <div class="progress-indicator"></div>
                                </form:form>
                                </section>
                            </div>
                        </div>
                        </body>
                        </html>
