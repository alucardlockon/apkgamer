<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>igadget-爱科技</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<script src="js/jquery-1.4.3.js">
</script>
	</head>

	<body>
			<div id="header" style="width: 100%">
				<a href="${pageContext.request.contextPath}/newsAction"><img
						border="0"
						src="${pageContext.request.contextPath}/images/igadget.png"
						style="margin-left: 40" />
				</a>
				<div style="width: 10%; float: right">
					<a href="${pageContext.request.contextPath}/loginAction!tolog">登录</a>|
					<a href="${pageContext.request.contextPath}/registAction!toreg">注册</a>
				</div>
				<div style="clear: both"></div>
			</div>
			<hr color="#A6C53B" />
			<div id="body" style="width: 100%; height: 70%">
				<div id="list"
					style="width: 65%; height: 70%; float: left; margin-left: 20">
					<s:action name="showAction!list" executeResult="true"></s:action>
				</div>
			</div>
	</body>
</html>
