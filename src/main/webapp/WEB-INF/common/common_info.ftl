<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<#include "metas.ftl">
<#include "tags.ftl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信息展示</title>
<script type="text/javascript">
	function to_close(){
		//parent.TB_remove();
		//parent.location.reload();

		TB_remove();

		<#if upload??>
		parent.location.reload();
		closewindow();
		<#elseif active??>
			parent.mbdif.location.reload();
			refreshpage();
			closewindow();
		<#else>
			parent.mbdif.location.reload();
			closewindow();
		</#if>
	}
</script>
</head>
<body>
	<div class="main-body" id="main_body">
    		<div class="div-pl">
    			<#if successFlag ?? && successFlag=="false">
    				<div class="use-wrong search-wrong">
    				<#if message ??>
						<span class="ft-cl-n ft-sz-14 ft-wt-b">
						${message}
						</span>
						<br/>
					</#if>
    				<span class="ft-cl-n ft-sz-14 ">很抱歉！出错啦，没有成功！</span>
    			<#else>
    				<div class="use-sucess search-wrong">
    				<#if message ??>
						<span class="ft-cl-n ft-sz-14 ft-wt-b">
						${message}
						</span>
						<br/>
					</#if>
    				<span class="ft-cl-n ft-sz-14 ">恭喜，操作已成功！</span>
    			</#if>
				
				<div class="divH12"></div>
				<input type="button" class="btn-sh" 
				<#if redirectionUrl??>onclick="window.location.href='${BasePath}'+'${redirectionUrl}'"
				<#else>onclick="to_close();"</#if> 
				value="确  定" hidefocus="true" />
			</div>
		</div>
	</div>
</body>
</html>
