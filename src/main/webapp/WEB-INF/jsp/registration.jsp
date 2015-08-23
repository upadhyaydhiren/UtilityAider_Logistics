<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>Registration Page</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />    
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/text-button.css">    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style_01.css">
    <script src="http://pincodes.co.in/public/scripts/pincode.js" type="text/javascript" language="javascript"></script>

</head>


<body style="background-color:#e6e6e6" class="guest v2 new-ghome login-in-header chrome-v5 chrome-v5-responsive sticky-bg guest" id="pagekey-guest-home" onload="load_pincode('RP-PIN-351', 'state', '0', '0', '0', '0');">
    <nav class="navbar navbar-default header">
        <div class="container-fluid" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="width:400px" href="#">Utilader</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="nav navbar-nav" >
                    <li><a href="Home.html" style="left:0px"><font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Home</font></a><li>
                    <li><a href="Profile.html" style="left:40px"><font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Profile</font></a></li>
                    <li><a href="ViewPost.html" style="left:60px"><font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">View/Post</font></a></li>
                    <li><a href="Tracker.html" style="left:100px"><font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Track</font></a></li>
                </div>
            </div>
    </nav>

    <div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:5px">
        <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9);" ><font face="Open Sans"><h4>Registration</h4></font></div>
    </div>
    <div class="container" style="background-color:#ffffff;width:50%;margin-top:0%;">
        <div class="col-md-8 md-offset-7" style="background-color: #ffffff; margin-top:0.1%;margin-left:7%" >
            <div class="wrapper">
                <div id="global-error">
                </div>
                <div id="main" class="establish-profile employed">

                    <div id="register-global-error"></div>

                    <ul style="display:none;">
                        <!-- /status-chooser-container -->
                    </ul>
                    <div id="control_ge">

                        <form:form  id="form" class="standard-form sided looking stacked-form" modelAttribute="owner" method="post">
                            <div class="">
                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">I am currently</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="stakeholdersList"></span>
                                        <form:select path="">
                                            <form:options items="${entityList}" />
                                        </form:select>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Email</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input type="email" path="email" pattern="" title="" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">PAN Number</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="panNumber" pattern="" title="" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Company Name</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="companyName" />
                                        </div>
                                    </div>
                                </div>


                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Industry</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="industyList"></span>
                                        <form:select path="">
                                            <form:options />
                                        </form:select>
                                    </div>
                                </div>

                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:15px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Employees</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="noOfEmployee" />
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Trucks</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="noOfVehicles" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Businesss</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="businessType"/>
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Transporter Reference</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="userReferanceCode" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Country</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path=""/>
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*State</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >
                                            <select id="state" onChange="load_pincode('RP-PIN-351', 'state', 'city', '0', this.value, '1');">
                                                <option value="">Select State</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*City</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >
                                            <select id="city" onChange="load_pincode('RP-PIN-351', 'state', 'city', 'pincode', this.value, '2')">
                                                <option value="">Select City</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Postal Code</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >
                                            <p id="pincode"><input type="text" name="pincode" id="pincode" class="textfield" onBlur="load_pincode('RP-PIN-351', 'state', 'city', 'pincode', this.value, '3')"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Address</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <textarea type="text" name="address" id="address" class="span6" style="margin-top:10px;height:40px" autocomplete="on" size="55" maxlength="20" tabindex="5"></textarea>

                                            <button type="submit" name="" value="Register" style="right:150px;margin-top:10px;background-color:yellow"id="createMyProfileButton" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal;font-size:16px">Register</font></button>

                                        </div></div>
                                </div>


                            </div>
                            <input name="jsEnabled" value="" id="jsEnabled-lookingProfileForm" type="hidden"><input name="fandango" value="" id="fandango-lookingProfileForm" type="hidden"><input name="headline" value="" id="headline-lookingProfileForm" type="hidden"><input name="companyID" value="" id="companyID-companyInfo-employeeCompany-lookingProfileForm" type="hidden"><input name="csrfToken" value="ajax:2298438094994449988" id="csrfToken-lookingProfileForm" type="hidden"><input name="sourceAlias" value="0_2nuweabSjU-BOy1HFto4tRsrgPtss1-6iUJGlP4cF4r" id="sourceAlias-lookingProfileForm" type="hidden"><input name="flow" value="1ofgqp7-16k61ld" id="flow-lookingProfileForm" type="hidden">


                        </form:form>>
                    </div>
                </div>
            </div>
        </div></div>


    <footer class="footer" style="width:100%;margin:0px;height:100px">
        <div class="container" style="width:100%">
            <p class="text-muted">Place your FOOTER CONTENTS content here.</p>
        </div>
    </footer>
</body>
