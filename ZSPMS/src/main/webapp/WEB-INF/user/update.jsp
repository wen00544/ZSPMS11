<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="../res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="res/fckeditor/fckeditor.js"></script>
<script src="../res/common/js/jquery.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="../res/common/js/lecheng.js" type="text/javascript"></script>
<script src="../res/lecheng/js/admin.js" type="text/javascript"></script>
<!-- 引入jQuery -->
<script type="text/javascript" language="javascript" src="js/jquery-1.11.0.min.js"></script>
<!-- 引入日期控件 -->
<script type="text/javascript" language="javascript" src="../js/DatePicker/WdatePicker.js"></script>
<link rel="stylesheet" href="res/css/style.css" />
<title>user-update</title>

<!-- 添加表单验证 -->
<script type="text/javascript">
	//用户名：数字+字母，结束之前不能全部都是数字，6-16
	var CHKLOGINNAME="^(?![0-9]+$)[a-zA-Z0-9]{6,16}$";
	
	//出生日期     yyyy-MM-dd  月份1-12     日期1-31
	var CHKDATE="^([1-9][0-9]{3})-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$";
	//邮箱xxxxxx@xxx.com,可以包含_      企业邮箱qwe@huewei.com.cn
	var CHKEMAIL="^[a-zA-Z0-9_]+@[a-z0-9]{2,5}(\\.[a-z]{2,3}){1,2}$";
	//真实姓名
	var CHKREALNAME="^[\u4e00-\u9fa5]{2,}$";
	
	/* //验证用户名
	function chkloginname(){
		//获取用户名
		var lgEle=document.getElementById("loginname");
		var loginname=lgEle.value;
		//定义匹配用户名的正则表达式
		var reg=new RegExp(CHKLOGINNAME);
		//获取用户名是否输入成功的元素对象
		var spanEle=document.getElementById("resultName");
		if(reg.test(loginname)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="用户名必须包含数字和字母，并且不能低于六位";
			spanEle.style.color="red";
			
			return false;
		}
	}
	

	//验证出生日期
	function chkbirthday(){
		//获取出生日期
		var dateEle=document.getElementById("birthday");
		var birthday=dateEle.value;
		//定义匹配出生日期的正则表达式
		var reg=new RegExp(CHKDATE);
		//获取出生日期是否输入成功的元素对象
		var spanEle=document.getElementById("resultBirthday");
		if(reg.test(birthday)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="日期格式：yyyy-MM-dd";
			spanEle.style.color="red";
			
			return false;
		}
	}
	//邮箱
	function chkemail(){
		//获取邮箱
		var emailEle=document.getElementById("email");
		var email=emailEle.value;
		//定义匹配邮箱的正则表达式
		var reg=new RegExp(CHKEMAIL);
		//获取邮箱是否输入成功的元素对象
		var spanEle=document.getElementById("resultEmail");
		if(reg.test(email)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="xxxxxx@xxx.com,可以包含_ ";
			spanEle.style.color="red";
			
			return false;
		}
	}
	//真实姓名
	function chkrealname(){
		//获取真实姓名
		var realnameEle=document.getElementById("realname");
		var realname=realnameEle.value;
		//定义匹配真实姓名的正则表达式
		var reg=new RegExp(CHKREALNAME);
		//获取真实姓名是否输入成功的元素对象
		var spanEle=document.getElementById("resultRealname");
		if(reg.test(realname)){//表示输入正确
			spanEle.innerHTML="✔";
			spanEle.style.color="green";
			return true;
		}else{//输入失败
			spanEle.innerHTML="必须是汉字而且是一个汉字以上";
			spanEle.style.color="red";
			
			return false;
		}
	} */
	

	//验证用户名
	function chkloginname(){
		//获取用户名
		var loginname=$("#loginname").val();
		//定义匹配用户名的 正则表达式
		var reg=new RegExp(CHKLOGINNAME);
		if(reg.test(loginname)){//正确
			$("#resultName").html("✔");
		    $("#resultName").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultName").html("用户名必须包含数字和字母，并且不能低于六位");
		    $("#resultName").css("color","red");
		
		  //重新聚焦
	        $("#loginname").focus();
	        return false;
		}
	}
	
	
	//验证出生日期
	function chkbirthday(){
		//获取出生日期
		var birthday=$("#birthday").val();
		//定义匹配出生日期的 正则表达式
		var reg=new RegExp(CHKDATE);
		if(reg.test(birthday)){//正确
			$("#resultBirthday").html("✔");
		    $("#resultBirthday").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultBirthday").html("日期格式：yyyy-MM-dd");
		    $("#resultBirthday").css("color","red");
		 
		  //重新聚焦
	        $("#birthday").focus();
	        return false;
		}
	}
	
	//邮箱
	function chkemail(){
		//获取邮箱
		var email=$("#email").val();
		//定义匹配邮箱的 正则表达式
		var reg=new RegExp(CHKEMAIL);
		if(reg.test(email)){//正确
			$("#resultEmail").html("✔");
		    $("#resultEmail").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultEmail").html("xxxxxx@xxx.com,可以包含_ ");
		    $("#resultEmail").css("color","red");
		
		  //重新聚焦
	        $("#email").focus();
	        return false;
		}
	}
	//真实姓名
	function chkrealname(){
		//获取真实姓名
		var realname=$("#realname").val();
		//定义匹配真实姓名的 正则表达式
		var reg=new RegExp(CHKREALNAME);
		if(reg.test(realname)){//正确
			$("#resultRealname").html("✔");
		    $("#resultRealname").css("color","green");
		    return true;
		}else{//输入失败
			$("#resultRealname").html("必须是汉字而且是一个汉字以上");
		    $("#resultRealname").css("color","red");
		 
		  //重新聚焦
	        $("#realname").focus();
	        return false;
		}
	}
	
	//验证所有
	function chkAll(){
		return chkloginname()&&chkrealname()&&chkbirthday()&&chkemail();
	}
	
	$(function(){
		//下拉框change事件
		$("#dept1").change(
			function(){
			//清空第二个下拉框
			$("#dept2").empty();
			
			//ajax的异步提交
			$.post("getdept.do", //url
				{
				pid:this.value
				},//json类型数据 传值
				function(data){
				if(data!=null){
					$(data).each(
						function(){
							
							//添加数据到第二个下拉框中
							$("#dept2").append("<option value="+this.id+">"+this.dname+"</option>");
						}		
					);
				}	
				},//成功执行
				"json"//返回类型
			)
			
		}		
		);
		
	});
	
	
	
	
</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 用户管理 - 修改</div>
	<form class="ropt">
		<input type="submit" onclick="history.back()"
		value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box" style="float:right">
	<form id="jvForm" action="update.do?id=${user.id}" method="post"  >
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
						<span class="pn-frequired"></span>
						用户名:
					</td>
					<td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="loginname" id="loginname"  disabled="disabled"  maxlength="100" 
						value="${user.loginname }"	/>
					<span id="resultName"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						密码:</td><td width="80%" class="pn-fcontent">
						<input type="password" class="required" name="password" id="password" maxlength="100" 
						value="${user.password }"
						/>
						<span id="resultPwd"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						确认密码:</td><td width="80%" class="pn-fcontent">
						<input type="password" class="required" name="repwd"  id="repwd" maxlength="100"
						value="${user.password }" />
						<span id="resultRepwd"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						真实姓名:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="realname" id="realname" maxlength="100"
						value="${user.realname }" 
						/>
						<span id="resultRealname"></span>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						性别:</td><td width="80%" class="pn-fcontent">
						<c:if test="${user.sex== '男'}">
							<input type="radio" name="sex" value="男" checked="checked"/>男
							<input type="radio" name="sex" value="女"/>女
						</c:if> 
						<c:if test="${user.sex=='女' }">
						<input type="radio" name="sex" value="男" />男
						<input type="radio" name="sex" value="女" checked="checked"/>女
					</c:if>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						出生日期:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="Wdate" name="birthday" id="birthday" maxlength="80" 
						value="${user.birthdayTxt }" onclick="WdatePicker()"
						/>
					<span id="resultBirthday"></span>
					</td>
				</tr>
				
				
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						部门:</td><td width="80%" class="pn-fcontent">
						<select id="dept1" name="dept1">
					
							<c:forEach items="${Dlist}" var="dept1">
								<!-- 该用户所在部门的上级部门id等于一级部门id就选择 -->
								<c:if test="${user.dept.pid==dept1.id}">
								<option value="${dept1.id}" selected="selected">${dept1.dname}</option>
								</c:if>
								<!-- 否则就不选择 -->
								<c:if test="${user.dept.pid!=dept1.id}">
								<option value="${dept1.id}" name="id">${dept1.dname}</option>
								</c:if>
							</c:forEach>
					</select>
					
					<select id="dept2" name="dept.id">
							<c:forEach items="${Dlist1}" var="dept2">
							<!-- 该用户所在部门的上级部门id等于一级部门id就选择 -->
								<c:if test="${user.dept.id==dept2.id}">
									<option value="${dept2.id}" selected="selected">${dept2.dname}</option>
								</c:if>
								<!-- 否则就不选择 -->
								<c:if test="${user.dept.id!=dept2.id}">
									<option value="${dept2.id}" name="id">${dept2.dname}</option>
								</c:if>
							</c:forEach>
					</select>
					</td>
				</tr>
				
			<%-- 	<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
					是否可用</td>
					<td width="80%" class="pn-fcontent">
						<c:if test="${user.isenabled=='1'}">
							<input type="radio" name="enabled" value="1" checked="checked"/>可用
							<input type="radio" name="enabled" value="-1"/>不可用
						</c:if>
							<c:if test="${user.isenabled=='-1'}">
						<input type="radio" name="enabled" value="1" />可用
							<input type="radio" name="enabled" value="-1" checked="checked"/>不可用
						</c:if>
					</td>
				</tr> --%>
				
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						邮箱:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="email"  id="email" maxlength="80"
						value="${user.email }"
						/>
						<span id="resultEmail"></span>
					</td>
				</tr>
				<input type="hidden" name="isenabled" value="${user.isenabled}"/>
				<input type="hidden" name="id" value="${user.id}"/>
				
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