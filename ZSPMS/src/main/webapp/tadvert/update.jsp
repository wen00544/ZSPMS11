<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="js/DatePicker/WdatePicker.js"></script>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="res/css/style.css" />
<title>advert-update</title>
<!-- 添加表单验证 -->
<script type="text/javascript">
	//标题：数字+字母+文字，结束之前不能全部都是数字，6-16
	var CHKTITLE="^(?![0-9a-zA-Z]+$)[a-z|A-Z|0-9|\u4e00-\u9fa5]{6,16}$";
	//公告时间     yyyy-MM-dd  月份1-12     日期1-31
	var CHKDATE="^([1-9][0-9]{3})-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$";
	//内容：数字+字母+文字，结束之前不能全部都是数字，4-15
	var CHKCONTENT="^(?![0-9a-zA-Z]+$)[a-z|A-Z|0-9|\u4e00-\u9fa5]{4,15}$";
	//真实姓名
	var CHKCRMAN="^[\u4e00-\u9fa5]{2,}$";
	
	/* //验证标题
	function chktitle(){
		//获取标题
		var titleEle=document.getElementById("title");
		var title=titleEle.value;
		//定义匹配标题的正则表达式
		var reg=new RegExp(CHKTITLE);
		//获取标题是否输入成功的元素对象
		var spanEle=document.getElementById("resultTitle");
		if(reg.test(title)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="标题:数字和字母和汉字，不能以纯数字或纯字母并且不能低于六位 ";
			spanEle.style.color="red";
		
			return false;
		}
	}
	
	
	//验证公告时间
	function chkcrtime(){
		//获取公告时间
		var crtimeEle=document.getElementById("crtime");
		var crtime=crtimeEle.value;
		//定义匹配公告时间的正则表达式
		var reg=new RegExp(CHKDATE);
		//获取公告时间是否输入成功的元素对象
		var spanEle=document.getElementById("resultCrtime");
		if(reg.test(crtime)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="日期格式：yyyy-MM-dd 例：2000-02-02 ";
			spanEle.style.color="red";
			
			return false;
		}
	}
	//内容
	function chkcontent(){
		//获取内容
		var contentEle=document.getElementById("content");
		var content=contentEle.value;
		//定义匹配内容的正则表达式
		var reg=new RegExp(CHKCONTENT);
		//获取内容是否输入成功的元素对象
		var spanEle=document.getElementById("resultContent");
		if(reg.test(content)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="内容:数字和字母和汉字，不能以纯数字或纯字母并且不能低于四位 ";
			spanEle.style.color="red";
		
			return false;
		}
	}
	//公告人
	function chkcrman(){
		//获取公告人
		var crmanEle=document.getElementById("crman");
		var crman=crmanEle.value;
		//定义匹配公告人的正则表达式
		var reg=new RegExp(CHKCRMAN);
		//获取公告人是否输入成功的元素对象
		var spanEle=document.getElementById("resultCrman");
		if(reg.test(crman)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="必须是汉字而且是一个汉字以上";
			spanEle.style.color="red";
		
			return false;
		}
	} */
	
	//验证标题
	function chktitle(){
		//获取标题
		var title=$("#title").val();
		//定义匹配标题的 正则表达式
		var reg=new RegExp(CHKTITLE);
		if(reg.test(title)){//正确
			$("#resultTitle").html("✔");
		    $("#resultTitle").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultTitle").html("表题:数字和字母和汉字，不能以纯数字或纯字母并且不能低于六位");
		    $("#resultTitle").css("color","red");
		
		  //重新聚焦
	        $("#title").focus();
	        return false;
		}
	}
	
	//验证公告时间
	function chkcrtime(){
		//获取公告时间
		var crtime=$("#crtime").val();
		//定义匹配公告时间的 正则表达式
		var reg=new RegExp(CHKDATE);
		if(reg.test(crtime)){//正确
			$("#resultCrtime").html("✔");
		    $("#resultCrtime").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultCrtime").html("日期格式：yyyy-MM-dd 例：2000-02-02");
		    $("#resultCrtime").css("color","red");
		
		  //重新聚焦
	        $("#crtime").focus();
	        return false;
		}
	}
	
	//内容
	function chkcontent(){
		//获取内容
		var content=$("#content").val();
		//定义匹配内容的 正则表达式
		var reg=new RegExp(CHKCONTENT);
		if(reg.test(content)){//正确
			$("#resultContent").html("✔");
		    $("#resultContent").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultContent").html("内容:数字和字母和汉字，不能以纯数字或纯字母并且不能低于四位 ");
		    $("#resultContent").css("color","red");
		
		  //重新聚焦
	        $("#content").focus();
	        return false;
		}
	}
	//公告人
	function chkcrman(){
		//获取公告人
		var crman=$("#crman").val();
		//定义匹配公告人的 正则表达式
		var reg=new RegExp(CHKCRMAN);
		if(reg.test(crman)){//正确
			$("#resultCrman").html("✔");
		    $("#resultCrman").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultCrman").html("必须是汉字而且是一个汉字以上");
		    $("#resultCrman").css("color","red");
		
		  //重新聚焦
	        $("#crman").focus();
	        return false;
		}
	}
	
	
	
	//验证所有
	function chkAll(){
		return chktitle()&&chkcontent()&&chkcrtime()&&chkcrman();
	}
</script>


</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 广告管理 - 修改</div>
	<form class="ropt">
		<input type="submit" onclick="history.back()"
		value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="advertupdate.do?id=${adver.id}" method="post" onsubmit="return chkAll()" >
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired"></span>
						<span class="pn-frequired">${msg}</span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						标题:
					</td>
					<td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="title" id="title" maxlength="100"
						value="${adver.title }"
							/>
								<span id="resultTitle"></span>
					</td>
				</tr>
				
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						内容:
					</td>
					<td width="80%" class="pn-fcontent">
					<input type="text" class="required" name="content"  id="content" maxlength="80"
						value="${adver.content }"
						/>
					<span id="resultContent"></span>
					</td>
				</tr>
				
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						公告时间:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="Wdate" name="crtime" id="crtime" maxlength="80"
						value="${adver.crtime }"
						 onclick="WdatePicker()"
						/>
						<span id="resultCrtime"></span>
					</td>
				</tr>
				
			<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						公告人:
					</td>
					<td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="crman" id="crman" maxlength="100"
						value="${adver.crman }"	/>
						<span id="resultCrman"></span>
					</td>
				</tr>
			
			</tbody>
			<tbody>
				<tr>
					<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交"  onclick="return confirm('确认修改')"/> &nbsp; <input type="reset" class="reset" value="重置"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>