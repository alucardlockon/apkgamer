<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<s:iterator value="apk" var="oneapk">
	<div>
		<table style="width: 100%; height: 100%; margin-left: 20">
			<tr>
				<td>
					<img src="${pageContext.request.contextPath}/images/${image}" />
				</td>
				<td>
					<h2>
						<a href="apkAction!detail?oneNews.id=${id}" target="_self">${title}</a>
					</h2>
				</td>
			</tr>
			<tr>
				<td align="center">
				${content}
				</td>
				<td></td>
			</tr>
			<tr>
				<td align="right" style="font: lighter">
					<a href="apkAction!detail?oneapk.id=${id}">查看</a>
				</td>
				<td align="right" style="font: lighter">
					<a href="${pageContext.request.contextPath}/apks/${link}">立即下载</a>
				</td>
			</tr>
		</table>
	</div>
</s:iterator>
