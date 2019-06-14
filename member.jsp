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

<%

String member_name="", member_id="", member_email="", member_phone="",member_address="";



if(session.getAttribute("id")!=null)
{
	sql="use test";
	ResultSet rs;
	con.createStatement().execute(sql);
	sql="SELECT * FROM member WHERE id='"+session.getAttribute("id")+"'";
	rs =con.createStatement().executeQuery(sql);
	
	if(rs.next())
	{ 
		member_name=rs.getString(4);
		member_id=rs.getString(2);
		member_phone=rs.getString(6);
		member_email=rs.getString(5);
		member_address=rs.getString(7);
		 
		
		
	}
}
else
{
%>

  <script LANGUAGE="JavaScript">
                  alert("還沒登入!")
                  location.href="javascript:history.go(-1)"
                  </script> 
  
  <%
}

%>






<!DOCTYPE html>
<html style="height:100%;max-height:100%;">
<head lang="en">
	<title>會員中心</title>

	<!--初學者範本,請不要誤刪！！！-->
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/index2.css" type="text/css" media="screen">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style type="text/css">
	    html {
		    background-image: url(img/background.jpg);  
		    background-size: cover;
		    background-repeat: no-repeat;
		    background-attachment: fixed;
	    }
	    body {
	        background-color: rgba(255, 255, 255, 0.8);
	    }
	    hr{
	    	color: white;
	    	background-color: rgba(255, 255, 255, 0);
	    	text-align: center;
	    	height: 10px;
	    }
	    .int{
    	width: 300px;
    	height: 100px;
    	text-align: center;
    	vertical-align: center;
    	}
	</style>
</head>

<body style="height:100%;max-height:100%;max-width:100%;background-attachment: fixed;">
	<!--初學者範本,請不要誤刪！！！-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    <!--初學者範本到這裡結束,請不要誤刪！！！-->
	
	<section style="color: rgba(0, 0, 0, 0.5);" scroll="no">
  			<nav class="shift" scroll="no">
    			<ul>		
    				<div class="logo">
						<div><a href="index.jsp"><img src="img/logo.png" height="200" width="250"></a></div>
					</div>
      				 <li><a href="index.jsp">首頁</a></li>
              <li><a href="products.jsp">商品型錄</a>
                 <ul style=" color: rgba(0, 0, 0, 0.5);">
                <li><a href="products.jsp#white" >白色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="white1.jsp" >恰似·初見</a></li>
                  <li><a href="white2.jsp" >人間·繁星</a></li>
                  <li><a href="white3.jsp" >青丘·盎然</a></li>
                      <li><a href="white4.jsp" >悠然·子衿</a></li>
                      <li><a href="white5.jsp" >春風·十裡</a></li>
                      <li><a href="white6.jsp" >今日·限定</a></li>
                    </ul>
                </li>
                <li><a href="products.jsp#pink" >粉色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="pink1.jsp" >年少·童話</a></li>
                  <li><a href="pink2.jsp" >如沐·春風</a></li>
                  <li><a href="pink3.jsp" >一見·傾心</a></li>
                      <li><a href="pink4.jsp" >巧笑·嫣然</a></li>
                      <li><a href="pink5.jsp" >絢爛·時光</a></li>
                      <li><a href="pink6.jsp" >怦然·心動</a></li>
                    </ul>
                </li>
                <li><a href="products.jsp#red" >紅色系</a>
                <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="red1.jsp" >夢醒·餘生</a></li>
                  <li><a href="red2.jsp" >唯此·珍惜</a></li>
                  <li><a href="red3.jsp" >絢爛·煙火</a></li>
                      <li><a href="red4.jsp" >蝶舞·翩躚</a></li>
                      <li><a href="red5.jsp" >鍾情·於你</a></li>
                      <li><a href="red6.jsp" >紅白·玫瑰</a></li>
                    </ul>
                </li>
                    <li><a href="products.jsp#blue" >藍色系</a>
                    <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="blue1.jsp" >滿天·星火</a></li>
                  <li><a href="blue2.jsp" >天生·浪漫</a></li>
                  <li><a href="blue3.jsp" >萬裡·行路</a></li>
                      <li><a href="blue4.jsp" >年少·如初</a></li>
                      <li><a href="blue5.jsp" >清新·明雅</a></li>
                      <li><a href="blue6.jsp" >湛藍·心事</a></li>
                    </ul>
                    </li>
                    <li><a href="products.jsp#purple" >紫色系</a>
                    <ul style=" width:90px;color: rgba(0, 0, 0, 0.5);">
                  <li><a href="purple1.jsp" >溫暖·模樣</a></li>
                  <li><a href="purple2.jsp" >繁花·似錦</a></li>
                  <li><a href="purple3.jsp" >暖陽·盛開</a></li>
                      <li><a href="purple4.jsp" >清夢·星河</a></li>
                      <li><a href="purple5.jsp" >靜謐·相思</a></li>
                      <li><a href="purple6.jsp" >天上·人間</a></li>
                    </ul>
                    </li>
                  </ul>  
                </li> 
              <li><a href="#contact">關於我們</a>
                <ul style="background: #FFE4B5; color: rgba(0, 0, 0, 0.5);">
                  <li><a href="store.jsp" class="tablinks">品牌故事&店家資訊</a></li>
                <li><a href="questions.jsp" class="tablinks">常見問題</a></li>
                <li><a href="team.jsp" class="tablinks">創作團隊</a></li>
                  </ul>  
              </li>
              <li><a href="board.jsp">留言板</a></li>
                 <!-- 登入後改成member.jsp、登入前改成login+join.jsp-->
              <%                  
                if(!id.equals(""))
                	{
                out.print("<li><a href='member.jsp'>會員資料</a></li>");
                }
            else
            {
        out.print("<li><a href='login+join.jsp'>會員</a></li>");
    }
              %>
              <!-- 訪客人數-->
              
              <li><a href="cart.jsp" >購物車</a></li>
              <li><a href="checkout.jsp" >付款</a></li>
			  <li><a href="admin.jsp" >管理者登入</a></li>
			  <%
if(!id.equals(""))
out.println("hi，"+id+"，"+"<a href='logout.jsp'>logout</a>");

		
	%>

    			</ul>
  			</nav>
		</section>  
		
		<center>
			<header id="masthead">
				<h1>Simply Blessed</h1>
		</header>
	</center>	
		
	
	<!--會員中心-->
	<div style=" padding-top:150px;height:100%;max-height:100%;">
	
		<h1 align="center"><img src="img/center.png" class="int"></h1>  
		<hr>
		<!--會員資料區-->
		<center>
		<div>
			<h2>會員資料</h2>
			<p>ID   ：<%=member_id%></p>
            <p>名字   ：<%=member_name%></p>
			<p>電話   ：<%=member_phone%></p>
			<p>E-mail ：<%=member_email%></p>
			<p>收貨地址：<%=member_address%></p>
			<a href="member_update.jsp">修改</a>
		<hr>
	    </div>

		<!--訂單記錄-->
		<div>
			<h2>歷史訂單</h2>
 <%

String order_img="", order_name="", oder_id="", order_price="",order_amount="",order_date="";

if(session.getAttribute("id")!=null)
{
	sql="use test";
	ResultSet rs1;
	con.createStatement().execute(sql);
	sql="SELECT * FROM order1 WHERE id='"+session.getAttribute("id")+"'";
	rs1 =con.createStatement().executeQuery(sql);
	int i =1;
	while(rs1.next())
	{ 

		 		
    out.print("第"+i+"訂單");
    out.print("total$"+rs1.getString(4));
    out.print("date"+rs1.getString(5));
    out.print("收貨地址："+rs1.getString(11));
    
      out.print("<a href='consumeDetail.jsp?item="+rs1.getString(1)+"'>細節</a>");
  



    i++;
}
	%>

<%
}


%>
         




			<img src="<%=order_img%>" width="30"></img>
			<%=order_name%>
		<%=oder_id%>
		<%=order_price%>
		<%=order_amount%>
		<%=order_date%>
		 
		<hr>
		</div>	
	</center>
    </div>

		<footer>	
		<div>
		     <%@include file="counter.jsp" %> <!-- 訪客人數-->
			<span>聯絡我們: <a href="">email</a></br></span>
			<h4>Copyright © 2019 Simply Blessed Flower Store. All rights reserved</h4>
		</div>
	</footer>

</body>
</html>