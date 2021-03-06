<%-- 
    Document   : Employees.jsp
    Created on : Nov 5, 2016, 12:21:17 PM
    Author     : NSG
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>..:: HRMS ::..</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/SkyHRMS.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">



    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>


	<script src="js/login.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  
  </head>

  <body>
      <script src="Javascripts/jquery.js"></script>
            <script type="text/javascript">
                function deleted(item) {
                 
                    alert("are u sure");
                
                }
            </script>   
      
    <div class="container">
    <div class="row">
    <div class="col-lg-12 mainLogo1">
<img src="images/mainLogo.png" alt="images" />
	</div>
	</div>
	</div>


    <div class="container-fluid">
    <div class="row">
<nav style="background-color: #154360" class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="login"><span class="glyphicon glyphicon-dashboard" title="Dash Board" aria-hidden="true"></span></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
           <li><a href="Masters.jsp">Masters</a></li>
        <li class="activated"><a href="display">Employees <span class="sr-only">(current)</span></a></li>
        <li><a href="retrieve">Quarters</a></li>
        <li><a href="retrieve1">Gas Connections</a></li>
        <li><a href="loanslist">Loans</a></li>
       
        <li><a href="Reports.jsp">Reports</a></li>
      </ul>

    <ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" title="Dash Board" aria-hidden="true"></span> <span class="caret"></span></a>
          <ul class="dropdown-menu">
<!--            <li><a href="MyProfile.html">My Profile</a></li>
            <li><a href="chPwd.html">Change Password</a></li>
            <li><a href="Settings.html">Settings</a></li>
            <li role="separator" class="divider"></li>-->
            <li><a href="logout">Logout</a></li>
          </ul>
        </li>
      </ul>

      <%--  <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
      </form>--%>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    </div> <!-- /row -->


<s:form action="enroll">
      <s:submit value="Add Employee" cssClass="btn btn-primary activated1"/>
  </s:form>

<div class="table-responsive">&#x00A0;</div>


<div class="table-responsive">
<table class="table table-striped table-bordered">

<tr class="info">
<th>S.No</th>
<th>Employee ID</th>
<th>Employee Name</th>
<th>Date Of Joining</th>
<th>View</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<s:iterator value="list" status="rowstatus">
<tr>
 <td><s:property value="#rowstatus.count" /></td>
 <td> <s:property value="empId" ></s:property></td>
 <td> <s:property value="empName"></s:property></td>
 <td><s:date format="dd-MM-yyyy" var="date" name="%{doj}"/> <s:property value="%{date}" ></s:property></td>
 <td><a href="employeeView?id1=<s:property value='empId' /> "  data-toggle="tooltip" target="_blank" data-placement="bottom" title="view"> <img src="images/view.png" alt="images" /></a></td>
<td><a href="editEmp?id1=<s:property value='empId' /> " onclick="deleted ()"> <img src="images/edit.png" alt="images" /></a></td>
<td><a href="Empldelete?id1=<s:property value='empId' /> " onclick="return confirm('Are u Sure ?')"> <img src="images/delete.png" alt="images" /></a></td>
</tr>
</s:iterator>

</table>
</div>




    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>


 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>





  </body>
</html>