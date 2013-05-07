package com.hyn.biz.impl;

import java.util.List;

import com.hyn.biz.ApkBiz;
import com.hyn.dao.ApkDao;
import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public class ApkBizImpl implements ApkBiz {
	ApkDao apkDao;

	public List list() {
		return apkDao.findapk();
	}

	public void setapkDao(ApkDao apkDao) {
		this.apkDao = apkDao;
	}


	public Apk detail(Apk oneapk) {
		return apkDao.findapkById(oneapk);
	}

	public List<Apk> search(String keyword) {
		return apkDao.findapkByKeyword(keyword);
	}

	public void comment(Comment comment) {
		 apkDao.updateComment(comment);
	}
}
