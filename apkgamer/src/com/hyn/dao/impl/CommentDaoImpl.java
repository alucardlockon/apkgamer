package com.hyn.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hyn.dao.CommentDao;
import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {
	public List<Comment> findCommentByapkId(Apk oneapk) {
		String hql = "from Comment where apkid=?";
		return this.getHibernateTemplate().find(hql, oneapk.getId());
	}

	public int findCommentCount(Apk oneapk) {
		String hql="select count(*) from Comment where apkid=?";
		Query query = getSession().createQuery(hql).setInteger(0, oneapk.getId());
		Long l=(Long) query.uniqueResult();
		return (Integer)l.intValue();
	}

}
