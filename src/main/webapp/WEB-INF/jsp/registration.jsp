<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>
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
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
    <script src="http://ubilabs.github.io/geocomplete/jquery.geocomplete.js" type="text/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>


<body style="background-color:#e6e6e6" class="guest v2 new-ghome login-in-header chrome-v5 chrome-v5-responsive sticky-bg guest" id="pagekey-guest-home">
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

                        <form:form id="form" action="updateprofle" method="POST"  class="standard-form sided looking stacked-form" modelAttribute="owner">
                            <form:hidden path="id" value="${owner.id}" />
                            <div class="">
                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">I am currently</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="stakeholdersList"></span>
                                        <form:select path="userEntities[0].basicUserEntity.id" id="stakeholdersListDropdown" style="margin-top:5px;height:30px" class="country-select" tabindex="1" required="required">
                                            <form:options items="${entityList}" itemLabel="entityType" itemValue="id"/>
                                        </form:select>
                                        <form:hidden path="userEntities[0].user.id" value="${owner.id}" />
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Email</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input type="email" path="email" id="email" cssStyle="margin-top:10px" tabindex="2" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.([a-zA-Z]{2,10}|[a-zA-z]{2,10}\.[a-zA-Z]{2,10})" oninvalid="this.setCustomValidity('Email is not valid')" oninput="this.setCustomValidity('');" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">PAN Number</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="panNumber" id="panNumber" cssStyle="margin-top:10px" tabindex="3" pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" oninvalid="this.setCustomValidity('Only Indian Pan Number is allowed ')" oninput="this.setCustomValidity('');"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Company Name</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="companyName" id="companyName" cssStyle="margin-top:10px" tabindex="4" pattern="[a-zA-Z]{2,}" oninvalid="this.setCustomValidity('Only Alphabets are allowed')" oninput="this.setCustomValidity('');" />
                                        </div>
                                    </div>
                                </div>


                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Industry</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="industyList"></span>
                                        <form:select path="usersIndustrys[0].businessIndustry.id" id="industyListDropdown"  cssStyle=" margin-top:10px;height:30px" cssClass="country-select" tabindex="5">
                                            <form:options items="${industryList}" itemLabel="industryName" itemValue="id"/>
                                        </form:select>
                                        <form:hidden path="usersIndustrys[0].user.id" value="${owner.id}" />
                                    </div>
                                </div>

                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:15px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Employees</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="noOfEmployee" id="numberOfEmployees" cssStyle="margin-top:10px" tabindex="6" pattern="[0-9]{1,}" oninvalid="this.setCustomValidity('Only Number is allowed')" oninput="this.setCustomValidity('');" />
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Trucks</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="noOfVehicles" id="numberOfTrucks" style="margin-top:10px" tabindex="7" pattern="[0-9]{1,}" oninvalid="this.setCustomValidity('Only Number is allowed')" oninput="this.setCustomValidity('');" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Businesss</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="businessType" id="business" style="margin-top:10px" tabindex="7" pattern="[a-zA-Z]{2,}" oninvalid="this.setCustomValidity('Only Alphabets are allowed')" oninput="this.setCustomValidity('');"  />
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Transporter Reference</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="userReferanceCode" name="transporterReference" id="transporterReference" cssStyle="margin-top:10px" tabindex="8"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Address</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:textarea path="address.streetName" id="address" cssClass="span6" cssStyle="margin-top:10px;height:40px" tabindex="9" />
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*City</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="address.city" id="city" name="city" cssStyle="margin-top:10px" tabindex="10" pattern="[a-zA-Z]{2,}" oninvalid="this.setCustomValidity('Only Alphabets are allowed')" oninput="this.setCustomValidity('');" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*State</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >
                                            <form:input path="address.state" name="state" id="state" cssStyle="margin-top:10px" tabindex="11" pattern="[a-zA-Z]{2,}" oninvalid="this.setCustomValidity('Only Alphabets are allowed')" oninput="this.setCustomValidity('');"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Country</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday">
                                            <form:input path="address.country" name="country" id="country" cssStyle="margin-top:10px" tabindex="12" pattern="[a-zA-Z]{2,}" oninvalid="this.setCustomValidity('Only Alphabets are allowed')" oninput="this.setCustomValidity('');" />
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Postal Code</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday">
                                            <form:input path="address.pincode" value="" id="pincode" name="pincode" style="margin-top:10px" tabindex="13" pattern="[1-9]{1}[0-9]{5}" oninvalid="this.setCustomValidity('Only Indian Postal Code are allowed ')" oninput="this.setCustomValidity('');" />
                                            <input type="submit" name="" value="Register" id="btn-submit" class="btn-action" tabindex="14">
                                        </div>
                                    </div>
                                    <form:hidden path="address.latitude" id="lat"  />
                                    <form:hidden path="address.longitude" id="longt" />
                                    <form:hidden path="address.id" />
                                </div>
                            </div>
                        </form:form>>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer" style="width:100%;margin:0px;height:100px">
        <div class="container" style="width:100%">
            <p class="text-muted">Place your FOOTER CONTENTS content here.</p>
        </div>
    </footer>
</body>
<style type="text/css">
    div.pac-container {
        z-index: 1050 !important;
    }
</style>
<script type="text/javascript">
    $(function ()
    {
        var options =
                {
                    types: ['(cities)'],
                    componentRestrictions: {country: ["in"]}
                };
        $("#city").geocomplete(options)
                .bind("geocode:result", function (event, result)
                {
                    $.each(result.address_components, function (index, object)
                    {
                        $.each(object.types, function (index, name)
                        {
                            switch (name)
                            {
                                case "administrative_area_level_2":
                                    $('#city').val(object.long_name);
                                    return false;

                                case "administrative_area_level_1":
                                    $('#state').val(object.long_name);
                                    return false;

                                case "country":
                                    $('#country').val(object.long_name);
                                    return false;

                                case "postal_code":
                                    $('#pincode').val(object.short_name);
                                    return false;

                                default :
                                    return false;

                            }
                        });
                    });
                    $('#lat').val(result.geometry.location.lat());
                    $('#longt').val(result.geometry.location.lng());
                });
    });
</script>
</html>