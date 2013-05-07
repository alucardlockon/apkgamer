package com.hyn.biz;

import java.util.List;

import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public interface CommentBiz {

	List<Comment> list(Apk oneapk);

	int count(Apk oneapk);

}
