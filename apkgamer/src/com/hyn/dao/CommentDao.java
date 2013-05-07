package com.hyn.dao;

import java.util.List;

import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public interface CommentDao {

	List<Comment> findCommentByapkId(Apk oneapk);

	int findCommentCount(Apk oneapk);

}
