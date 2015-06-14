<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Template Name</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<script type="text/javascript" src="js/styleswitch.js"></script>

<script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>

<script type='text/javascript'>
$(document).ready(function() {

        //when the user hovers over the div that contains our html...
        $('.box_container').hover(function(){
            //... we get the width of the div and split it by 2  ...
            var width = $(this).outerWidth() / 2;
            /*... and using that width we move the left "part" of the image to left and right "part"
            to right by changing it's indent from left side or right side... '*/
            $(this).find('.left').animate({ right : width },{queue:false,duration:300});
            $(this).find('.right').animate({ left : width },{queue:false,duration:300});
        }, function(){
            //... and when he hovers out we get the images back to their's starting position using the same function... '
            $(this).find('.left').animate({ right : 0 },{queue:false,duration:300});
            $(this).find('.right').animate({ left : 0 },{queue:false,duration:300});
            //... close it and that's it
        });

});
</script>

<script type="text/javascript" src="js/jquery-1.4.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollto.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	$('#hero-slider ul a').click(function () {
	
		//reset all the items
		$('.customBlock ul a').removeClass('active');
		
		//set current item as active
		$(this).addClass('active');	
		
		//scroll it to the right position
		$('.mask').scrollTo($(this).attr('rel'), 300);
		
		//disable click event
	    return false;		
		
	});
	
});
</script>
<style>
body, html {
	height: 100%;
    margin: 0;
}
body {
	background-image: url(images/bg1.jpg);
	background-repeat: repeat-x;
	background-position: top left;
	background-color: #1eb3b2;
}

#wrapper {
	width: 1020px;
	margin: 0 auto;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 15px;
	line-height: 20px;
	color: #333333;
}
#header {
	background-repeat: no-repeat;
	height: 353px;
	background-image: url(images/header.png);
}
.box_container{
	min-width:252px; /* we must set a specific width of the container, so it doesn't strech when the image starts moving */
	min-height:124px; /* important */
	overflow:hidden; /* hide the content that goes out of the div */
	/*just styling bellow*/
	color:white;
	clear: both;
	margin: 220px 0 0 750px;
	position: absolute;
	background-image: url(images/treat_.png);
	background-repeat: no-repeat;
    }
	
.images_holder{
    position:absolute; /* this is important, so the div is positioned on top of the text */
    }
	
.image_div {
        position:relative; /* important so we can work with the left or right indent */
        overflow:hidden; /* hide the content outside the div (this is how we will hide the part of the image) */
        width:50%; /* make it 50% of the whole images_holder */
        float:left; /* make then inline */
    }
	
.right img{
        margin-left: -100%; /* 100% is in this case 50% of the image, so this is how we show the second part of the image */
    }
	
.clear{
        clear:both;
    }
#space{
width:1020px;
height:12px;
background-color:#00FFFF;
}
#content {
	min-height:618px;
	clear: both;
	/*   Change??? backgrountd-image*/
	background-image: url(images/box1.gif);
	background-repeat:repeat-y;
	padding-top:20px;

}
#hero-slider {
	min-width:950px;
	margin:0 auto;
}

#hero-slider .mask {
	float:left;
	width:737px;
	min-height:578px;
	overflow:hidden;
	text-align:left;
	/*   Change??? backgrountd-image*/
	/*background-image: url(images/box1.gif);*/
	 -moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-top-color: #999;
	border-top-width: 5px;
	border-top-style: solid;
	border-right-color: #999;
	border-right-width: 5px;
	border-right-style: solid;
	background-color:#FFF;
	margin-right: 0;
	margin-bottom: 0;
	padding: 10px 20px 10px 20px;
}

#hero-slider .panel { 
	float:left;
	width:737px;
	min-height:550px;
	overflow:hidden;
	text-align:left;
	margin-right: 0;
	margin-bottom: 0;
}
#mainMenu{
  height:618px;
   float:left;
   margin-right:15px;
   
  
}
#hero-slider ul {
	margin:0;
	list-style:none;
	float:left;
	height:618px;
	 -moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-right-color: #999;
	border-right-width: 5px;
	border-right-style: solid;
	padding-right:5px;
	
	
}

#hero-slider ul li {
	margin-bottom: 4px;
}

#hero-slider ul a {
	outline:none; 
	text-decoration: underline;
	display:block;
	width:127px; 
	height:98px; 
	text-indent:-999em;	
}

#hero-slider a.home {
	background: url(images/b1.png) no-repeat 0 0;
}
#hero-slider a.aboutus {
	background: url(images/b2.png) no-repeat 0 0;
}
#hero-slider a.services{
	background: url(images/b3.png) no-repeat 0 0;
}
#hero-slider a.tricks {
	background: url(images/b4.png) no-repeat 0 0;
}
#hero-slider a.breeds {
	background: url(images/b5.png) no-repeat 0 0;
}
#hero-slider a.contacts {
	background: url(images/b6.png) no-repeat 0 0;
}

#hero-slider a:hover {
	background-position: -126px;
}



.panel h2 {
	color:#0058a9;
}

.panel p {
	color:#666;
}

.clear {clear:both}
.leftimg {
	float: left;
	padding-right: 15px;
	display: block;
}
.pinktext {
	font-weight: bold;
	color: #FF0066;
}
#greenbox {
	background-image: url(images/love_dog.gif);
	background-repeat: no-repeat;
	float: left;
	height: 136px;
	width: 278px;
	padding: 70px 25px 0 30px;
	color: #FFFFFF;
	clear: left;
	margin-left: 10px;
}
#bluebox {
	background-image: url(images/latest_news.gif);
	background-repeat: no-repeat;
	float: left;
	height: 136px;
	width: 278px;
	padding: 70px 25px 0 30px;
	color: #FFFFFF;
	margin-left: 20px;
}
#footer {
	padding: 10px;
	text-align: center;
	margin-bottom: 10px;
	color: #FFFFFF;
}
.login{
	width:630px;
	height:30px;
	
}
.pmenu{
	height:49px;
	width:450px;
	 -moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-bottom-color: #999;
	border-bottom-width: 5px;
	border-bottom-style: solid;
}
.pmenu div{
   width:64px;
   height:49px;
   margin-left:10px;
   float:left;
  
}
.pmenu div a{
    outline:none; 
	text-decoration: underline;
	display:block;
	width:64px; 
	height:49px; 
	text-indent:-999em;	
	
}
.pmenu #blogHomeDiv a{
	background: url(images/person1.png) no-repeat 0 0;
}
.pmenu #blogHomeDiv a:hover{
	background-position: -63px;
}
.pmenu #blogPetsDiv a{
	background: url(images/person2.png) no-repeat 0 0;
}
.pmenu #blogPetsDiv a:hover{
	background-position: -63px;
}
.pmenu #blogFriendsDiv a{
	background: url(images/person3.png) no-repeat 0 0;
}
.pmenu #blogFriendsDiv a:hover{
	background-position: -63px;
}
.pmenu #blogTradesDiv a{
	background: url(images/person4.png) no-repeat 0 0;
}
.pmenu #blogTradesDiv a:hover{
	background-position: -63px;
}
.pmenu #blogMessagesDiv a{
	background: url(images/person5.png) no-repeat 0 0;
}
.pmenu #blogMessagesDiv a:hover{
	background-position: -63px;
}
.pmenu #blogSendDiv a{
	background: url(images/person6.png) no-repeat 0 0;
}
.pmenu #blogSendDiv a:hover{
	background-position: -63px;
}

/**** Add css        ****/


/**** End css        ****/
</style>


</head>
<body>
<div id="wrapper">
    <div id="header">
<div class='box_container'>
  <!--START THE IMAGE PARTS HOLDER-->
  <div class='images_holder'>
    <!--INSERT THE SAME IMAGE IN 2 DIVS, THEY BOTH HAVE image_div CLASS AND left OR right CLASS DEPENDING ON POSITION-->
    <div class='image_div left'><img class='box_image' src='images/treat.png' style='width:251px'/></div>
    <div class='image_div right'><img class='box_image' src='images/treat.png' style='width:251px'/></div>
    <!-- WE USED CSS FLOAT PROPERY, SO WE NEED TO CLEAR NOW-->
    <div class='clear'></div>
  </div>
  <!--END THE IMAGE PARTS HOLDER-->
</div>
<!--END THE MAIN CONTAINER-->
    </div>
	
<div class="login">
    <form id="form" method="post" action="/nk10-Practice/AddDeptServlet">
    <table width="625" >
    <tr>
      <td width="64" height="28" align="right" valign="middle" bgcolor="#FFCC33">用户名：</td>
      <td width="168" align="center" valign="middle" bgcolor="#CCCCCC"><input id="username" type="text" name="username"/></td>
      <td width="58" align="right" bgcolor="#FFCC33">密码：</td>
      <td width="184" align="center" valign="middle" bgcolor="#CCCCCC"><input id="password" type="password" name="password"/></td>
      <td width="58" align="center" bgcolor="#FFCC33"><input type="button" name="enter" id="button2" onClick="javascript:;" value="登录" /></td>
      <td width="65" align="center" bgcolor="#FFCC33"><input type="button" name="login" id="button" onClick="javascript:register();" value="注册"></td>
    </tr>
    </table>
    </form>
 </div>
 
 <div id="space">
 
 </div>
<!------------------------------------------   -->
    <div id="content"><div id="hero-slider">
	  <div id="mainMenu">
			<ul>
				<li><a href="/PetHotel"  class="home"></a></li>   
				 <li><a href="#"  class="contacts"></a></li>
				<li><a href="#" class="aboutus"></a></li>
				<li><a href="#"  class="services"></a></li>
				<li><a href="#"  class="tricks"></a></li>
				<li><a href="#" class="breeds"></a></li>
			</ul>
		</div>
		
		<div class="mask">
			<div class="pmenu"><!--个人主页菜单-->
				<div id="blogHomeDiv">
					<a href="PersonIndex.html" class="blogHome"></a>
				</div>
				<div id="blogPetsDiv">
					<a href="Pets.html" class="blogPets"></a>
				</div>
				<div id="blogFriendsDiv">
					<a href="Friends.html"  class="blogFriends"></a>
				</div>
				<div id="blogTradesDiv">
					<a href="TradeDetiles.html" class="blogTrades"></a>
				</div>
				<div id="blogMessagesDiv">
				   <a href="Message.html"  class="blogMessages"></a>
				</div>
				<div id="blogSendDiv">
				   <a href=""  class="blogSend"></a>
				</div>
					
			</div><!-- pmenu end-->
				
				
			<div class="slider-body">
				
				<div class="panel">     
<!-- ******************** Write Here*******************************-->	



<!-- ***********************End     *******************************-->	
				</div><!-- panel end -->
			</div>   <!-- slider-body -->
		</div> <!-- .mask -->
		<div class="clear"></div>
	</div><!-- hero-slider end-->
</div>   <!-- content end-->
<!------------------------  -->
    <div id="footer">Copyright © CPU Group All rights reserved.</div>
</div>
</body>
</html>
