<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en" class="os-win">
    <head>
        <title>login</title>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta name="appName" content="nhome">
        <meta name="viewport" content="width=1324"/>
        <link rel="stylesheet" href="../assets/css/stylesloginpage.css"/>
        <link rel="stylesheet" href="../assets/css/textloginpage.css"/>
        <link rel="stylesheet" type="text/css" href="https://static.licdn.com/scds/concat/common/css?h=765zh9odycznutep5f0mj07m4-38so5ftc5lv2bbm0jf5rvv1qj-7mxyksftlcjzimz2r05hd289r-4uu2pkz5u0jch61r2nhpyyrn8-dxl1g2k3wk6qpss8oq9lwul9c-7poavrvxlvh0irzkbnoyoginp-4om4nn3a2z730xs82d78xj3be-mea0xb6thaagfbcx9i1vg82z-ct4kfyj4tquup0bvqhttvymms-3pwwsn1udmwoy3iort8vfmygt&amp;fc=1" />
        <link rel="canonical" href="https://www.linkedin.com/">
        <script type="text/javascript" src="https://static.licdn.com/scds/concat/common/js?h=3nuvxgwg15rbghxm1gpzfbya2-35e6ug1j754avohmn1bzmucat-mv3v66b8q0h1hvgvd3yfjv5f-14k913qahq3mh0ac0lh0twk9v-dfoaudjrk6rbf82f45bz5crwi-e9rsfv7b5gx0bk0tln31dx3sq-b88qxy99s08xoes3weacd08uc-di2107u61yb11ttimo0s2qyh2-3hnrwiauh2azwtx70po4t4dlr-8zc7dy7k0uqxxso1zmcx40mxo-a7br995b5xb4ztral63cjods4-1j5yeidfdiltik0gx4ekvcwvk-9wkskbn6s2q25rkbrnuwlqric-4zslye83akez5s4mf91hrq425-95d8d303rtd0n9wj4dcjbnh2c&amp;fc=1"></script>
        <script type="text/javascript" src="https://static.licdn.com/scds/concat/common/js?h=25kaepc6rgo1820ap1rglmzr4-dtx8oyvln9y03x1ku6t0abhc9-9yrlkzqdz2fq4zzcxtkisx0j2-edp77ghrpkbbons0amvyb2ejm-8ux0lklo90tb28s8gfw2ojhzb-5n5dp3pn32p4zstdag5cbpr1-eehwe5piqwg4elnl8jvj9vpx&amp;fc=1"></script>
        <script type="text/javascript" src="https://static.licdn.com/scds/concat/common/js?h=3xqgp8jf23j83i1nnx1yxga4o-78bwuml1uwwm9yb9sr3bw68qb-4izdpghi4r0b0uhhivo34xsvq-9a0rznn8mui615f4o75jq7hz2-dta7xzw3a1itnwo44eolyusn5-67xlf04tp198rsgnplkzm3mv0-9undj1hjru2i7vjjlqtb52ho2&amp;fc=1"></script>
        <script type="text/javascript" src="https://static.licdn.com/scds/concat/common/js?h=7vr4nuab43rzvy2pgq7yvvxjk-4yhpyv3p9r574wkkbe8kcd2ou&amp;fc=1"></script>
    </head>
    <body dir="ltr" class="guest v2 new-ghome login-in-header chrome-v5 chrome-v5-responsive sticky-bg guest" id="pagekey-guest-home">
       <div>
            <div  id="images">
                <img class="truckleft n1" src="../images/n1right.png">
                <img class="truckleft n2" src="../images/n3right.png">
                <img class="truckleft n3" src="../images/n4right.png">
                <img class="truckleft n4" src="../images/n5right.png">
                <img class="truckleft n12" src="../images/n5right.png">
                <img class="truckleft n5" src="../images/n6right.png">
                <img class="truckright n6" src="../images/n1left.png">
                <img class="truckright n7" src="../images/n2left.png">
                <img class="truckright n8" src="../images/n4left.png">
                <img class="truckright n9" src="../images/n6left.png">
                <img class="truckright n10" src="../images/n1left.png">
                <img class="truckright n11" src="../images/n2left.png">
            </div>
            <input id="inSlowConfig" type="hidden" value="false"/>
            <div id="header" style="width:100%; background-color: rgba(160,160,160,0.9);">
                <div class="container">
                    <h1><img src="images/logo_132x32_2.png" alt="LinkedIn" class="logo" height="32" width="132"></h1>
                    <p class="textad"></p>
                    <div class="login">
                        <form:form action="save" method="POST" name="login" novalidate="novalidate" id="login" class="ajax-form" data-jsenabled="check" modelAttribute="Owner">
                            <input type="hidden" name="isJsEnabled" value="false"/>
                            <input type="hidden" name="source_app" value=""/>
                            <fieldset style="margin-right: -31%; float: right;">
                                <legend>Sign In</legend>
                                <ul>
                                    <li>
                                        <label for="session_key-login">Email address</label>
                                        <div class="fieldgroup">
                                            <span class="error" id="session_key-login-error"></span>
                                            <form:input type="text" path="email" id="email" autofocus="true" tabindex="1" size="27" />
                                        </div>
                                    </li>
                                    <li>
                                        <label for="session_password-login">Password</label>
                                        <a href="" class="forgot-pwd" tabindex="4">Forgot your password?</a>
                                        <div class="fieldgroup">
                                            <span class="error" id="session_password-login-error"></span>
                                            <form:password path="password" id="password" tabindex="2" size="27" />
                                        </div>
                                    </li>
                                    <li class="button">
                                        <form:button type="submit" name="signin" value="Sign In" id="signin" tabindex="3" class="btn-secondary" />
                                    </li>
                                </ul>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
            <div id="main-wrapper">
                <div id="main">
                    <div id="global-error">
                    </div>
                    <header>
                        <div id="content">
                            <h2><span class="text-gradient"></span><span class="headline">
                                    Hello!<br>Welcome to Logistics Solutions
                                    </noscript></span></h2>
                        </div>
                    </header>
                    <section>
                        <div class="leo-module mod-feat jointoday" id="module-id3">
                            <div class="header"><h2>Please Sign Up &ndash; it&rsquo;s free.</h2>
                                <p>
                                    Registration takes less than few minutes.
                                </p></div>
                            <div class="content">

                                <form action="" method="POST" name="coldRegistrationForm" novalidate="novalidate" class="feature" data-jsenabled="check" id="guest-home-reg-form">
                                    <input type="hidden" name="isJsEnabled" value="false"/>
                                    <fieldset>
                                        <legend>Sign Up</legend>
                                        <ul>
                                            <li id="first-name">
                                                <label for="firstName-coldRegistrationForm">First name</label>
                                                <script id="control-http-12209-exec-458109-3" type="linkedin/control" class="li-control">LI.Controls.addControl('control-http-12209-exec-458109-3','GhostLabel',{});</script>
                                                <span class="error" id="firstName-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                                </div>
                                            </li>
                                            <li id="last-name">
                                                <label for="lastName-coldRegistrationForm">Last name</label>
                                                <script id="control-http-12209-exec-458109-4" type="linkedin/control" class="li-control">LI.Controls.addControl('control-http-12209-exec-458109-4','GhostLabel',{});</script>
                                                <span class="error" id="lastName-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <input type="text" name="lastName" value="" id="lastName-coldRegistrationForm" autocomplete="on" size="55" maxlength="40" tabindex="6">
                                                </div>
                                            </li>
                                            <li id="email-address">
                                                <label for="email-coldRegistrationForm">Email address</label>
                                                <script id="control-http-12209-exec-458109-5" type="linkedin/control" class="li-control">LI.Controls.addControl('control-http-12209-exec-458109-5','GhostLabel',{});</script>
                                                <span class="error" id="email-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <input type="email" name="email" value="" id="email-coldRegistrationForm" type="email" autocomplete="on" size="55" maxlength="128" tabindex="7" data-ime-mode-disabled>
                                                </div>
                                            </li>
                                            <li id="password">
                                                <label for="password-coldRegistrationForm">Password (6 or more characters)</label>
                                                <script id="control-http-12209-exec-458109-6" type="linkedin/control" class="li-control">LI.Controls.addControl('control-http-12209-exec-458109-6','GhostLabel',{});</script>
                                                <span class="error" id="password-coldRegistrationForm-error"></span>
                                                <div class="fieldgroup">
                                                    <input type="password" name="password" value="" id="password-coldRegistrationForm" tabindex="8">
                                                </div>
                                            </li>
                                        </ul>
                                        <input type="hidden" name="trk" value="guest_home_login"/>
                                        <div class="form-bottom-row">
                                            <p class="policy">
                                                By clicking Join Now, you agree to Utilader's <a href="">User Agreement</a>.
                                            </p>

                                            <input type="submit" name="" value="Join now" id="btn-submit" class="btn-action" tabindex="9">
                                        </div>
                                    </fieldset>
                                    <div class="progress-indicator"></div>
                                    <input type="hidden" name="webmailImport" value="false" id="webmailImport-coldRegistrationForm"><input type="hidden" name="trcode" value="" id="trcode-coldRegistrationForm"><input type="hidden" name="genie-reg" value="" id="genie-reg-coldRegistrationForm"><input type="hidden" name="mod" value="" id="mod-coldRegistrationForm"><input type="hidden" name="regCsrfParam" value="32c94c75-404b-4f6c-83dd-2e428b1ad315" id="regCsrfParam-coldRegistrationForm"><input type="hidden" name="csrfToken" value="ajax:7676804765255527872" id="csrfToken-coldRegistrationForm"><input type="hidden" name="sourceAlias" value="0_2Ru1i2uo3MoRjeCeicT3Nl" id="sourceAlias-coldRegistrationForm">
                                </form>
                                <script id="control-http-12209-exec-458110-7" type="linkedin/control" class="li-control">LI.Controls.addControl('control-http-12209-exec-458110-7','RegisterForm',{});</script>
                            </div></div>
                    </section>
                </div>
            </div>
            <script type="text/javascript">LI_WCT(["control-http-12209-exec-458108-1", "control-http-12209-exec-458109-3", "control-http-12209-exec-458109-4", "control-http-12209-exec-458109-5", "control-http-12209-exec-458109-6", "control-http-12209-exec-458110-7", "control-http-12209-exec-458111-8", "control-http-12209-exec-458111-9", ]);</script>
    </body>
</html>
