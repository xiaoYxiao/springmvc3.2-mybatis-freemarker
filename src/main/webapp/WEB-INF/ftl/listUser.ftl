<#include "metas.ftl" encoding="utf-8"> 
<#include "tags.ftl" encoding="utf-8"> 
<html>
	<head>
		<#include "meta_info.ftl" encoding="utf-8"> 
		<title>ListUser</title>
		<script type="text/javascript">
		function opcal(){
		    J.calendar.Show({ format:'yyyy-MM-dd HH:mm:ss' });
		}
		</script>
	</head>
	<body>
	<div>
		<h2>显示用户</h2>
		<form action="${BasePath}/demo/user/listUser.do" id="testForm">
			<a href="${BasePath}/demo/user/addUser.do">添加用户</a>
			<table>
				<tr align="center">
					<th>&nbsp;&nbsp;&nbsp;</th>
					<th>name：<input type="text" id="name" name="name"/>&nbsp;</th>
					<th>age：<input type="text" id="age" name="age"/>&nbsp;</th>
					<th>phone：<input type="text" id="phone" name="phone"/>&nbsp;</th>
					<th>time：<input  id="time" name="time" style="width:200px;" onclick="opcal();"/>&nbsp;</th>
					<th><input type="submit" value="查询"/></th>
				</tr>
			</table>
		</form>
	</div>
	<hr size="20" color="yellow"><!--filterable="false"默认是true，允许字段过滤 --><!--sortable="false" 默认是true，允许字段排序 -->
	<div>
		<@ex.table
			view="compact"
			items="users" var="vo"
			filterable="false"
  			sortable="false" 
  			retrieveRowsCallback="limit"  
		    filterRowsCallback="limit" 
			action="${BasePath}/demo/user/listUser.do">
			<@ex.exportPdf
				fileName="user.pdf"
				tooltip="导出PDF"
				headerColor="blue"
				headerBackgroundColor="red"
				headerTitle="用户列表"/>
			<@ex.exportXls
				fileName="user.xls"
				tooltip="导出Excel"/>
			<@ex.exportCsv
				fileName="user.csv"
				tooltip="导出CSV"
				delimiter=","/>
			<@ex.row highlightRow="true">
				<@ex.column property="name" title="姓名"/>
				<@ex.column property="age" title="年龄"/>
				<@ex.column property="phone" title="电话号"/>
				<@ex.column property="uid" title="操作">
			 		<a href="${BasePath}/demo/user/toUpdateUser.do?uid=${vo.uid?default('')}">更新</a>|
					<a href="${BasePath}/demo/user/deleteUser.do?uid=${vo.uid?default('')}">删除</a>|
					<a href="${BasePath}/demo/address/toAddNewAddress.do?uid=${vo.uid?default('')}">添加新地址</a>
			 	</@ex.column>
			</@ex.row>
		</@ex.table>
	</div>
	</body>
</html>