<%-- 
    Document   : index
    Created on : Sep 21, 2014, 3:50:33 PM
    Author     : Ramkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body.modal-open #page{
                -webkit-filter: blur(7px);
                -moz-filter: blur(15px);
                -o-filter: blur(15px);
                -ms-filter: blur(15px);
                filter: blur(15px);
            }

            .modal-backdrop {background: #f7f7f7;}


            .progress-meter {
                min-height: 15px;
                border-bottom: 2px solid rgb(160, 160, 160);
            }

            .progress-meter > .meter {
                position: relative;
                float: left;
                min-height: 15px;
                border-width: 0px;
                border-style: solid;
                border-color: rgb(160, 160, 160);
            }

            .progress-meter > .meter-left {
                border-left-width: 2px;
            }

            .progress-meter > .meter-right {
                float: right;
                border-right-width: 2px;
            }

            .progress-meter > .meter-right:last-child {
                border-left-width: 2px;
            }

            .progress-meter > .meter > .meter-text {
                position: absolute;
                display: inline-block;
                bottom: -20px;
                width: 100%;
                font-weight: 700;
                font-size: 0.85em;
                color: rgb(160, 160, 160);
                text-align: left;
            }

            .progress-meter > .meter.meter-right > .meter-text {
                text-align: right;
            }


            /** added for corner drop down **/

            .panel-google-plus {
                position: relative;
                border-radius: 0px;
                border: 1px solid rgb(216, 216, 216);
                font-family: 'Roboto', sans-serif;
            }
            .panel-google-plus > .dropdown {
                position: absolute;
                top: 5px;
                right: 15px;
            }
            .panel-google-plus > .dropdown > span > span {
                font-size: 10px;   
            }
            .panel-google-plus > .dropdown > .dropdown-menu {
                left: initial;
                right: 0px;
                border-radius: 2px;
            }
            /** read more **/
            .readmore-js-toggle, .readmore-js-section {
                text-align: right;
                padding-right: 5px;
            }
            #chart > svg {height: 50% !important;}
            .dp:hover
            {
                border:2px solid #eee;
                transform:rotate(360deg);
                -ms-transform:rotate(360deg);  
                -webkit-transform:rotate(360deg);  
                /*-webkit-font-smoothing:antialiased;*/
            }
            .dp
            {
                border:10px solid #eee;
                transition: all 0.2s ease-in-out;
            }

        </style>
        <meta charset="UTF-8">
        <title>Welcome Garc 4.0</title>


        <%@ include file="../layout/header.jsp" %>
    <div id="page">
        <div class="container" >
            <div class="row">
                <ul class="thumbnails list-unstyled">
                    <li class=" col-md-3  ">
                        <div class="thumbnail panel-google-plus">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <center>
                                <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" class="img-circle dp"></a>
                                <h3>Joe Sixpack</h3>

                            </center>
                        </div>
                    </li>

                    <li class="col-md-6 ">
                        <ul class="nav nav-pills panel">

                            <li><a href="#"><span class="glyphicon glyphicon-inbox"></span> Messages</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span> Time Table </a></li>
                            <li><a href="#" ><span class="glyphicon glyphicon-calendar"></span> Apply Leave</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle "  data-toggle="dropdown" href="#">
                                    Reports <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Course Outline</a></li>
                                    <li><a href="#">Course Planner</a></li>
                                    <li><a href="#">Semester Planner</a></li>
                                    <li><a href="#">My Attendance</a></li>
                                    <li><a href="#">Downloads</a></li>
                                </ul>
                            </li>

                        </ul>
                        <div class="thumbnail panel-google-plus">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" onclick="$('#viewer').slideDown('slow')">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <p><strong><span class="glyphicon glyphicon-user"></span>  About: </strong> Web Designer / UI. </p>
                            <p><strong><span class="glyphicon glyphicon-glass"></span>  Hobbies: </strong> Read, out with friends, listen to music, draw and learn new things. </p>
                            <p><strong><span class="glyphicon glyphicon-time"></span> Last Login: </strong>
                            <p><strong><span class="glyphicon glyphicon-heart"></span> Current Location: </strong>Chennai
                        </div>

                    </li>
                    <li class="col-md-3 ">
                        <div class="thumbnail panel-google-plus">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" >Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div id="graph" style="height: 150px"></div>
                            <h3><center><span class="glyphicon glyphicon-ok"></span> Attendance %</center></h3>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <div class="container " id="viewer" style="display: none" >
                <div class="panel panel-default">

                    <div class="panel-heading ">Attendance<span class="close glyphicon glyphicon-remove-circle" onclick="$('#viewer').slideUp()"></span></div>
                    
                    <table class="table table-bordered table-hover ">
                        <thead>
                            <%                    for (int i = 0; i < 31; i++) {
                            %><th><%=i%></th><%
                                }
                            %>
                        </thead>
                        <%
                            for (int i = 0; i < 6; i++) {
                        %><tr><%
                            for (int j = 0; j < 31; j++) {
                            %><td>P</td><%
                                }
                            %></tr><%
                                }
                            %>
                        <tr>

                        </tr>
                    </table>
                    <p>Caption</p>
                    <div>
                        <span class="label label-default">BA7011</span>
                        <span class="label label-primary">BA7012</span>
                        <span class="label label-success">BA7013</span>
                        <span class="label label-info">BA7015</span>
                        <span class="label label-warning">BA7016</span>
                        <span class="label label-danger">BA7017</span>
                        <span class="label label-default">BA7018</span>
                        <span class="label label-primary">BA7019</span>
                        <span class="label label-success">BA7021</span>
                        <span class="label label-info">BA7031</span>
                        <span class="label label-warning">BA7041</span>
                        <span class="label label-danger">BA7051</span>
                    </div>
                </div>
        </div>
        <div class="container">
            <div class="row">
                <ul class="thumbnails list-unstyled">
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="HTML / HTML5">
                                        <span class="sr-only">60% Complete</span>
                                        <span class="progress-type">HTML / HTML5</span>

                                    </div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                    <li class="col-md-3">
                        <div class="thumbnail panel-google-plus" style="padding: 0">
                            <div class="dropdown">
                                <span class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="[ glyphicon glyphicon-chevron-down ]"></span>
                                </span>
                                <ul class="dropdown-menu" role="menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                                </ul>
                            </div>
                            <div class="caption">

                                <h2>BA7011 </h2>
                                <p>Merchant Banking and Financial Services </p>
                                <p><i class="icon icon-map-marker"></i> by <a href='#'>Ramkumar K</a>, <a href='#'>Kannan S</a></p>
                            </div>
                            <div class="modal-footer" style="text-align: left">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                        <span class="sr-only">60% Complete</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4"><b>60%</b><br/><small>PRESENT</small></div>
                                    <div class="col-md-4"><b>$400</b><br/><small>LEAVE</small></div>
                                    <div class="col-md-4"><b>18</b><br/><small>OD</small></div>
                                </div>

                            </div>
                            <div class="modal-footer more" style="text-align: left">

                                <div class="progress">
                                    <div data-percentage="0%" style="width: 50%;" class="progress-bar progress-bar-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 60%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 40%;" class="progress-bar progress-bar-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="progress">
                                    <div data-percentage="0%" style="width: 20%;" class="progress-bar progress-bar-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress-meter">
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Meh</span></div>
                                    <div class="meter meter-left" style="width: 25%;"><span class="meter-text">Sorta</span></div>
                                    <div class="meter meter-right" style="width: 20%;"><span class="meter-text">MASTER</span></div>
                                    <div class="meter meter-right" style="width: 30%;"><span class="meter-text">WOW</span></div>
                                </div>



                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div id="wrap" class="text-center">
            <!-- Button trigger modal -->
            <br>
            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                Modal with blur effect
            </button>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 text-center">
                    <h1>Modal with blur effect</h1>
                    <h2>Put here whatever you want here</h2>
                    <h4>For instance, a login form or an article content</h4>
                    <h4><kbd>esc</kbd> or click anyway to close</h4>
                    <hr>
                    <div class="alert alert-info"><h4>I can add a close button if you want.<br>Please, tell me in comments :)</h4></div>
                </div>
                <div class="container">
                    <div class="panel panel-default">

                        <div class="panel-heading ">Attendance</div>
                        <table class="table table-bordered table-hover ">
                            <thead>
                                <%                    for (int i = 0; i < 31; i++) {
                                %><th><%=i%></th><%
                                    }
                                %>
                            </thead>
                            <%
                                for (int i = 0; i < 6; i++) {
                            %><tr><%
                                for (int j = 0; j < 31; j++) {
                                %><td>P</td><%
                                    }
                                %></tr><%
                                    }
                                %>
                            <tr>

                            </tr>
                        </table>
                        <p>Caption</p>
                        <div>
                            <span class="label label-default">BA7011</span>
                            <span class="label label-primary">BA7012</span>
                            <span class="label label-success">BA7013</span>
                            <span class="label label-info">BA7015</span>
                            <span class="label label-warning">BA7016</span>
                            <span class="label label-danger">BA7017</span>
                            <span class="label label-default">BA7018</span>
                            <span class="label label-primary">BA7019</span>
                            <span class="label label-success">BA7021</span>
                            <span class="label label-info">BA7031</span>
                            <span class="label label-warning">BA7041</span>
                            <span class="label label-danger">BA7051</span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <%@ include file="../layout/footer.jsp" %>
    <script src="../js/readmore.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
    <script src="../js/morris.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
    <link rel="stylesheet" href="../css/morris.css">
    <script>
        $(function() {
            $('[data-toggle="tooltip"]').tooltip();
            $('.more').readmore({
                speed: 75,
                maxHeight: 120
            });
            $(function() {
                var val = Morris.Donut({
                    element: 'graph',
                    data: [
                        {value: 70, label: 'foo'},
                        {value: 15, label: 'bar'},
                        {value: 10, label: 'baz'},
                        {value: 5, label: 'A really really long label'}
                    ],
                    backgroundColor: '#ccc',
                    resize: true,
                    labelColor: '#060',
                    colors: [
                        '#0BA462',
                        '#39B580',
                        '#67C69D',
                        '#95D7BB'
                    ],
                    formatter: function(x) {
                        return x + "%"
                    }
                });
                eval(val);
                prettyPrint();

            });
        });
    </script>
</body>

</html>