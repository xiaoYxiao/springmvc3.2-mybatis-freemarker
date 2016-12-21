<#include "metas.ftl" encoding="utf-8"> 
<#include "tags.ftl" encoding="utf-8"> 
<html>
	<head>
		<#include "meta_info.ftl" encoding="utf-8"> 
		<title>AddUser</title>
	</head>
	<body>
		<h2>添加用户</h2>
		<hr size="20" color="yellow">
		<form action="${BasePath}/demo/user/addUserFirstStep.do" method="post">
			<table>
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="name" value="${name}"/></td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type="text" name="age" value="${age}"/></td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="phone" value="${phone}"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="passwd" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="下一步" /></td>
				</tr>
			</table>
		</form><br>
		<a href="${BasePath}/demo/user/listUser.do">返回</a>
	</body>
</html>