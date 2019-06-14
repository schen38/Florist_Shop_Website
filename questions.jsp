<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@include file="config.jsp" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
String id="", pwd="";
if(session.getAttribute("id") != null ){
sql = "SELECT * FROM member WHERE id='" +session.getAttribute("id")+"';"; 
ResultSet paperrs1 =con.createStatement().executeQuery(sql);
while(paperrs1.next()){
	    //name=paperrs1.getString(1);
	    id=paperrs1.getString("id");
	    pwd=paperrs1.getString("pwd");
	}
}

%>

<!DOCTYPE html>
<html lang="en">
<html style="max-height:100vh;max-width:100%;background-attachment: fixed;">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/index2.css" type="text/css" media="screen">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" type="text/css" href="css/component02.css" >
    <script src="js/modernizr.custom.js"></script>
    <script src="js/index2.js" type="text/javascript" charset="utf-8" async defer></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <title>常見問題</title>
  </head>

  <body background="img/background.jpg"  style="height:100%;max-height:100%;">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


   <%@include file="navbar.jsp"%>  

	
	<center>
			<header id="masthead">
				<h1>Simply Blessed</h1>
		</header>
	</center>

    <!--常見問題-->
    <div class="container bgc" style="height:100%;max-height:100%; padding-top:150px;">
		<h1 align="center"><img src="img/questions.png" class="int"></h1>
  <div class="row">
    <div class="col-8">
    	<table class="table table-borderless">
	        <tr>
	            <th scope="row"><h4>問題1：如何付款？</h4></th>
	        </tr>   
	        <tr>
	            <td><h4>回答：我們採用貨到付款的方式。</h4></td>
	        </tr> 
	        <tr>
	            <th scope="row"><h4>問題2：</h4></th>
	        </tr>   
	        <tr>
	            <td><h4>回答：</h4></td>
	        </tr>
	        <tr>
	            <th scope="row"><h4>問題3：</h4></th>
	        </tr>   
	        <tr>
	            <td><h4>回答：</h4></td>
	        </tr>
	        <tr>
	            <th scope="row"><h4>問題4：</h4></th>
	        </tr>   
	        <tr>
	            <td><h4>回答：</h4></td>
	        </tr>
	        <tr>
	            <th scope="row"><h4>問題5：</h4></th>
	        </tr>   
	        <tr>
	            <td><h4>回答：</h4></td>
	        </tr>                       
	    </table>
    </div>
    <div class="col-4">

    </div>
  </div></div>
  <hr>


  <footer>  
    <div>
      <span>聯絡我們: <a href="">email</a></br></span>
      <h4>Copyright © 2019 Simply Blessed Flower Store. All rights reserved</h4>
    </div>
  </footer>

  </body>
</html>








