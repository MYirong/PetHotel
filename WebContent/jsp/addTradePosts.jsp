<%@page import="org.cpu.pethotel.po.Users" %>
<%@page import="org.cpu.pethotel.po.Pets" %>
<%@page import="java.util.List" %>
<%@page import="org.cpu.pethotel.po.Friends" %>
<%@page import="org.cpu.pethotel.biz.IFriendsBiz" %>
<%@page import="org.cpu.pethotel.biz.ITradeBiz" %>
<%@page import="org.cpu.pethotel.biz.IUsersBiz" %>
<%@page import="org.cpu.pethotel.biz.impl.FriendsBizImpl" %>
<%@page import="org.cpu.pethotel.biz.impl.TradeBizImpl" %>
<%@page import="org.cpu.pethotel.biz.impl.UsersBizImpl" %>
<%@page import="org.cpu.pethotel.dao.ITradesDao" %>
<%@page import="org.cpu.pethotel.dao.IFriendsDao" %>
<%@page import="org.cpu.pethotel.dao.impl.FriendsDaoImpl" %>
<%@page import="org.cpu.pethotel.dao.impl.TradesDaoImpl" %>
<%@page import="org.cpu.pethotel.po.Trades" %>
<%@page import="org.cpu.pethotel.po.Users" %>
<%@page import="java.util.ArrayList" %>
<%@page import="org.cpu.pethotel.biz.IPetsBiz" %>
<%@page import="org.cpu.pethotel.biz.impl.PetsBizImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>交易中帖子填写</title>

<script language="javascript">

function showFriend(id){
	// 获取页面中所有的消息回复表单行对象的集合
	var lstTr = document.getElementsByName("friend");
	// 使用循环遍历每个对象将其显示属性设置为none
	for(var i=0; i<lstTr.length; i++){
		lstTr[i].style.display = "none";
	}
	// 将需要显示的回复表单行对象进行显示
	document.getElementById(id).style.display = "block";
}
function showReply(id){
	// 获取页面中所有的消息回复表单行对象的集合
	var lstTr = document.getElementsByName("reply");
	// 使用循环遍历每个对象将其显示属性设置为none
	for(var i=0; i<lstTr.length; i++){
		lstTr[i].style.display = "none";
	}
	// 将需要显示的回复表单行对象进行显示
	document.getElementById(id).style.display = "block";
}
function hiddenReply(id){
	document.getElementById(id).style.display = "none";
}


function DeleteById(id){
	 // 删除前的判断确认
	 if(confirm('确定删除好友吗?')){
		// 页面跳转至制定的servlet并携带参数
		 window.location="/PetHotel/DeleteFriendsServlet?fsid="+id;
	 }
}
function ShowOtherUser(uid){
	window.location="/PetHotel/ShowOtherUserServlet?uid="+uid;
}
</script>
<script type='text/javascript' src='js/jquery.js'></script>
<link href="css/styleM.css" rel="stylesheet" type="text/css">
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
          

/**** Add css        ****/
#bmonth,#bday,#emonth,#eday{
width:20px;

}
#byear,#eyear{
	width:30px;
	
}
div#contentText{
    padding-bottom:10px;
	width:100%;
	height:320px;
	
}
div#contentText textarea{
	resize:none;
	max-height:320px;
}
#upload input{
 width:150px;
}

/**** End css        ****/
</style>


</head>
<body>

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
</div>
<!--END THE MAIN CONTAINER-->

 
	
<!------------------------------------------   -->
    <div id="content"><div id="hero-slider">
	  <div id="mainMenu">
		<ul>
			<li><a href="/PetHotel/jsp/index.jsp"  class="home"></a></li>   
			 <li><a href="/PetHotel/jsp/search.jsp"  class="contacts"></a></li>
			<li><a href="/PetHotel/jsp/PersonIndex.jsp" class="aboutus"></a></li>
			<li><a href="/PetHotel/jsp/showPosts.jsp?pos=0&potype=publicSenderPosts"  class="services"></a></li>
            <li><a href="/PetHotel/jsp/showPosts.jsp?pos=0&potype=publicReceivePosts"  class="tricks"></a></li>
			<li><a href="/PetHotel/jsp/showPosts.jsp?pos=0&potype=publicSharePosts" class="breeds"></a></li>
		</ul>
	</div>
		<div class="mask">
	
		<div class="pmenu"><!--个人主页菜单-->
				<div id="blogHomeDiv">
					<a href="/PetHotel/jsp/PersonIndex.jsp" class="blogHome"></a>
				</div>
				<div id="blogPetsDiv">
					<a href="/PetHotel/FindAllPetsByUidServlet?choice=0" class="blogPets"></a>
				</div>
				<div id="blogFriendsDiv">
					<a href="/PetHotel/jsp/FriendTrends.jsp?pos=0"  class="blogFriends"></a>
				</div>
				<div id="blogTradesDiv">
					<a href="/PetHotel/ShowTradesServlet" class="blogTrades"></a>
				</div>
				<div id="blogMessagesDiv">
				   <a href="/PetHotel/jsp/PersonMessage.jsp?type=0"  class="blogMessages"></a>
				</div>
				<div id="blogSendDiv">
				   <a href="/PetHotel/jsp/showAllOwnPosts.jsp?pos=0"  class="blogSend"></a>
				</div>
			</div><!-- pmenu end-->

			<div class="slider-body">
				
				<div class="panel">     <!---->
<!-- ******************* Write Here ************************************-->					
	<div class="addSenderPosts" id="addSenderPosts" >
	<form action="/PetHotel/AddTradePostsServlet" id="addTradePostsForm"  name="addTradePostsForm"  method="post" enctype="multipart/form-data" >
						 <br />
			 <div id="outer">
			 	   		<div id="tilte" align="center">
							 <p ><strong><font size="5px">交易动态消息填写</font></strong>
				                    </p>
			                 </div><!-- end tilte-->
				  
				   
							  <div>
<%  String type = pageContext.getRequest().getParameter("type");
	List<Trades> lstTrades = new ArrayList<Trades>();
	List<Users> lstUsers= new ArrayList<Users>();
	List<Pets> lstPets = new ArrayList<Pets>();
	Users userC =(Users) session.getAttribute("user");
	int uid = userC.getUid();
    if(type.equals("all")){
	    	ITradeBiz tradeBiz = new TradeBizImpl();
			IUsersBiz usersBiz = new UsersBizImpl();
			IPetsBiz petsBiz = new PetsBizImpl();
			lstTrades = tradeBiz.findInTradeByUid(uid,"Deal");             
			for(Trades t:lstTrades){
				Users users = new Users();
				if(t.getUid()==uid){
					users = usersBiz.findById(t.getUse_uid());
				}else{
					users = usersBiz.findById(t.getUid());
				}
		 	 lstUsers.add(users);
		  	lstPets.add(petsBiz.findById(t.getPid()));
		
	      } 
    }
    if(type.equals("one")){
    	ITradesDao tradesDao = new TradesDaoImpl();
    	IUsersBiz usersBiz = new UsersBizImpl();
    	IPetsBiz petsBiz = new PetsBizImpl();
    	String strTid = pageContext.getRequest().getParameter("tid");
    	int tid = Integer.parseInt(strTid);
    	Trades trade = tradesDao.selectById(tid);
    	int ruid= ( uid==trade.getUid()?trade.getUse_uid():trade.getUid());
    	Users user = usersBiz.findById(ruid);
    	lstTrades.add(trade);
    	lstUsers.add(user);
    	lstPets.add(petsBiz.findById(trade.getPid()));
    	
    	
    }
  int pos=0;


%>							  
							   <label>接收方</label>
							   <select name="tid" id="tid">
							   <%for(Trades t: lstTrades){ %>
							    	<option value="<%=t.getTid() %>"><%=lstUsers.get(pos).getUname() %>&nbsp;&nbsp;宠物：<%=lstPets.get(pos).getPnickname() %>&nbsp;&nbsp;交易号：<%=t.getTid() %></option>
							    
							    <% pos++;}%>
							   </select>
							 
						       </div>
				  
 <div id="main">
							   <p>
							   帖子详情<br/>
							   </p>
							   <div id="contentText">
								   <textarea rows="55" cols="120" id="pocontext" id="pocontext" name="pocontext" >【描述宠物的状况信息或其他信息】                                            
								   </textarea>
							   </div>
				          </div><!-- main -->
				  
						  <div id="upload">
						  相关图片上传<input type="file" class="petsImage" id="petsImage1" name="petsImage1"/>
						            <input type="file" class="petsImage" id="petsImage2" name="petsImage2"/>
						            <input type="file" class="petsImage"  id="petsImage3" name="petsImage3" />
						           
						 <br /> 其他附件上传<input type="file" class="restfile"  id="restfile" name="restfile" />  
						  </div>
				  
						  <div id="end">
						
							  <input type="submit"  name="submit"   value="发布"/>
								 
						 </div>
	</div>   <!-- end outer-->
	</form>
 </div>  <!--end  addSenderPosts-->
	
	
<!-- ***********************End     *******************************-->	
				</div><!-- panel end -->
			</div>   <!-- slider-body -->
		</div> <!-- .mask -->
		
			<!-- ---------------------- -->
	<%  
		try {
				IFriendsDao friendDao = new FriendsDaoImpl();
				List<Friends> lstFriends = new ArrayList<Friends>();
				Users user = (Users)pageContext.getSession().getAttribute("user");
				lstFriends = (ArrayList<Friends>) friendDao.selectByUid(user.getUid());
			%>
			<div style="float:left;margin-left:20px; width:200px; border-color:#FC6; border-width:5px; border-style:double; text-align: center;">
		  <table width="100%" align="center">
		    <tr>
		      <td height="120" colspan="2"><img src="/PetHotel/upload/images/photo/${sessionScope.user.headportrait }" width="150" height="139"></td>
		    </tr>
		    <tr>
		      <td width="80">昵称：</td>
		      <td width="100">${sessionScope.user.uname }</td>
		    </tr>
		    <tr>
		      <td>积分：</td>
		      <td>${sessionScope.user.reputation }</td>
		    </tr>
		    <tr  align="center">
		    <td colspan="2"> <a href="/PetHotel/LogoutServlet">退出</a></td>
		    </tr>
		  </table>
		  <p>好友列表</p>
		  <div style="width:100%; max-height:200px; overflow-y:scroll;">
		  <%
		  IUsersBiz myuserBiz = new UsersBizImpl();
		  for (Friends friend : lstFriends) {
			  String uname=myuserBiz.findById(friend.getUse_uid()).getUname();
			  String photo=myuserBiz.findById(friend.getUse_uid()).getHeadportrait();
		  %>
		  <div style="width:100%; margin-bottom:5px;" >
		    <div style="width:100%; height:50px;">
		      <div style=" width:40%; float:left;"><img src="/PetHotel/upload/images/photo/<%=photo %>" width="40" height="40"></div>
		      <div style=" text-align:left; width:55%; margin-top:20px; float:left;"><a href="javascript:showFriend('friend<%=friend.getFsid() %>')"><%=uname %></a></div>
		    </div>
		    <div id="friend<%=friend.getFsid() %>" name="friend" style=" display:none; width:100%; height:20px;">
		      <div style=" width:50%; float:left;"><input type="submit" name="button2" id="button2" onClick="javascript:ShowOtherUser(<%=friend.getUse_uid() %>)" value="进入主页"></div>
		      <div style=" width:50%; float:left;"><label><input type="button" name="button" id="button<%=friend.getFsid() %>" onClick="javascript:DeleteById(<%=friend.getFsid() %>)" value="删除好友"></label></div>
		    </div>
		    
		  </div>
		  <%} %>
		  </div>
		  <div style=" width:90%; height:20px; border-width:4px; border-style:double; border-color:#09F;margin-left:5px;"><a href="/PetHotel/jsp/searchFriend.jsp">添加好友+</a></div>
		</div>
		
	<% } catch (java.lang.NullPointerException e) {
		
	}
      %> 
		<div class="clear"></div>
	</div><!-- hero-slider end-->
</div>   <!-- content end-->
<!------------------------  -->
    <div id="footer">Copyright © CPU Group All rights reserved.</div>
</body>
</html>
