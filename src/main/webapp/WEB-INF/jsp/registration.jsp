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

                        <form  id="form" class="standard-form sided looking stacked-form">
                            <div class="">
                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">I am currently</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="stakeholdersList"></span>
                                        <select name="countryCode" id="stakeholdersListDropdown" style="margin-top:5px;height:30px" class="country-select" >
                                            <option value="Transporter">Transporter</option>
                                            <option value="Broker">Broker</option>
                                            <option value="ca">Comission Agent</option>
                                            <option value="fo">Fleet Owner</option>
                                            <option value="gc">General Customer</option>
                                            <option value="e/o">Exporter/Importer</option>
                                            <option value="manufacturer">Manufacturer</option>
                                            <option value="p&m">Packers&Movers</option>
                                            <option value="contractor">Contractor</option>
                                            <option value="retailer">Retailer</option>
                                            <option value="ws">Wholeseller</option>
                                            <option value="to">Truck Owner</option>
                                            <option value="supplier">Supplier</option>
                                            <option value="builder">Builder</option>
                                            <option value="driver">Driver</option>
                                            <option value="farmer">Farmer</option>
                                            <option value="fci">FCI</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="">
                                    <label for="" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Postal Code</font>
                                    </label>
                                    <div class="fieldgroup ">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="postalCode" value="" id="postalCode" style="margin-top:10px"autocomplete="on" placeholder="eg.201301"size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Email</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="email" value="" id="email" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">PAN Number</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <input type="text" name="panNumber" value="" id="panNumber" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Company Name</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >
                                            <input type="text" name="companyName" value="" id="companyName" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>


                                <div class="country required" style="height:-20px">
                                    <label for="postalCode-location-lookingProfileForm" style ="position:absolute;margin-top:10px"class="">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">*Industry</font>
                                    </label>
                                    <div class="fieldgroup"
                                         <span class="error" id="industyList"></span>
                                        <select name="countryCode" id="industyListDropdown"  style=" margin-top:10px;height:30px"class="country-select" >
                                            <option value="India" selected="">Logistics and Supply Chain</option><option value="ax">Aland Islands</option><option value="al">Albania</option><option value="dz">Algeria</option><option value="as">American Samoa</option><option value="ad">Andorra</option><option value="ao">Angola</option><option value="ai">Anguilla</option><option value="aq">Antarctica</option><option value="ag">Antigua and Barbuda</option><option value="ar">Argentina</option><option value="am">Armenia</option><option value="aw">Aruba</option><option value="au">Australia</option><option value="at">Austria</option><option value="az">Azerbaijan</option><option value="bs">Bahamas</option><option value="bh">Bahrain</option><option value="bd">Bangladesh</option><option value="bb">Barbados</option><option value="by">Belarus</option><option value="be">Belgium</option><option value="bz">Belize</option><option value="bj">Benin</option><option value="bm">Bermuda</option><option value="bt">Bhutan</option><option value="bo">Bolivia</option><option value="ba">Bosnia and Herzegovina</option><option value="bw">Botswana</option><option value="bv">Bouvet Island</option><option value="br">Brazil</option><option value="io">British Indian Ocean Territory</option><option value="bn">Brunei Darussalam</option><option value="bg">Bulgaria</option><option value="bf">Burkina Faso</option><option value="bi">Burundi</option><option value="kh">Cambodia</option><option value="cm">Cameroon</option><option value="ca">Canada</option><option value="cv">Cape Verde</option><option value="cb">Caribbean Nations</option><option value="ky">Cayman Islands</option><option value="cf">Central African Republic</option><option value="td">Chad</option><option value="cl">Chile</option><option value="cn">China</option><option value="cx">Christmas Island</option><option value="cc">Cocos (Keeling) Islands</option><option value="co">Colombia</option><option value="km">Comoros</option><option value="cg">Congo</option><option value="ck">Cook Islands</option><option value="cr">Costa Rica</option><option value="ci">Cote D'Ivoire (Ivory Coast)</option><option value="hr">Croatia</option><option value="cu">Cuba</option><option value="cy">Cyprus</option><option value="cz">Czech Republic</option><option value="cd">Democratic Republic of the Congo</option><option value="dk">Denmark</option><option value="dj">Djibouti</option><option value="dm">Dominica</option><option value="do">Dominican Republic</option><option value="tp">East Timor</option><option value="ec">Ecuador</option><option value="eg">Egypt</option><option value="sv">El Salvador</option><option value="gq">Equatorial Guinea</option><option value="er">Eritrea</option><option value="ee">Estonia</option><option value="et">Ethiopia</option><option value="fk">Falkland Islands (Malvinas)</option><option value="fo">Faroe Islands</option><option value="fm">Federated States of Micronesia</option><option value="fj">Fiji</option><option value="fi">Finland</option><option value="fr">France</option><option value="gf">French Guiana</option><option value="pf">French Polynesia</option><option value="tf">French Southern Territories</option><option value="ga">Gabon</option><option value="gm">Gambia</option><option value="ge">Georgia</option><option value="de">Germany</option><option value="gh">Ghana</option><option value="gi">Gibraltar</option><option value="gr">Greece</option><option value="gl">Greenland</option><option value="gd">Grenada</option><option value="gp">Guadeloupe</option><option value="gu">Guam</option><option value="gt">Guatemala</option><option value="gg">Guernsey</option><option value="gn">Guinea</option><option value="gw">Guinea-Bissau</option><option value="gy">Guyana</option><option value="ht">Haiti</option><option value="hm">Heard Island and McDonald Islands</option><option value="hn">Honduras</option><option value="hk">Hong Kong</option><option value="hu">Hungary</option><option value="is">Iceland</option><option value="id">Indonesia</option><option value="ir">Iran</option><option value="iq">Iraq</option><option value="ie">Ireland</option><option value="im">Isle of Man</option><option value="il">Israel</option><option value="it">Italy</option><option value="jm">Jamaica</option><option value="je">Jersey</option><option value="jo">Jordan</option><option value="kz">Kazakhstan</option><option value="ke">Kenya</option><option value="ki">Kiribati</option><option value="kr">Korea</option><option value="kp">Korea (North)</option><option value="ko">Kosovo</option><option value="kw">Kuwait</option><option value="kg">Kyrgyzstan</option><option value="la">Laos</option><option value="lv">Latvia</option><option value="lb">Lebanon</option><option value="ls">Lesotho</option><option value="lr">Liberia</option><option value="ly">Libya</option><option value="li">Liechtenstein</option><option value="lt">Lithuania</option><option value="lu">Luxembourg</option><option value="mo">Macao</option><option value="mk">Macedonia</option><option value="mg">Madagascar</option><option value="mw">Malawi</option><option value="my">Malaysia</option><option value="mv">Maldives</option><option value="ml">Mali</option><option value="mt">Malta</option><option value="mh">Marshall Islands</option><option value="mq">Martinique</option><option value="mr">Mauritania</option><option value="mu">Mauritius</option><option value="yt">Mayotte</option><option value="mx">Mexico</option><option value="md">Moldova</option><option value="mc">Monaco</option><option value="mn">Mongolia</option><option value="me">Montenegro</option><option value="ms">Montserrat</option><option value="ma">Morocco</option><option value="mz">Mozambique</option><option value="mm">Myanmar</option><option value="na">Namibia</option><option value="nr">Nauru</option><option value="np">Nepal</option><option value="nl">Netherlands</option><option value="an">Netherlands Antilles</option><option value="nc">New Caledonia</option><option value="nz">New Zealand</option><option value="ni">Nicaragua</option><option value="ne">Niger</option><option value="ng">Nigeria</option><option value="nu">Niue</option><option value="nf">Norfolk Island</option><option value="mp">Northern Mariana Islands</option><option value="no">Norway</option><option value="pk">Pakistan</option><option value="pw">Palau</option><option value="ps">Palestinian Territory</option><option value="pa">Panama</option><option value="pg">Papua New Guinea</option><option value="py">Paraguay</option><option value="pe">Peru</option><option value="ph">Philippines</option><option value="pn">Pitcairn</option><option value="pl">Poland</option><option value="pt">Portugal</option><option value="pr">Puerto Rico</option><option value="qa">Qatar</option><option value="re">Reunion</option><option value="ro">Romania</option><option value="ru">Russian Federation</option><option value="rw">Rwanda</option><option value="gs">S. Georgia and S. Sandwich Islands</option><option value="sh">Saint Helena</option><option value="kn">Saint Kitts and Nevis</option><option value="lc">Saint Lucia</option><option value="pm">Saint Pierre and Miquelon</option><option value="vc">Saint Vincent and the Grenadines</option><option value="ws">Samoa</option><option value="sm">San Marino</option><option value="st">Sao Tome and Principe</option><option value="sa">Saudi Arabia</option><option value="sn">Senegal</option><option value="rs">Serbia</option><option value="cs">Serbia and Montenegro</option><option value="sc">Seychelles</option><option value="sl">Sierra Leone</option><option value="sg">Singapore</option><option value="sk">Slovak Republic</option><option value="si">Slovenia</option><option value="sb">Solomon Islands</option><option value="so">Somalia</option><option value="za">South Africa</option><option value="ss">South Sudan</option><option value="es">Spain</option><option value="lk">Sri Lanka</option><option value="sd">Sudan</option><option value="om">Sultanate of Oman</option><option value="sr">Suriname</option><option value="sj">Svalbard and Jan Mayen</option><option value="sz">Swaziland</option><option value="se">Sweden</option><option value="ch">Switzerland</option><option value="sy">Syria</option><option value="tw">Taiwan</option><option value="tj">Tajikistan</option><option value="tz">Tanzania</option><option value="th">Thailand</option><option value="tl">Timor-Leste</option><option value="tg">Togo</option><option value="tk">Tokelau</option><option value="to">Tonga</option><option value="tt">Trinidad and Tobago</option><option value="tn">Tunisia</option><option value="tr">Turkey</option><option value="tm">Turkmenistan</option><option value="tc">Turks and Caicos Islands</option><option value="tv">Tuvalu</option><option value="ug">Uganda</option><option value="ua">Ukraine</option><option value="ae">United Arab Emirates</option><option value="gb">United Kingdom</option><option value="uy">Uruguay</option><option value="uz">Uzbekistan</option><option value="vu">Vanuatu</option><option value="va">Vatican City State (Holy See)</option><option value="ve">Venezuela</option><option value="vn">Vietnam</option><option value="vg">Virgin Islands (British)</option><option value="vi">Virgin Islands (U.S.)</option><option value="wf">Wallis and Futuna</option><option value="eh">Western Sahara</option><option value="ye">Yemen</option><option value="yu">Yugoslavia</option><option value="zm">Zambia</option><option value="zw">Zimbabwe</option><option value="oo">Other</option></select>
                                    </div>
                                </div>

                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:15px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Employees</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="numberOfEmployees" value="" id="numberOfEmployees" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Number of Trucks</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="numberOfTrucks" value="" id="numberOfTrucks" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm" style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Businesss</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="business" value="" id="business" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div></div>
                                </div>
                                <div class="job-title required">
                                    <label for="workCompanyTitle-lookingProfileForm "style ="position:absolute;margin-top:10px">
                                        <font style="font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="2">Transporter Reference</font>
                                    </label>
                                    <div class="fieldgroup">
                                        <div class="leo-module mod-feat jointoday" >

                                            <input type="text" name="transporterReference" value="" id="transporterReference" style="margin-top:10px" autocomplete="on" size="55" maxlength="20" tabindex="5">
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


                        </FORM>
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













