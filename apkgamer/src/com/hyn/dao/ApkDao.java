package com.hyn.dao;

import java.util.List;

import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public interface ApkDao{

	List findapk();
	int count();
	Apk findapkById(Apk oneapk);
	List<Apk> findapkByKeyword(String keyword);
	void updateComment(Comment comment);
}
