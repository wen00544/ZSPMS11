<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.util.Date"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix ="fmt" %>
<title></title>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function setStatusTxt(txt){
		//window其实就是窗口的意思，只有你打开窗口才会有状态栏
		window.status=txt;
	}
	function getTime(){
		//日期函数
		var date=new Date();
		//年
		var year=date.getFullYear();
		//月 
		var mon=date.getMonth()+1;
		//日
		var d=date.getDate();
		//时
		var hour=date.getHours();
		if(hour<10){
			hour="0"+hour;
		}
		//分
		var min=date.getMinutes();
		if(min<10){
			min="0"+min;
		}
		//秒
		var sec=date.getSeconds();
		if(sec<10){
			sec="0"+sec;
		}
		//document.write(year+"年"+mon+"月"+d+"日     "+hour+":"+min+":"+sec);
		document.getElementById("currentTime").innerHTML=year+"年"+mon+"月"+d+"日     "+hour+":"+min+":"+sec;
	}
	//经过指定的毫秒数重复执行代码
	window.setInterval(getTime, 1000);
</script>



</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
 
    <td width="61%" height="64"><img src="images/logo.gif" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt"><b>${cuser.realname}</b> &nbsp;&nbsp;&nbsp;&nbsp;
<%
if(new Date().getHours()>=0 && new Date().getHours()<=12){
	//看看当前时间是在0点到中午12点之间
%>
上午好
<%
}
else{
%>
下午好
<%
}
%>
, <span id="currentTime"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;感谢登录使用！</td>
       <td width="22%">  <a href="login.do"  target="_top"   >
        <img src="images/out.gif" alt="安全退出" width="46" height="20" border="0" onclick="javascript:window.history.go(-(history.length-1))">
       </a> </td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>