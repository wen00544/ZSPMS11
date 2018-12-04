<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link href=" res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href=" res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href=" res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href=" res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href=" res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- 引时间控件 -->
<script type="text/javascript" src=" js/DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src=" res/fckeditor/fckeditor.js"></script>
<script src=" res/common/js/jquery.js" type="text/javascript"></script>
<script src=" res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src=" res/common/js/jquery.form.js" type="text/javascript"></script>
<script src=" res/common/js/lecheng.js" type="text/javascript"></script>
<script src=" res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href=" res/css/style.css" />






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>babasport-add</title>
<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="js/DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
//标题
var CHKTITLE="^(?![0-9a-zA-Z]+$)[a-z|A-Z|0-9|\u4e00-\u9fa5]{6,16}$";
//内容
var CHKCONTENT="^(?![0-9a-zA-Z]+$)[a-z|A-Z|0-9|\u4e00-\u9fa5]{4,}$";
//公告人
var CHKAUTHOR="^[\u4e00-\u9fa5]{2,}$";
//创建日期     yyyy-MM-dd  月份1-12     日期1-31
var CHKDATE="^([1-9][0-9]{3})-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$";

/* //验证标题
function chkTit(){
	//获取标题
	var titEle=document.getElementById("title");
	var title=titEle.value;
	//定义匹配标题的正则表达式
	var reg=new RegExp(CHKTITLE);
	//获取标题是否输入成功的元素对象
	var spanEle=document.getElementById("resultTit");
	if(reg.test(title)){//表示输入正确
		spanEle.innerHTML="√";
	    spanEle.style.color="green";
	    return true;
	}else{//输入失败
		spanEle.innerHTML="标题:数字和字母和汉字，不能以纯数字或纯字母并且不能低于六位";
	    spanEle.style.color="red";
	    
	    return false;
	}
}
//验证内容
function chkContent(){
	//获取内容
	var conEle=document.getElementById("content");
	var content=conEle.value;
	//定义匹配内容的正则表达式
	var reg=new RegExp(CHKCONTENT);
	//获取内容是否输入成功的元素对象
	var spanEle=document.getElementById("resultContent");
	if(reg.test(content)){//表示输入正确
		spanEle.innerHTML="√";
	    spanEle.style.color="green";
	    return true;
	}else{//输入失败
		spanEle.innerHTML="内容:数字和字母和汉字，不能以纯数字或纯字母并且不能低于四位";
	    spanEle.style.color="red";
	 
	    return false;
	}
}
//验证作者
function chkAt(){
	//获取公告人姓名
	var atEle=document.getElementById("author");
	var author=atEle.value;
	//定义匹配姓名的正则表达式
	var reg=new RegExp(CHKAUTHOR);
	//获取姓名是否输入成功的元素对象
	var spanEle=document.getElementById("resultAt");
	if(reg.test(author)){//表示输入正确
		spanEle.innerHTML="√";
	    spanEle.style.color="green";
	    return true;
	}else{//输入失败
		spanEle.innerHTML="必须是汉字而且是一个汉字以上";
	    spanEle.style.color="red";
	 
	    return false;
	}
}
//验证日期
function chkcrtime(){
	//获取日期
	var crtimeEle=document.getElementById("crtime");
	var crtime=crtimeEle.value;
	//定义匹配日期的正则表达式
	var reg=new RegExp(CHKDATE);
	//获取日期是否输入成功的元素对象
	var spanEle=document.getElementById("resultCrtime");
	if(reg.test(crtime)){//表示输入正确
		spanEle.innerHTML="✔";
		spanEle.style.color="green";
		return true;
	}else{//输入失败
		spanEle.innerHTML="日期格式：yyyy-MM-dd";
		spanEle.style.color="red";
	
		return false;
	}
} */

//验证标题
function chkTit(){
	//获取标题
	var title=$("#title").val();
	//定义匹配标题的 正则表达式
	var reg=new RegExp(CHKTITLE);
	if(reg.test(title)){//正确
		$("#resultTit").html("✔");
	    $("#resultTit").css("color","green");
	    return true;
	}else{//输入失败
		$("#resultTit").html("标题:数字和字母和汉字，不能以纯数字或纯字母并且不能低于六位");
	    $("#resultTit").css("color","red");
	  //清空文本框
	    $("#title").val("");
	  //重新聚焦
        $("#title").focus();
        return false;
	}
}

//验证内容
function chkContent(){
	//获取内容
	var content=$("#content").val();
	//定义匹配内容的 正则表达式
	var reg=new RegExp(CHKCONTENT);
	if(reg.test(content)){//正确
		$("#resultContent").html("✔");
	    $("#resultContent").css("color","green");
	    return true;
	}else{//输入失败
		$("#resultContent").html("内容:数字和字母和汉字，不能以纯数字或纯字母并且不能低于四位");
	    $("#resultContent").css("color","red");
	  //清空文本框
	    $("#content").val("");
	  //重新聚焦
        $("#content").focus();
        return false;
	}
}


//验证作者
function chkAt(){
	//获取作者
	var author=$("#author").val();
	//定义匹配作者的 正则表达式
	var reg=new RegExp(CHKAUTHOR);
	if(reg.test(author)){//正确
		$("#resultAt").html("✔");
	    $("#resultAt").css("color","green");
	    return true;
	}else{//输入失败
		$("#resultAt").html("必须是汉字而且是一个汉字以上");
	    $("#resultAt").css("color","red");
	  //清空文本框
	    $("#author").val("");
	  //重新聚焦
        $("#author").focus();
        return false;
	}
}

//验证日期
function chkcrtime(){
	//获取日期
	var crtime=$("#crtime").val();
	//定义匹配日期的 正则表达式
	var reg=new RegExp(CHKDATE);
	if(reg.test(crtime)){//正确
		$("#resultCrtime").html("✔");
	    $("#resultCrtime").css("color","green");
	    return true;
	}else{//输入失败
		$("#resultCrtime").html("日期格式：yyyy-MM-dd");
	    $("#resultCrtime").css("color","red");
	  //清空文本框
	    $("#crtime").val("");
	  //重新聚焦
        $("#crtime").focus();
        return false;
	}
}


//验证所有
function chkAll(){
	return chkTit()&&chkContent()&&chkAt()&&chkcrtime();
}
</script>

<style type="">
.h2_ch a:hover, .h2_ch a.here {
    color: #FFF;
    font-weight: bold;
    background-position: 0px -32px;
}
.h2_ch a {
    float: left;
    height: 32px;
    margin-right: -1px;
    padding: 0px 16px;
    line-height: 32px;
    font-size: 14px;
    font-weight: normal;
    border: 1px solid #C5C5C5;
    background: url(' res/lecheng/img/admin/bg_ch.gif') repeat-x scroll 0% 0% transparent;
}
a {
    color: #06C;
    text-decoration: none;
}
</style>

</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 文章管理 - 修改</div>
	<form class="ropt">									
		<input type="submit" onclick="history.back()" value="返回列表" class="return-button"/>
	</form>												
	<div class="clear"></div>
</div>

<div class="body-box" style="float:right">
	<form id="jvForm" action="articleupdate.do?id=${article.id }" method="post" onsubmit="return chkAll()" >
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody id="tab_1">
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						文章标题:</td><td width="80%" class="pn-fcontent">
								<input type="text" name="title" id="title" value="${article.title }" 
								/>
								<span id="resultTit"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						文章内容:</td><td width="80%" class="pn-fcontent">					  
						<textarea name="content" id="content" rows="20" cols="40" >${article.content }</textarea>
					<span id="resultContent"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						文章作者:</td><td width="80%" class="pn-fcontent">
						<input type="text" name="author" id="author" value="${article.author }" />
					<span id="resultAt"></span>
					</td>
				</tr>
				<tr>
				<td width="20%" class="pn-flabel pn-flabel-h">
						创建日期:</td><td width="80%" class="pn-fcontent">
						<input type="text"  name="crtime" id="crtime" maxlength="80" value="${article.crtime }"  class="Wdate" 
						 onclick="WdatePicker()"
						/>
					<span id="resultCrtime"></span>
					</td>
				</tr>
			<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						所属栏目:</td><td width="80%" class="pn-fcontent">
						<select name="channel">
							<c:forEach items="${tchannes}" var="tchanne">
								<option value="${tchanne.id}" name="id">${tchanne.cname}</option>
							</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						是否推荐:</td><td width="80%" class="pn-fcontent">
								
					<c:if test="${article.isremod==1 }">
						<input type="radio" class="required" name="isremod" value="1" checked="checked"/>是
						<input type="radio" class="required" name="isremod" value="2"/>否
					</c:if>
					<c:if test="${article.isremod==2 }">
						<input type="radio" class="required" name="isremod" value="1" />是
						<input type="radio" class="required" name="isremod" value="2" checked="checked"/>否
					</c:if>
								
					</td>
				</tr>
			
					
				
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						是否热点:</td><td width="80%" class="pn-fcontent">
						<c:if test="${article.ishot==1 }">
						<input type="radio" class="required" name="ishot" value="1" checked="checked"/>是
						<input type="radio" class="required" name="ishot" value="2"/>否
					</c:if>
					<c:if test="${article.ishot==2 }">
						<input type="radio" class="required" name="ishot" value="1" />是
						<input type="radio" class="required" name="ishot" value="2" checked="checked"/>否
					</c:if>
							
						
							
						
							
					</td>
				</tr>
				
				
				
				
				
			</tbody>
			<tbody id="tab_2" style="display: none">
				<tr>
					<td >
						<textarea rows="10" cols="10" id="productdesc" name="description"></textarea>
					</td>
				</tr>
			</tbody>
			<tbody id="tab_3" style="display: none">
				<tr>
					<td >
						<textarea rows="15" cols="136" id="productList" name="packageList"></textarea>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交" onclick="return confirm('确认修改')" /> &nbsp; <input type="reset" class="reset" value="重置"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>