<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bookpedia</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
	$(function(){
		// 열기
		$('#login').click(function(){
			 $("#dialog").dialog({
			         autoOpen:false,
			         width:280,
			         height:230,
			         modal : true
			    }).dialog("open");
		   });
		// 닫기
		$('#canBtn').click(function(){
			$('#dialog').dialog("close");
		});
	});
</script>
</head>
<body>
<body id="top">
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/02.png');"> 
<div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="main.do">Bookpedia</a></h1>
      </div>
      <!-- ################################################################################################ -->
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="main.do">Home</a></li>
          <c:if test="${sessionScope.id==null}">
          <li><a href="#" id="#">회원가입</a></li>
          <li><a href="#" id="login">로그인</a></li>
          </c:if>
          <c:if test="${sessionScope.id!=null}">
          <li><a href="#" id="logout">로그아웃</a></li>
          <li><a class="drop" href="#" id="mypage">마이페이지</a>
            <ul>
              <li><a href="#">내정보</a></li>
              <li><a href="#">회원탈퇴</a></li>
              <li><a class="drop" href="#">Level 2 + Drop</a>
                <ul>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                </ul>
              </li>
            </ul>
          </li>
         </c:if>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
 </div>
<div id="dialog" title="로그인" style="display:none">
<table class="table">
   <tr>
    <th width=20% align="right">ID</th>
    <td width=80%><input type=text id="id" size=15 class="input-sm"></td>
   </tr>
   <tr>
    <th width=20% align="right">PW</th>
    <td width=80%><input type=password id="pwd" size=15 class="input-sm"></td>
   </tr>
   <tr>
     <td colspan="2" align="center">
      <input type=button value="로그인" id="logBtn" style="float: left">
      <input type=button value="취소" id="canBtn" style="float: left">
     </td>
   </tr>
</table>
</div>
</body>
</html>