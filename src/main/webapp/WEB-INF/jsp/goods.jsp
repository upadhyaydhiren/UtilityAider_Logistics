<!DOCTYPE html><html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Eco Trucks | View/Post Page</title>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/abc2.css"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/abc2.css"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/abc.css"/>
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />        
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://engine.adzerk.net/ados.js?_=1433739994824" async=""></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#default-tab-1").mousedown();
                $("#datepicker").datepicker();
                $("#datepicker1").datepicker();

            });

            $(document).ready(function () {
                $('.content').hide();
                $('.btn-action').click(function () {
                    var $this = $(this);
                    $(this).siblings('.content').slideToggle(200, function () {
                        $this.text($(this).is(':visible') ? 'Close' : 'View Responses');
                    });
                });

                 $('.noofresponces').click(function () {
                    var $this = $(this);
                    $(this).siblings('.content').slideToggle(200, function () {
                    });
                });
            });

            function toggleOverlay() {
                var overlay = document.getElementById('overlay');
                var specialBox = document.getElementById('specialBox');
                overlay.style.opacity = .5;
                if (overlay.style.display == "block") {
                    overlay.style.display = "none";
                    specialBox.style.display = "none";
                } else {
                    overlay.style.display = "block";
                    specialBox.style.display = "block";
                }
            }

            function toggleOverlay2() {
                var overlaye = document.getElementById('overlaye');
                var specialBox1 = document.getElementById('specialBox1');
                overlaye.style.opacity = .5;
                if (overlaye.style.display == "block") {
                    overlaye.style.display = "none";
                    specialBox1.style.display = "none";
                } else {
                    overlaye.style.display = "block";
                    specialBox1.style.display = "block";
                }
            }

            function toggleOverlay3() {
                var overlaye = document.getElementById('overlayd');
                var specialBox2 = document.getElementById('specialBox2');
                overlayd.style.opacity = .5;
                if (overlayd.style.display == "block") {
                    overlayd.style.display = "none";
                    specialBox2.style.display = "none";
                } else {
                    overlayd.style.display = "block";
                    specialBox2.style.display = "block";
                }
            }
        </script>
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/text.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/textviewpost.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/text-button.css">
        <style>
            div#overlay {
                display: none;
                z-index: 2;
                background: #000;
                position: fixed;
                width: 100%;
                height: 100%;
                top: 0px;
                left: 0px;
                text-align: center;
            }
            div#overlaye {
                display: none;
                z-index: 3;
                background: #000;
                position: fixed;
                width: 100%;
                height: 100%;
                top: 0px;
                left: 0px;
                text-align: center;
            }
            div#specialBox {
                display: none;
                position: relative;
                z-index: 4;
                margin: -120px auto 0px auto;
                width: 100%; 
                height: 17%;
                background: #FFF;
                color: #000;
            }
            div#specialBox1 {
                display: none;
                position: relative;
                z-index: 3;
                margin: 125px auto 0px auto;
                width: 100%; 
                height: 17%;
                background: #FFF;
                color: #000;
            }
            div#specialBox2 {
                display: none;
                position: relative;
                z-index: 3;
                margin: -125px auto 0px auto;
                width: 100%; 
                height: 17%;
                background: #FFF;
                color: #000;
            }
            div#wrapper {
                position:relative;
                top: 0px;
                left: 0px;
                padding-left:24px;
            }
            div#overlayd {
                display: none;
                z-index: 3;
                background: #000;
                position: fixed;
                width: 100%;
                height: 100%;
                top: 0px;
                left: 0px;
                text-align: center;
            }
        </style>
    </head>
    <body>
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
                        <li><a href="home" style=";width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Home</font></a></li>
                        <li style="left:30px"><a href="profile" style=";width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Profile</font></a></li>
                        <li style="left:60px;width:100px"><a href="goods" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Goods</font></a></li>
                        <li style="left:60px;width:100px"><a href="trucks" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Trucks</font></a></li>
                        <li style="left:90px;width:100px"><a href="Tracker.html" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Track</font></a></li>
                        <li style="left:90px;width:100px"><a href="j_spring_security_logout" style="width:80px"><font style="font-weight:600;font-family:'Open Sans','Helvetica Neue','Helvetica','Arial','sans-serif';" size="3">Logout</font></a></li>
                    </div>
                </div>
            </div>
        </nav>
        <div class="tab-content" style=";width:50%;margin-left:25%;height:100%;margin-top:0.1%;margin-bottom:0px">
            <div class="tab-pane fade active in" id="default-tab-2" style="width:100%;margin-top:-2.5%">
                <div class="tab-content" style="margin-bottom:-1.8%">
                    <div class="" id="default-tab-postgoods" style="margin-bottom:0px;height:100%;">
                        <div class="form-group" style="background-color:">
                            <form>
                                <label for="name" class="col-lg-2" style="margin-top:2%">Source:</label>
                                <div class="col-lg-4" style="margin-top:1%">
                                    <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                        <input type="text" name="source" value="" id="source" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                    </div>
                                </div>
                                <label for="name" class="col-lg-2" style="margin-top:2%">Destination:</label>
                                <div class="col-lg-4" style="margin-top:1%">
                                    <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                        <input type="text" name="destination" value="" id="destination" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                    </div>
                                </div>
                                <label for="name" class="col-lg-2" style="margin-top:2%">Date :</label>
                                <div class="col-lg-4" style="margin-top:1%">
                                    <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                        <input type="text" id="datepicker1" name="date" style="width:100%;margin-top:2%"/>
                                    </div>
                                </div>
                                <label for="name" class="col-lg-2" style="margin-top:2%">Distance :</label>
                                <div class="col-lg-4" style="margin-top:1%">
                                    <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                        <input type="text" name="distance" value="" id="distance" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                    </div>
                                </div>
                                <div id="">
                                    <label for="name" class="col-lg-2" style="margin-top:2%">Material :</label>
                                    <div class="col-lg-4" style="margin-top:1%">
                                        <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                            <input type="text" name="material" value="" id="material" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                    <label for="name" class="col-lg-2" style="margin-top:2%">Weight :</label>
                                    <div class="col-lg-4" style="margin-top:1%">
                                        <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                            <input type="text" name="weight" value="" id="weight" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                        </div>
                                    </div>
                                </div>
                                <label for="name" class="col-lg-2" style="margin-top:2%">Contact No:</label>
                                <div class="col-lg-4" style="margin-top:1%">
                                    <div class="leo-module mod-feat jointoday" style="margin-top:1%">
                                        <input type="text" name="contact" value="" id="contact" style="margin-top:2%;width:100%"autocomplete="on" size="55" maxlength="20" tabindex="5">
                                    </div>
                                </div>
                                <div class="leo-module mod-feat jointoday" align="center" style="margin-top:10px;margin-right:10px">
                                    <button type="submit" name="" value="Post Goods" style="line-height:28px;height:30px;width:20%;margin-top:2%;margin-left:10%"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Post Goods</font></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>	
        <div id="overlay" ></div>
        <div id="specialBox" style="width:50%;">
            <div id="" class="close" onclick="toggleOverlay();" style="margin-top:-6px"><font size="3" color="black">X</font></div>
            <table class="table table-striped " style="margin-bottom:0px">
                <tr>
                    <td>Select goods<font color="red">*</font>
                        <select id="country" name="country" class="form-control" style ="height:28px;width:160px;margin-top:5px;"; required>
                            <option value="Transporter" style="line-height:1px">Goods Posted A</option>
                            <option value="Broker">Goods Posted B</option></select>
                    </td>									
                    <td>Weight<font color="red">*</font></label>
                        <div class="leo-module mod-feat jointoday" >
                            <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" style ="width:130px;margin-top:5px"autocomplete="on" size="55" maxlength="20" tabindex="5">
                        </div></td>
                    <td>Charges<font color="red">*</font>
                        <div class="leo-module mod-feat jointoday" >
                            <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" style ="height:28px;width:130px;margin-top:5px""autocomplete="on" size="55" maxlength="20" tabindex="5">
                        </div>
                    </td>	
                    <td><div class="leo-module mod-feat jointoday" >
                            <input type="submit"  href="#modal-dialogConfirm"  data-toggle="modal"name="" value="Confirm" style="height:20px;width:70px;margin-left:5px;margin-top:26px;line-height:14px;font-size:13px;font-weight:normal"id="btn-submit" class="btn-action" tabindex="9">
                        </div>
                    </td>
                </tr>
            </table>
            <a href="#modal-dialogGoods" data-toggle="modal"style="margin-top:0px">Add Goods</a>
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
                                        <img src="images/image4.png" alt="...">
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
        </div>
        <div id="overlayd" ></div>

        <div id="specialBox2" style="width:50%;">
            <div id="" class="close" onclick="toggleOverlay3();" style="margin-top:-6px"><font size="3" color="black">X</font></div>
            <table class="table table-striped " style="margin-bottom:0px">

                <tr>

                    <td>Select Truck<font color="red">*</font>
                        <select id="country" name="country" class="form-control" style ="height:28px;width:160px;margin-top:5px;"; required>
                            <option value="Transporter" style="line-height:1px">Truck A</option>
                            <option value="Broker">Truckd B</option></select>
                    </td>
                    <td>Select Driver<font color="red">*</font></label>
                        <div class="leo-module mod-feat jointoday" >
                            <select id="country" name="country" class="form-control" style ="height:28px;width:160px;margin-top:5px;"; required>
                                <option value="Transporter" style="line-height:1px">Driver A</option>
                                <option value="Broker">Driver B</option></select>
                        </div></td>
                    <td>Charges<font color="red">*</font>
                        <div class="leo-module mod-feat jointoday" >
                            <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" style ="height:28px;width:130px;margin-top:5px""autocomplete="on" size="55" maxlength="20" tabindex="5">
                        </div>
                    </td>	
                    <td><div class="leo-module mod-feat jointoday" >
                            <input type="submit"   href="#modal-dialogConfirm"  data-toggle="modal"name="" value="Confirm" style="height:20px;width:70px;margin-left:5px;margin-top:26px;line-height:14px;font-size:13px;font-weight:normal"id="btn-submit" class="btn-action" tabindex="9">
                        </div>
                    </td>
                </tr>

            </table>
            <a href="#modal-dialog5" data-toggle="modal">Add Truck</a>
            <a href="#modal-dialogDriver" style="margin-left:160px" data-toggle="modal">Add Driver</a>
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
                                        <img src="images/image1.png" alt="...">
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
        </div>
        <div id="otherspostedgoods" class="col-md-0 col-md-offset-3" style="width:50%;margin-right:0px;height:100px">
            <div style="background-color:#d8d8d8;height: 10%">
                <table class="table table-striped " style="height:5px;margin-bottom:0px">
                    <thead>
                        <tr style="background-color:#d8d8d8;">
                            <th style="width:5px">Source</th>
                            <th  style="height:5px"> Destination</th>
                            <th>Material type</th>
                            <th >Weight</th>
                            <th>Date<th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:white;">
                            <td>Ahmedabad</td>
                            <td>Delhi</td>
                            <td>Iron</td>
                            <td>10 tonnes</td>
                            <td>17/06/2015</td>
                            <td>
                                <div class="dropdown open" style="margin-bottom:-20px" onclick = "toggleOverlay3()">
                                    <a aria-expanded="true" href="" onClick=" $('#box').show();
                                            info" data-toggle="dropdown" style="margin-bottom:10px" class="dropdown-toggle f-s-14">
                                            <i class="fa fa-check"></i>
                                    </a>  
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="mypostpostgoods" class="col-md-0 col-md-offset-3" style="width:50%;margin-right:0px;height:100px">
            <h3>View responses</h3>
            <div style="background-color:#d8d8d8; height:10%">
                <table class="table table-striped " style="height:5px;margin-bottom:0px">
                    <thead>
                        <tr style="background-color:#d8d8d8;">
                            <th style="width:5px">Source</th>
                            <th  style="height:5px"> Destination</th>
                            <th>Material type</th>
                            <th >Weight</th>
                            <th>Date<th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="background-color:white;">
                            <td>Ahmedabad</td>
                            <td>Delhi</td>
                            <td>Iron</td>
                            <td>10 tonnes</td>
                            <td>17/06/2015</td>
                            <td>
                                <a aria-expanded="true" href="" onClick=" $('#box').show();
                                            info" data-toggle="dropdown" style="margin-bottom:10px"class="dropdown-toggle f-s-14">
                                        <i class="fa fa-bell-o"></i>	
                                        <span class="noofresponces" style="background-color:#FE2E64;border-radius:5px">4</span>
                                        <div class="content" style="margin-left:0px">
                                        <table class="table table-striped " >
                                            <thead>
                                                <tr style="background-color:#d8d8d8;">
                                                    <th>Truck type</th>
                                                    <th >Driver</th>
                                                    <th>Price</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><img src="images/trucklogo1.png" style="height:15px;width:15px;"></img>&nbsp&nbspTruck A</td>
                                                    <td ><font size="2"><img src="images/driver1.png" style="height:15px;width:15px;"></img>&nbsp&nbspDriver A</font></td>
                                                    <td>Rs. 25000</td>
                                                    <td><div class="leo-module mod-feat jointoday" >
                                                            <button type="submit"  href="#modal-dialogConfirm"  data-toggle="modal"value="Confirm" style="height:20px;width:70px;margin-top:0px;line-height:14px;font-size:13px"id="btn-submit" class="btn-action" tabindex="9"><font face="Open Sans" style="font-weight:normal">Confirm</font></button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    </a>  
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="overlaye" ></div>
        <div id="specialBox1" style="width:50%;">
            <div id="" class="close" onclick="toggleOverlay2();" style="margin-top:-5px"><font size="3" color="black">X</font></div>
            <table class="table table-striped " >
                <tr>
                    <td>Select Truck<font color="red">*</font>
                        <div class="leo-module mod-feat jointoday" >
                            <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" style ="width:130px;margin-top:5px"autocomplete="on" size="55" maxlength="20" tabindex="5">
                        </div>	</td>								
                    <td>Select Driver<font color="red">*</font>
                        <div class="leo-module mod-feat jointoday" >
                            <input type="text" name="firstName" value="" id="firstName-coldRegistrationForm" style ="width:130px;margin-top:5px"autocomplete="on" size="55" maxlength="20" tabindex="5">
                        </div></td>
                    <td>Price
                        <div class="leo-module mod-feat jointoday" >
                            <h5>Rs.25000</h5>
                        </div>
                    </td>	
                    <td><div class="leo-module mod-feat jointoday" >
                            <input type="submit"  href="#modal-dialogConfirm"  data-toggle="modal"name="" value="Confirm" style="height:20px;width:70px;margin-left:5px;margin-top:26px;line-height:14px;font-size:13px;font-weight:normal"id="btn-submit" class="btn-action" tabindex="9">
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="modal fade" id="modal-dialogConfirm">
            <div class="modal-dialog" id="modalDialogGoods">
                <div class="modal-content" style=" background:whitesmoke;">

                    <div class="modal-header" style="background-color: rgba(255,255,255,1); padding: 0px 0px;">
                        <button type="button" id="modalDialogDriverCloseButton" class="close" data-dismiss="modal" aria-hidden="true" style="margin-right:10px; margin-top:10px;">×</button>
                        <h4 class="modal-title" align="center" style="background-color: rgba(255, 255, 153, 0.9);z-index:99;padding: 7px">Confirm Payment</h4>

                        <div class="row1-pop">
                            <div id="current_balance-pop" class="current_balance-pop">
                                <div class="col-md-12" style="background-color: rgba(255,255,153,0.9); margin-top:2%" align="center">
                                    <font face="Open Sans"><h4>Your Wallet Balance</h4></font></div>
                                <h1>Rs. 1500</h1>
                            </div>
                        </div>
                        <div class="row1-pop">
                            <div id="add_money-pop" class="add_money-pop">
                                <div class="col-md-12" style="background-color: rgba(255,255,153,0.9);" align="center">
                                    <font face="Open Sans"><h4>Current transaction amount</h4></font></div>
                                <h1 style="font-size:30px;">Rs. 300</h1>

                                <div class="leo-module mod-feat jointoday" style="position:relative; margin-top:20%;">
                                    <button type="button" id="addMoney" href="#" name="" value="Add money" style="width: 35%;
                                            margin-top: 10px; position: relative; left:35%;" class="btn-action" tabindex="9"><font style="font-weight:normal" face="Open Sans ">Confirm</font></button>
                                </div>
                            </div> 

                        </div>

                        <div class="row2-pop">
                            <div id="transactions" class="transactions-pop" style="margin-top: 46px;">
                                <div class="t_details" style="width: 100%; margin-left:  0px;">
                                    <div id="sender" class="sender">
                                        <div class="col-md-12" style="background-color: rgba(255,255,153,0.9);" align="center">
                                            <font face="Open Sans"><h4>Sender</h4></font></div>

                                        <div style="margin-top:1%">
                                            <div class="leo-module mod-feat jointoday s_name">Name:
                                                <input name="Name" value="" id="sender_name" style="width:260px;" autocomplete="on" size="55" maxlength="20" tabindex="5" type="text" required>
                                            </div>
                                        </div>
                                        <div >
                                            <div class="leo-module mod-feat jointoday s_address">Address:
                                                <textarea name="Address" value="" id="sender_address" style="width:260px;" rows="4" cols="10" required></textarea><br></div>
                                        </div>
                                        <div>
                                            <div class="leo-module mod-feat jointoday s_contact">Contact No:
                                                <input name="Contact" value="" id="sender_contact" style="width:260px;" autocomplete="on"  size="55" maxlength="20" tabindex="5" type="text" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="receiver" class="receiver">
                                        <div class="col-md-12" style="background-color: rgba(255,255,153,0.9);" align="center">
                                            <font face="Open Sans"><h4>Receiver</h4></font></div>
                                        <div style="margin-top:1%">
                                            <div class="leo-module mod-feat jointoday s_name">Name:<br>
                                                <input name="Name" value="" id="receiver_name" style="width:260px;" autocomplete="on" size="55" maxlength="20" tabindex="5" type="text" required>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="leo-module mod-feat jointoday s_address">Address:
                                                <textarea name="Address" value="" id="receiver_address" style="width:260px;" rows="4" cols="10" required></textarea><br></div>
                                        </div>
                                        <div>
                                            <div class="leo-module mod-feat jointoday s_contact">Contact No:
                                                <input name="Contact" value="" id="receiver_contact" style="width:260px;" autocomplete="on"  size="55" maxlength="20" tabindex="5" type="text" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer" style="width:100%;margin-top:40%;margin-left:0px;margin-right:0px;height:50px">
            <div class="container" style="width:100%">
                <p class="text-muted">Place your FOOTER CONTENTS content here.</p>
            </div>
        </footer>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/form-plugins.demo.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
    </body>
</html>

