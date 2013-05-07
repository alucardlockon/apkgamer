<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div>
	<table style="width: 100%; height: 100%; margin-left: 20">
		<tr>
			<td>
				<h2>
					<a
						href="${pageContext.request.contextPath}/apk/apkAction!detail?oneapk.id=${oneapk.id}">${oneapk.title}</a>
				</h2>
			</td>
		</tr>
		<tr>
			<td align="center">
				<img
					src="${pageContext.request.contextPath}/images/${oneapk.image}" />
			</td>
		</tr>
		<tr>
			<td>
				${oneapk.content}
			</td>
		</tr>
		<tr>
			<td align="right" style="font: lighter">
				<hr color="#A6C53B" />
			</td>
		</tr>
		<tr>
			<td>
				评论：
			</td>
		</tr>
		<s:iterator value="comments" var="comment">
		<tr class="comments">
			<td>
				${rnum}楼: id:${uid}<br />
				${content}
				<br />
				<span style="float: right"><a href="javascript:"
					onclick="document.getElementById('reply').value='回复${rnum}楼：'">回复</a>
				</span>
			</td>
		</tr>
		</s:iterator>
		<tr>
			<td>
				<hr color="#84C1FF" />
				我要评论：
				<form action="apkAction!comment" method="post">
					<input type="hidden" name="comment.apkid" value="${oneapk.id}"/>
					<input type="hidden" id="rownum" name="comment.rnum" />
					<textarea id="reply" name="comment.content" style="width: 100%" rows="5"></textarea>
					<input type="submit" style="float: right" />
				</form>
			</td>
		</tr>
	</table>
</div>