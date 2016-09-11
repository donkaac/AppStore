<%-- 
    Document   : category
    Created on : Sep 6, 2016, 8:58:57 PM
    Author     : Ish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>

        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <link href="../css/styles.css" rel="stylesheet">
        <script src="../ajaxjs/addressdetails.js"></script>
        <!--Icons-->
        <script src="../js/lumino.glyphs.js"></script>

        <script src="../js/jquery-1.11.1.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <script src="../js/respond.min.js"></script>
        <script src="../js/jquery-3.1.0.js"></script>
    </head>
    <body onload="loardcountry()">
        <%--start Navigator bar--%>

        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span>Apps Store</span>Staff Panel</a>
                    <ul class="user-menu">
                        <li class="dropdown pull-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
                                <li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
                                <li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div><!-- /.container-fluid -->
        </nav>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <form role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="index.html"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
                <li><a href="widgets.html"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Widgets</a></li>
                <li><a href="charts.html"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Charts</a></li>
                <li><a href="tables.html"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Tables</a></li>
                <li><a href="forms.html"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Forms</a></li>
                <li><a href="panels.html"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg> Alerts &amp; Panels</a></li>
                <li><a href="icons.html"><svg class="glyph stroked star"><use xlink:href="#stroked-star"></use></svg> Icons</a></li>
                <li class="parent ">
                    <a href="#">
                        <span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Dropdown 
                    </a>
                    <ul class="children collapse" id="sub-item-1">
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 1
                            </a>
                        </li>
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 2
                            </a>
                        </li>
                        <li>
                            <a class="" href="#">
                                <svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 3
                            </a>
                        </li>
                    </ul>
                </li>
                <li role="presentation" class="divider"></li>
                <li><a href="login.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Login Page</a></li>
            </ul>
        </div><!--/.sidebar-->
        <%--end Navigator bar--%>
        <%--start left menu bar--%>
        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main panel-body">			
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Staff Types Maintains</li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Address details </h1>
                </div>
            </div> 
            <%-- Main--%>

            <div class="form-group" style="border-bottom-color: #2aabd2;border-bottom-style: inset; vertical-align: bottom ">
                <form role="">
                    <div class="form-inline panel-info">
                        <input type="text" id="NewCountry" class="form-control right" placeholder="New Country">
                        <input type="submit" onclick="savecountry()" value="Save New Country "  class="form-control left" placeholder="Add">
                    </div>
                </form>
                <label>Selects Country</label>
                <span>
                    <select style="width:80%px" class="form-control form-inline" onchange="loardProvince()" id="Countrylist"></select><input type="submit" onclick="" value="Deactive Country "  class="form-control right">

                </span>  
            </div>


            <div class="form-group" style="border-bottom-color: #2aabd2;border-bottom-style: inset; vertical-align: bottom ">
                <form role="">
                    <div class="form-inline panel-info">
                        <input id="newprovince" type="text" class="form-control left" placeholder="New Province">
                        <input onclick="saveProvince(document.getElementById('Countrylist').value)" type="submit" value="Save New Province"  class="form-control right" placeholder="Add">
                    </div>
                </form>
                <label>Selects Province</label>
                <select class="form-control" onchange="loardDistrict()" id="provincelist">

                </select>
            </div>


            <div class="form-group" style="border-bottom-color: #2aabd2;border-bottom-style: inset; vertical-align: bottom ">
                <form role="search">
                    <div class="form-inline panel-info">
                        <input type="text" id="newdistrict" class="form-control left" placeholder="New Discrict">
                        <input type="submit" value=" Save New District   " onclick="saveDistrict(document.getElementById('Countrylist').value, document.getElementById('provincelist').value)" class="form-control right" placeholder="Add">
                    </div>
                </form>
                <label>Selects District</label>
                <select class="form-control" onchange="loardCity()" id="districtlist">

                </select>
            </div>

            <div class="form-group" style="border-bottom-color: #2aabd2;border-bottom-style: inset; vertical-align: bottom ">
                <form role="search">
                    <div class="form-inline panel-info">
                        <input type="text" id="newcity" class="form-control left" placeholder="New City">
                        <input type="submit"  onclick="saveCity(document.getElementById('Countrylist').value, document.getElementById('provincelist').value, document.getElementById('districtlist').value)" value="     Save New City    " class="form-control right" placeholder="Add">
                    </div>
                </form>
                <label>All City</label>
                <select class="form-control" id="citylist">

                </select>
            </div>   

        </div>

        <%--End left menu bar--%>

    </body>

</html>
