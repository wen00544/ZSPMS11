<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>
<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="res/common/js/jquery.js" type="text/javascript"></script>
<script src="res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="res/common/js/lecheng.js" type="text/javascript"></script>
<script src="res/lecheng/js/admin.js" type="text/javascript"></script>
<link rel="stylesheet" href="../res/css/style.css" />
<!-- 引入标签库 -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>article-list</title>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 文章管理 - 列表   	</div>
	<form class="ropt" style=" ">
		<input class="add" type="button" value="添加" onclick="javascript:window.location.href='tchannle.do'"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box">
<input type="hidden" name="pageNo" value=""/>
<form method="post" id="tableForm">
<input type="hidden" value="" name="pageNo"/>
<input type="hidden" value="" name="queryName"/>
</form>
<form method="post" id="tableForm" action="articledelect.do"> 
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="20"><input type="checkbox" onclick="Pn.checkbox('ids',this.checked)"/></th>
			<th>用户编号</th>
			<th>标题</th>
			<th>内容</th>
			<th>作者</th>
			<th>添加创建日期</th>
			<th>所属栏目</th>
			<th>是否推荐</th>
			<th>是否热点</th>
			<th>操作选项</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
		<c:forEach items="${articles }" var="article">
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
			<td><input type="checkbox" name="ids" value="${article.id }"/></td>
			<td align="center">${article.id }</td>
			<td align="center">${article.title }</td>
			<td align="center">${article.content }</td>
			<td align="center">${article.author }</td>
			<td align="center">${article.crtime }</td>
			<td align="center">${article.cname}</td>
			<td align="center">${article.isremodTex }</td>
			<td align="center">${article.ishotTex}</td>
			<td align="center">
			<a href="articleget.do?id=${article.id}" class="pn-opt">修改</a>
			<a href="articledelect.do?id=${article.id }" class="pn-opt" onclick="return confirm('确认删除')" >删除</a>
			</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<div class="page pb15" style="float:left">
	<input type="submit" value="批量删除"  onclick="return confirm('确认删除')" />
</div>
<div class="page pb15" style="float:right">
	<span class="r inb_a page_b">
		<!-- [当前页/尾页] -->
		[${requestScope.currentPage }/${requestScope.pageCount }]
		<a href="articlelist.do?currentPage=1">首页</a>
		<c:if test="${requestScope.currentPage-1>0 }">
			<a href="articlelist.do?currentPage=${requestScope.currentPage-1 }">上一页</a>
		</c:if>
		<c:if test="${requestScope.currentPage+1<=requestScope.pageCount }">
			<a href="articlelist.do?currentPage=${requestScope.currentPage+1 }">下一页</a>
		</c:if>
		<a href="articlelist.do?currentPage=${requestScope.pageCount }">尾页</a>
	</span>

</div >

<div style="margin-top:15px;">
<!-- 	<input class="del-button" type="button" value="取消" onclick="optCancel();"/>
	<input class="submit" type="button" value="通过" onclick="optPass();"/> -->
</div>
</form>
</div>
</body>
</html>