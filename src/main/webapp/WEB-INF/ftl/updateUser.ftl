<#include "metas.ftl" encoding="utf-8"> 
<#include "tags.ftl" encoding="utf-8"> 
<html>
	<head>
		<#include "meta_info.ftl" encoding="utf-8"> 
		<title>UpdateUser</title>
	</head>
	<body>
		<h2>更新用户</h2>
		<hr size="20" color="yellow">
		<form action="${BasePath}/demo/user/updateUser.do" method="post">
			<table>
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="name" value="${user.name?default('')}"/></td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type="text" name="age" value="${user.age?default(0)}"/></td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="phone" value="${user.phone?default('')}"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="passwd" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="更新" /></td>
				</tr>
			</table>
			<input type="hidden" name="uid" value="${user.uid?default('')}" />
		</form>
	</body>
</html>