<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>Eco Trucks | Profile Page</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">        
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/text-button.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/common.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/examples.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/circle-progress.js"></script>
</head>
<body style="background-color:#E6E6E6"class="guest v2 new-ghome login-in-header chrome-v5 chrome-v5-responsive sticky-bg guest" >
    <nav class="navbar navbar-default header" style="margin-bottom:5px;background-color:yellow;">
        <div class="container-fluid" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="width:400px;margin-top:0px;padding:0px;background-color:yellow" href="#"><img src="${pageContext.request.contextPath}/resources/images/logo.png" style="margin-top:5px;margin-left:80px;width:200px;height:45px"></img></a></div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="nav navbar-nav" >
                    <li><a href="Home.html" style=";width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Home</font></a></li>
                    <li style="left:30px"><a href="Profile.html" style=";width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Profile</font></a></li>
                    <li style="left:60px;width:100px"><a href="ViewPost.html" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">View/Post</font></a></li>

                    <li style="left:90px;width:100px"><a href="Tracker.html" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Track</font></a></li>
                    <li style="left:90px;width:100px"><a href="Account.html" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Account</font></a></li>
                </div>
            </div>
        </div>
    </nav>
    <div class="container" style="background-color:white;width:50%;margin-top:0.1%">
        <div class="row" style="width:150">
            <div class="col-md-2 col-md-offset-0" style="background-color:white;width:50%;padding-right:15%;margin-top:2%">
                <div class="thumbnail" style="width:120px" id="pictureThumbnail">
                    <div class="caption">

                        <input id="lefile" type="file" style="display:none;">
                        <div class="input-append" style="height:40px">
                            <input id="photoCover" class="input-large" style="width:90px;margin-top:0px" type="text">
                            <a class="label label-danger" rel="tooltip" id="changeProfilePicture"onclick="$('input[id=lefile]').click();">Change</a>
                        </div>

                        <script type="text/javascript">
                            $('input[id=lefile]').change(function () {
                                $('#photoCover').val($(this).val());
                            });
                        </script>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/image1.png" id="profilePictureImage"alt="...">
                </div></div>
            <div class="col-md-4 col-md-offset-0" >
                <a class="btn mini blue-stripe"  style="margin-left:270px"id="editProfileInformation" href="#modal-dialogedit1"data-toggle="modal" > <span style="width:0px"class="glyphicon glyphicon-edit"align="left" ></span></a>
                <table class="table table-hover " style="margin-top:0px"id="userDataTable">

                    <h2 style="margin-top:0px">${owner.firstName} &nbsp; ${owner.lastName}</h2>
                    <h4>${owner.userEntities[0].basicUserEntity.entityType}</h4>
                    <h5>${owner.companyName}</h5>
                    <h5>${owner.address.streetName}&nbsp;${owner.address.city}&nbsp;${owner.address.state}&nbsp;${owner.address.country}&nbsp;${owner.address.pincode}</h5>
                    <h4>${owner.mobile}</h4>
                </table>
            </div>
        </div>
    </div>

    <div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:0.5%">
        <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9); margin-top:0%" ><font face="Open Sans"><h4>Additional Information</h4></font></div>
    </div>
    <div class="container" style="background-color:white;width:50%;">
        <div class="row">

            <div class="col-md-3 col-md-offset-0" style="background-color:white;width:100%">
                <table class="table " style="text-decoration:none;" id="userDataTable">
                    <a class="btn mini blue-stripe" id="editAdditionalInformation"href="#modal-dialogedit2"data-toggle="modal" style="margin-left:600px"> <span style="width:0px" class="glyphicon glyphicon-edit" ></span></a>
                    <tr>
                        <td style="border-color:white"><h5><font style="font-weight:600">Industry : </font>${owner.usersIndustrys[0].businessIndustry.industryName}</h5></td>
                        <td style="border-color:white"><h5><font style="font-weight:600">Business : </font>${owner.businessType}</h5></td>
                    </tr>
                    <tr>
                        <td style="border-color:white"><h5><font style="font-weight:600">Transport : </font>Liner </h5></td>
                        <td style="border-color:white"><h5><font style="font-weight:600">Truck : </font>20ft Container</h5></td>
                    </tr>
                    <tr>
                        <td style="border-color:white"><h5><font style="font-weight:600">PAN : </font>${owner.panNumber}</h5></td>
                        <td style="border-color:white"><h5><font style="font-weight:600">Company :</font>${owner.companyName}</h5></td>
                    </tr>
                    <tr>
                        <td style="border-color:white"><h5><font style="font-weight:600">Employee :</font>${owner.noOfEmployee}</h5></td>
                        <td style="border-color:white"><h5><font style="font-weight:600">Trucks :</font>${owner.noOfVehicles}</h5></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-dialogedit1">
        <div class="modal-dialog" id="modalDialogEdit1">
            <div class="modal-content" id="modalContentEdit1">
                <div class="modal-header" style="background-color: rgba(255,255,153,0.9);" id="modalHeaderEdit1">
                    <button type="button" id="modalDialogEdit1CloseButton"class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" align="center">Profile</h4>
                </div>

                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-md-3 control-label">Name</label>
                            <div class="col-md-9">
                                <input id="firstName" name = "firstName" type="text" class="form-control" style="width:100%"placeholder="FirstName LastName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">I am Currently</label>
                            <div class="col-md-9">
                                <select id="userRole" name="userRole" class="form-control" default= "eg301201" style ="height:6%;"; required>
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
                        <div class="form-group">
                            <label class="col-md-3 control-label">Company</label>
                            <div class="col-md-9">
                                <input type="text" id="companyName" name="companyName" class="form-control" style="width:100%"placeholder="Company Name" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Address</label>
                            <div class="col-md-9">
                                <textarea type="text" id="address" name="address" class="form-control" style="width:100%"placeholder="Default input" /></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Pincode</label>
                            <div class="col-md-9">
                                <input type="text" id="pinCode" name="pinCode" class="form-control"style="width:100%" placeholder="eg. 301201" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Mobile Number</label>
                            <div class="col-md-9">
                                <input type="text" id="mobile" name="mobile" class="form-control"style="width:100%" placeholder="Mobile Number" />
                            </div>
                        </div>
                        <div class="modal-footer">

                            <div class="leo-module mod-feat jointoday" >
                                <button href="javascript:;" id="closeProfile" type="submit" name="closeProfile" value="Close" style="height:30px;width:80px;margin-top:0px"id="btn-submit" data-dismiss="modal"class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Close</font></button>
                                <button type="submit" id="submitProfile"name="submitProfile" value="Submit" style="height:30px;width:80px;margin-top:0px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Submit</font></button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
    <div class="modal fade" id="modal-dialogedit2">
        <div class="modal-dialog" id="modalDialogEdit2">
            <div class="modal-content" id="modalContentEdit2">
                <div class="modal-header" id="modalHeaderEdit2"style="background-color: rgba(255,255,153,0.9);">
                    <button type="button" id="additionalCloseUpper"class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" align="center">Additional Info</h4>
                </div>

                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-md-3 control-label">PAN</label>
                            <div class="col-md-9">
                                <input type="text" id="PAN" name="PAN" class="form-control" style="width:100%"placeholder="Default input" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Industry</label>
                            <div class="col-md-9">
                                <input type="text" id="industryName" name="industryName" class="form-control" style="width:100%"placeholder="Default input" />
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-3 control-label">Company</label>
                            <div class="col-md-9">
                                <input type="text" id="companyName" name="companyName" class="form-control" style="width:100%"placeholder="Default input" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Business</label>
                            <div class="col-md-9">
                                <input type="text" id="business" name="business" class="form-control" style="width:100%"placeholder="Default input" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Transport Reference</label>
                            <div class="col-md-9">
                                <input type="text" id="trasnposrtReference" name="transportReference" class="form-control"style="width:100%" placeholder="Default input" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Number of Employees</label>
                            <div class="col-md-9">
                                <input type="text" id="noOfEmp" name="noOfEmp" class="form-control"style="width:100%" placeholder="If applicable" />
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-3 control-label">Number of Trucks</label>
                            <div class="col-md-9">
                                <input type="text" id="noOfTrucks" name="noOfTrucks" class="form-control"style="width:100%" placeholder="If applicable" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Email</label>
                            <div class="col-md-9">
                                <input type="text" id="email" name="email" class="form-control"style="width:100%" placeholder="Default input" />
                            </div>
                        </div>

                        <div class="modal-footer">

                            <div class="leo-module mod-feat jointoday" >
                                <button href="javascript:;" name="additionalCloseDown" id="additionalCloseDown" type="submit" name="" value="Close" style="height:30px;width:80px;margin-top:0px"id="btn-submit" data-dismiss="modal"class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Close</font></button>
                                <button type="submit" id="additionalSubmit" name="additionalSubmit" value="Submit" style="height:30px;width:80px;margin-top:0px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Submit</font></button>
                            </div>


                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:0.5%">
        <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9); margin-top:0.1%" ><h4>Add Asset</h4></div>
    </div>

    <div class="container" style="background-color:white;width:50%;margin-top:0%">
        <div id="loginbox" style="margin-top:5%;" style="background-color:#e6e6e6" class="mainbox col-md-12 col-md-offset-0 ">
            <div class="col-md-6" style="padding: 0 0px 0 0px;"><div  style=" background-color:white;width: 100%; ;height: 25%;border-radius:0px;-webkit-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                      -moz-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                      box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);;">
                    <div style="width:100%" align="center">

                        <img src="${pageContext.request.contextPath}/resources/images/image2.png" alt="Smiley face" height="50px" width="65px" align="right">
                        <font size="3">Add Truck</font><br><font size="2">Adding Truck info keeps track of your trucks.</font>
                        <div class="leo-module mod-feat jointoday" >
                            <button type="button" id="addTruckButton" href="#modal-dialog5" name="" value="Add Truck" style="border-radius:0px;width:100%;margin-top:0px"id="btn-submit" class="btn-action" data-toggle="modal"tabindex="9"><font face="Open Sans" style="font-weight:normal">Add Truck</font></button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modal-dialog5">
                <div class="modal-dialog" id="modalDialog5">
                    <div class="modal-content" id="modalContent5">
                        <div class="modal-header" id="modalHeader5"style="background-color: rgba(255,255,153,0.9);">
                            <button type="button" id="modalDialog5Close" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" align="center">Truck Details</h4>
                        </div>

                        <div class="panel-body">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Name of Owner</label>
                                    <div class="col-md-9">
                                        <input type="text" id="modalNo" name="nameOfOwner" class="form-control" style="width:60%"placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Model No.</label>
                                    <div class="col-md-9">
                                        <input type="text" id="modalNo" name="modalNo" class="form-control" style="width:60%"placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Reg. No.</label>
                                    <div class="col-md-9">
                                        <input type="text" id="regNo" name="regNo" class="form-control" style="width:60%"placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Number of Wheels</label>
                                    <div class="col-md-9">
                                        <input type="text" id="noOfWheels" name="noOfWheels" class="form-control" style="width:60%"placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="col-md-2 col-md-offset-8" style="background-color:white;left:25px;width:30%;padding-right:0%;margin-top:-34%">
                                    <div class="thumbnail" style="width:150px">
                                        <div class="caption">
                                            <input id="lefilea" type="file" style="display:none;">
                                            <div class="input-append" style="height:40px">
                                                <input id="photoCovera" class="input-large" style="width:90px;margin-top:0px" type="text">
                                                <a class="label label-danger" rel="tooltip" id="truckImage"onclick="$('input[id=lefile]').click();">Change</a>
                                            </div>

                                            <script type="text/javascript">
                                                $('input[id=lefilea]').change(function () {
                                                    $('#photoCovera').val($(this).val());
                                                });
                                            </script></div>
                                        <img src="${pageContext.request.contextPath}/resources/images/image1.png" alt="...">
                                    </div></div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Insurance</label>
                                    <div class="col-md-9">
                                        <input type="text" id="insurance" name="insurance" class="form-control" style="width:100%"placeholder="Default input" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Capacity</label>
                                    <div class="col-md-9">
                                        <input type="text" id="capacity" name="capacity" class="form-control" style="width:100%"placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Weight</label>
                                    <div class="col-md-9">
                                        <input type="text" id="weight" name="weight" class="form-control"style="width:100%" placeholder="Default input" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Permits</label>
                                    <div class="col-md-9">
                                        <select class="form-control" id="permits" name="permits" style="width:100%">
                                            <option>AIP</option>
                                            <option>SP</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Truck type</label>
                                    <div class="col-md-9">
                                        <select class="form-control" id="truckType" name="truckType" style="width:100%">
                                            <option>Dumper</option>
                                            <option>Eicher 407</option>
                                            <option>JCB</option>
                                        </select>
                                    </div>


                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Charges/Hour</label>
                                    <div class="col-md-9">
                                        <input type="text" id="charges" name="charges" class="form-control"style="width:100%" placeholder="If applicable" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Route Information</label>
                                    <div class="col-md-9">
                                        <input type="text" id="routeInfo" name="routeInfo" class="form-control"style="width:100%" placeholder="Default input" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Road Tax Valid upto</label>
                                    <div class="col-md-9">
                                        <input id="datepicker" name="date" style="width:100%;margin-top:2%" type="text">
                                    </div>
                                </div>
                                <script>
                                    $(function () {
                                        $("#datepicker").datepicker();
                                    });</script>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Tracking facility :</label>
                                    <div class="col-md-9">
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="trackingFacilityYes" name="trackingFacility" value="yes" data-parsley-required="true" /> Yes
                                            </label>

                                            <label>
                                                <input type="radio" id="trackingFacilityNo" name="trackingFacility"  value="no" /> No
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">

                                    <div class="leo-module mod-feat jointoday" >
                                        <button href="javascript:;" id="modalDialog5CloseButton"type="submit" name="" value="Close" style="height:30px;width:80px;margin-top:0px"id="btn-submit" data-dismiss="modal"class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Close</font></button>
                                        <button type="submit" id="modalDialog5Submit"name="" value="Submit" style="height:30px;width:80px;margin-top:0px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Sumbit</font></button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="padding: 0px 0px 0 15px;"><div  style=" background-color:white;width: 100%; ;height: 25%;border-radius:0px;-webkit-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                         -moz-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                         box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);">

                    <div style="width:100%" align="center">

                        <img src="${pageContext.request.contextPath}/resources/images/image3.png" alt="Smiley face" height="50px" width="65px" align="right">
                        <font size="3">Add Driver</font><br><font size="2">Adding Driver info keeps track of your driverse.</font>
                        <div class="leo-module mod-feat jointoday" >
                            <button type="button" id="addDriver"href="#modal-dialogDriver" name="" value="Add Driver" style="border-radius:0px;width:100%;margin-top:0px"id="btn-submit" class="btn-action" data-toggle="modal"tabindex="9"><font face="OPen Sans" style="font-weight:normal">Add Driver</font></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-dialogDriver">
            <div class="modal-dialog" id="modalDialogDriver">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: rgba(255,255,153,0.9);">
                        <button type="button" id="modalDialogDriverCloseButton"class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" align="center">Driver Details</h4>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Name</label>
                                <div class="col-md-9">
                                    <input type="text" id="driverName" name="driverName" class="form-control" style="width:60%"placeholder="Default input" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Lisence. No.</label>
                                <div class="col-md-9">
                                    <input type="text" id="lisenceNumber" name="lisenceNumber" class="form-control" style="width:60%"placeholder="Default input" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Mobile No.</label>
                                <div class="col-md-9">
                                    <input type="text" id="mobile" name="mobile" class="form-control"  style="width:60%"placeholder="Default input" />
                                </div>
                            </div>
                            <div class="col-md-2 col-md-offset-8" style="background-color:white;left:25px;width:30%;padding-right:0%;margin-top:-27%">
                                <div class="thumbnail" style="width:150px">
                                    <div class="caption">
                                        <input id="lefileb" type="file" style="display:none;">
                                        <div class="input-append" style="height:40px">
                                            <input id="photoCoverb" class="input-large" style="width:90px;margin-top:0px" type="text">
                                            <a class="label label-danger" rel="tooltip" id="image"onclick="$('input[id=lefile]').click();">Change</a>
                                        </div>

                                        <script type="text/javascript">
                                            $('input[id=lefileb]').change(function () {
                                                $('#photoCoverb').val($(this).val());
                                            });
                                        </script>  </div>
                                    <img src="http://lorempixel.com/400/300/sports/1/" alt="...">
                                </div></div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Service duration</label>
                                <div class="col-md-9">
                                    <input type="text" id="serviceDuration" name="serviceDuration" class="form-control" placeholder="In months" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Email Id</label>
                                <div class="col-md-9">
                                    <input type="text" id="email" name="email" class="form-control" placeholder="In months" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label">Address</label>
                                <div class="col-md-9">
                                    <textarea class="form-control" id="address" name="address" placeholder="Textarea" rows="5"></textarea>
                                </div>
                            </div>


                            <div class="modal-footer">
                                <div class="leo-module mod-feat jointoday" >
                                    <button href="javascript:;" id="modalDialogDriverCloseButton" type="submit" name="" value="Close" style="height:30px;width:80px;margin-top:0px"id="btn-submit" data-dismiss="modal"class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Close</font></button>
                                    <button type="submit" name="" id="modalDialogDriverSumbit" value="Submit" style="height:30px;width:80px;margin-top:0px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Sumbit</font></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-md-offset-0" style="padding: 18px 0px 05px 15px;"><div style=" background-color:white;width: 100%; ;height: 25%;border-radius:0px;-webkit-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                                        -moz-box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);
                                                                                        box-shadow: 0px 0px 0px 1px rgba(189,189,189,1);">

                <div style="width:100%" align="center">

                    <img src="${pageContext.request.contextPath}/resources/images/image4.png" alt="Smiley face" height="50px" width="65px" align="right">
                    <font size="3">Add Goods</font><br><font size="2">Adding goods info keeps track of your goods.</font>
                    <div class="leo-module mod-feat jointoday" >
                        <button type="button" id="addGoods"href="#modal-dialogGoods" name="" value="Add Goods" style="border-radius:0px;width:100%;margin-top:0px"id="btn-submit" class="btn-action" data-toggle="modal"tabindex="9"><font face="Open Sans " style="font-weight:normal">Add Goods</font></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:0.5%">
    <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9); margin-top:0.1%" ><h4>Trucks</h4></div>
</div>
<div class="container" style="background-color:white;width:50%;height:10%">

    <h1 align="center"  size="3"style="background-color:#e6e6e6;height:0%;"></h1>

    <div class="col-md-12 col-md-offset-0" style="background-color:#ffffff;height:5%">
        <table class="table table-striped "  style="background-color:white;margin-top:-2%">
            <thead>
                <tr>
                    <th class="hidden-phone">Reg. No.</th>
                    <th>Capacity</th>
                    <th >&nbsp&nbsp&nbsp&nbsp&nbspCompletion</th>
                    <td align="right">Edit
                    <td>Delete</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td  height="" style="padding-top:8px"><font size="2" >&nbsp&nbspGJ-X-1111</font></td>
                    <td style="padding-top:8px"><font size="2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp8</font></td>
                    <td align="center"style="padding-top:8px;margin-bottom:0px;padding-bottom:0px" ><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editTruckInfo" href="#modal-dialog5" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteTruckInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td  height="" style="padding-top:8px"><font size="2" >&nbsp&nbspGJ-X-1111</font></td>
                    <td style="padding-top:8px"><font size="2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp8</font></td>
                    <td align="center"style="padding-top:8px;margin-bottom:0px;padding-bottom:0px" ><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editTruckInfo" href="#modal-dialog5" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteTruckInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td  height="" style="padding-top:8px"><font size="2" >&nbsp&nbspGJ-X-1111</font></td>
                    <td style="padding-top:8px"><font size="2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp8</font></td>
                    <td align="center"style="padding-top:8px;margin-bottom:0px;padding-bottom:0px" ><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editTruckInfo" href="#modal-dialog5" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteTruckInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
        </table>
    </div>
    <style type="text/css">
        .table > tbody > tr > td{
            padding: 0px 0px;
        }
    </style>

</div>
<div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:0.5%">
    <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9); margin-top:0.1%" ><h4>Driver</h4></div>
</div>
<div class="container" style="background-color:white;width:50%;margin-top:0%">
    <div class="col-md-12 col-md-offset-0" style="background-color:#ffffff;height:10%">
        <table class="table table-striped" style="background-color:white;margin-top:1%">
            <thead>
                <tr>
                    <th class="hidden-phone" >Name</th>
                    <th>&nbsp&nbsp&nbsp&nbsp Mobile No.</th>
                    <th>&nbsp&nbsp&nbsp&nbsp&nbspCompletion</th>
                    <td align="right" >&nbsp&nbsp&nbsp&nbspEdit</td>
                    <td >Delete</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspRam</font></td>
                    <td style="padding-top:8px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font size="2">8888888888</font></td>
                    <td align="center" style="padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:11px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editDriverInfo"href="#modal-dialogDriver" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteDriverInfo" href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspRam</font></td>
                    <td style="padding-top:8px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font size="2">8888888888</font></td>
                    <td align="center" style="padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:11px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editDriverInfo"href="#modal-dialogDriver" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteDriverInfo" href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspRam</font></td>
                    <td style="padding-top:8px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font size="2">8888888888</font></td>
                    <td align="center" style="padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:11px;width:50px;margin-top:5px;">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editDriverInfo"href="#modal-dialogDriver" data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteDriverInfo" href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
    </div>

</table>
</div>
</div>
<div class="container" style="background-color: rgba(255,255,153,0.9);width:50%;margin-top:0.5%">
    <div class="col-md-12" align="center" style="background-color: rgba(255,255,153,0.9); margin-top:0.1%" ><h4>Goods</h4></div>
</div>
<div class="container" style="background-color:white;width:50%;margin-top:0%">
    <div class="col-md-12 col-md-offset-0" style="background-color:#ffffff;height:10%">
        <table class="table table-striped " >
            <thead>
                <tr>
                    <th class="hidden-phone">Material</th>
                    <th>Weight</th>
                    <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCompletion</th>
                    <td align="right">Edit</th>
                    <td>Delete</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspIron</font></td>
                    <td style="padding-top:8px"><font size="2" >&nbsp&nbsp&nbsp&nbsp&nbsp8 tonnes&nbsp&nbsp&nbsp&nbsp</font></td>
                    <td align="center" style="margin-left:30px;padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;left:20px">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editGoodsInfo" href="#modal-dialogGoods"data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteGoodsInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspIron</font></td>
                    <td style="padding-top:8px"><font size="2" >&nbsp&nbsp&nbsp&nbsp&nbsp8 tonnes&nbsp&nbsp&nbsp&nbsp</font></td>
                    <td align="center" style="margin-left:30px;padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;left:20px">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>

                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editGoodsInfo" href="#modal-dialogGoods"data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteGoodsInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
            <tbody>
                <tr>
                    <td class="hidden-phone" style="padding-top:8px"><font size="2">&nbsp&nbspIron</font></td>
                    <td style="padding-top:8px"><font size="2" >&nbsp&nbsp&nbsp&nbsp&nbsp8 tonnes&nbsp&nbsp&nbsp&nbsp</font></td>
                    <td align="center" style="margin-left:30px;padding-top:8px"><div class="progress progress-striped active" style="background-color:#D7DF01;height:10px;width:50px;margin-top:5px;left:20px">
                            <div class="progress-bar" style="width: 60%;height:11px;"></div>
                        </div>
                    </td>
                    <td align="right" style="padding:0px 0px 0px 200px"><a class="btn mini blue-stripe" id="editGoodsInfo" href="#modal-dialogGoods"data-toggle="modal"> <span class="glyphicon glyphicon-edit"></span></a></td>
                    <td align="right" style="padding:0px 40px 0px 0px"><a class="btn mini blue-stripe" id="deleteGoodsInfo"href="{site_url()}admin/editFront/1"> <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="modal-dialogGoods">
    <div class="modal-dialog" id="modalDialogGoods">
        <div class="modal-content">
            <div class="modal-header" style="background-color: rgba(255,255,153,0.9);">
                <button type="button" id="modalDialogGoodsClose"class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" align="center">Goods Details</h4>
            </div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3 control-label">Material Type</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsMaterialType"class="form-control" style="width:60%"placeholder="Default input" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Weight</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsWeight"class="form-control" style="width:60%"placeholder="Default input" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Scheduled Date</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsScheduledDate"class="form-control" style="width:60%"placeholder="Default input" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Value</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsValue"class="form-control" style="width:60%"placeholder="In INR" />
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-8" style="background-color:white;left:25px;width:30%;padding-right:0%;margin-top:-35%">
                        <div class="thumbnail" style="width:150px">
                            <div class="caption">
                                <input id="lefilec" type="file" style="display:none;">
                                <div class="input-append" style="height:40px">
                                    <input id="photoCoverc" class="input-large" style="width:90px;margin-top:0px" type="text">
                                    <a class="label label-danger" rel="tooltip" id="changeGoodsPicture"onclick="$('input[id=lefile]').click();">Change</a>
                                </div>

                                <script type="text/javascript">
                                    $('input[id=lefilec]').change(function () {
                                        $('#photoCoverc').val($(this).val());
                                    });
                                </script>  </div>
                            <img src="${pageContext.request.contextPath}/resources/images/image4.png" alt="...">
                        </div></div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">From</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsFrom" class="form-control" style="width:100%"placeholder="Default input" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">To</label>
                        <div class="col-md-9">
                            <input type="text" id="modalDialogGoodsTo"class="form-control" style="width:100%"placeholder="Default input" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3" >NOC :</label>
                        <div class="col-md-9">
                            <div class="radio">
                                <label>
                                    <input type="radio" id="modalDialogGoodsNOCYes"name="radiorequired" value="foo" id="radio-required" data-parsley-required="true" /> Yes
                                </label>

                                <label>
                                    <input type="radio" id="modalDialogGoodsNOCNo"name="radiorequired" id="radio-required2" value="bar" /> No
                                </label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="leo-module mod-feat jointoday" >
                    <button href="javascript:;" type="submit" id="modalDialogGoodsCloseButton"name="" value="Close" style="height:30px;width:80px;margin-top:0px"id="btn-submit" data-dismiss="modal"class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Close</font></button>
                    <button type="submit" name="" id="modalDialogGoodsSumbit"value="Submit" style="height:30px;width:80px;margin-top:0px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Submit</font></button>
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
</html>