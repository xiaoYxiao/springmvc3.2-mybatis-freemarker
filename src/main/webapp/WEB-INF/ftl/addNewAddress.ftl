<#include "metas.ftl" encoding="utf-8"> 
<#include "tags.ftl" encoding="utf-8"> 
<html>
	<head>
		<#include "meta_info.ftl" encoding="utf-8"> 
		<title>AddNewAddress</title>
	</head>
	<body>
		<h2>添加地址</h2>
		<hr size="20" color="yellow">
		用户信息：${user.uid?default('')}--${user.name?default('')}--${user.age?default('')}--${user.phone?default('')}<br>
		<a href="${BasePath}/demo/user/listUser.do">返回</a>
			<table border="1">
				<tr>
					<td align="center" colspan="5">已经存在的地址</td>
				</tr>
				<#list user.addrs as addr>
					<tr>
						<td align="center">${addr_index+1}</td>
						<td align="right">地址：</td>
						<td align="left">${addr.address?default('')}</td>
						<td align="right">邮编：</td>
						<td align="left">${addr.postCode?default('')}</td>
					</tr>
				</#list>
			</table>
		<form action="${BasePath}/demo/address/addNewAddress.do" method="post">
			<table>
				<tr>
					<td>地址：</td>
					<td><input type="text" name="address"/></td>
				</tr>
				<tr>
					<td>邮编：</td>
					<td><input type="text" name="postCode"/></td>
				</tr>
				<tr>
					<td><input type="hidden" name="uid" value="${user.uid?default('')}"/></td>
					<td colspan="2" align="center"><input type="submit" value="完成添加" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>