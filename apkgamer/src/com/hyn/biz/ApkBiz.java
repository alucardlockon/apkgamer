package com.hyn.biz;

import java.util.List;

import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public interface ApkBiz {

	List list();

	Apk detail(Apk oneapk);

	List<Apk> search(String keyword);

	void comment(Comment comment);

}
