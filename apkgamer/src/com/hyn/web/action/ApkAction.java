package com.hyn.web.action;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.hyn.biz.ApkBiz;
import com.hyn.biz.CommentBiz;
import com.hyn.entity.Apk;
import com.hyn.entity.Comment;
import com.hyn.entity.User;

public class ApkAction extends BaseAction {
	public ApkBiz apkBiz;
	public CommentBiz commentBiz;
	public List<Apk> apk;
	public List<Apk> apkcom;
	public List<Apk> serachs;
	public Apk oneapk;
	public List<Comment> comments;
	public Comment comment;
	public String keyword;

	/**
	 * 主页面
	 */
	public String execute() {
		apk = apkBiz.list();
		Collections.reverse(apk);
		apkcom = new ArrayList<Apk>(apk);
		return "list";
	}

	public String detail() {
		oneapk = apkBiz.detail(oneapk);
		comments = commentBiz.list(oneapk);
		return "detail";
	}

	public String search() {
		// 搜索结果
		serachs = apkBiz.search(keyword);
		Collections.reverse(serachs);
		// 右边栏
		apk = apkBiz.list();
		Collections.reverse(apk);
		return "search";
	}

	public String comment() {
		User sessionUser = (User) session.get("user");
		if (sessionUser != null) {
			comment.setSenddate(new Date(System.currentTimeMillis()));
			comment.setUid(sessionUser.getId());
			apkBiz.comment(comment);
			return "comment";
		} else {
			return "error";
		}
	}

	public void setapkBiz(ApkBiz apkBiz) {
		this.apkBiz = apkBiz;
	}

	public List<Apk> getapk() {
		return apk;
	}

	public void setapk(List<Apk> apk) {
		this.apk = apk;
	}

	public Apk getOneapk() {
		return oneapk;
	}

	public void setOneapk(Apk oneapk) {
		this.oneapk = oneapk;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Apk> getSerachs() {
		return serachs;
	}

	public void setSerachs(List<Apk> serachs) {
		this.serachs = serachs;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}

	public List<Apk> getapkcom() {
		return apkcom;
	}

	public void setapkcom(List<Apk> apkcom) {
		this.apkcom = apkcom;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

}
