package com.hyn.biz.impl;

import java.util.List;

import com.hyn.biz.CommentBiz;
import com.hyn.dao.CommentDao;
import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public class CommentBizImpl implements CommentBiz {
	CommentDao commentDao;

	public List<Comment> list(Apk oneapk) {
		return commentDao.findCommentByapkId(oneapk);
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public int count(Apk oneapk) {
		return commentDao.findCommentCount(oneapk);
	}

}
