<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>
<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="res/css/style.css" />






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>channel-add</title>
<!-- 添加表单验证 -->
<script type="text/javascript">
	//栏目名称：数字+字母+文字，结束之前不能全部都是数字，
	var CHKCNAME="^(?![0-9a-zA-Z]+$)[a-z|A-Z|0-9|\u4e00-\u9fa5]{2,4}$";
	//栏目序号：不能为空必须是纯数字
	var CHKSORT="^[1-9]{1,2}$";
	
	/* //验证栏目名称
	function chkcname(){
		//获取栏目名称
		var cnameEle=document.getElementById("cname");
		var cname=cnameEle.value;
		//定义匹配栏目名称的正则表达式
		var reg=new RegExp(CHKCNAME);
		//获取栏目名称是否输入成功的元素对象
		var spanEle=document.getElementById("resultCname");
		if(reg.test(cname)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="名称:数字和字母和汉字，不能以纯数字或纯字母并且不能低于二位大于四位 ";
			spanEle.style.color="red";
			//清空文本框
			cnameEle.value="";
			//重新聚焦
			cnameEle.focus();
			return false;
		}
	} */

	//验证栏目名称
	function chkcname(){
		//获取栏目名称
		var cname=$("#cname").val();
		//定义匹配栏目名称的 正则表达式
		var reg=new RegExp(CHKCNAME);
		if(reg.test(cname)){//正确
			$("#resultCname").html("✔");
		    $("#resultCname").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultCname").html("名称:数字和字母和汉字，不能以纯数字或纯字母并且不能低于二位大于四位");
		    $("#resultCname").css("color","red");
		  //清空文本框
		    $("#cname").val("");
		  //重新聚焦
	        $("#cname").focus();
	        return false;
		}
	}
/* 	//验证栏目序号
	function chksort(){
		//获取栏目名称
		var sortEle=document.getElementById("sort");
		var sort=sortEle.value;
		//定义匹配栏目序号的正则表达式
		var reg=new RegExp(CHKSORT);
		//获取栏目序号是否输入成功的元素对象
		var spanEle=document.getElementById("resultSort");
		if(reg.test(sort)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="序号:必须纯数字并且不能大于二位";
			spanEle.style.color="red";
			//清空文本框
			sortEle.value="";
			//重新聚焦
			sortEle.focus();
			return false;
		}
	} */
	//验证栏目序号
	function chksort(){
		//获取栏目序号
		var sort=$("#sort").val();
		//定义匹配栏目序号的 正则表达式
		var reg=new RegExp(CHKSORT);
		if(reg.test(sort)){//正确
			$("#resultSort").html("✔");
		    $("#resultSort").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultSort").html("序号:必须纯数字并且不能大于二位");
		    $("#resultSort").css("color","red");
		  //清空文本框
		    $("#sort").val("");
		  //重新聚焦
	        $("#sort").focus();
	        return false;
		}
	}
	
	//验证所有
	function chkAll(){
		return chkcname()&&chksort();
	}
</script>

</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 栏目管理 - 添加</div>
	<form class="ropt">
		<input type="submit" onclick="history.back()" value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="channeladd.do" method="post" onsubmit="return chkAll()" >
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody>
			<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">${msg }</span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						栏目名称:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="cname" id="cname" maxlength="100"
						
						/>
						<span id="resultCname"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						上级栏目:</td><td width="80%" class="pn-fcontent">
						<select name="pid">
						<c:forEach items="${channel}" var="channel">
						<option value="${channel.id}">${channel.cname}</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						栏目级别:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="lev" value="1" checked="checked"/>1
						<input type="radio" class="required" name="lev" value="2"/>2
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						是否叶子:</td><td width="80%" class="pn-fcontent">
						<input type="radio" class="required" name="isleaf" value="1" checked="checked"/>是
						<input type="radio" class="required" name="isleaf" value="2"/>否
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						栏目序号:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="sort" id="sort" maxlength="80"
				
						/>
						<span id="resultSort"></span>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交"/> &nbsp; <input type="reset" class="reset" value="重置"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>