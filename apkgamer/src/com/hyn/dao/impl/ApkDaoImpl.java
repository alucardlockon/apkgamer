package com.hyn.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hyn.dao.ApkDao;
import com.hyn.entity.Apk;
import com.hyn.entity.Comment;

public class ApkDaoImpl extends HibernateDaoSupport implements ApkDao {
	public List findapk() {
		Criteria criteria = getSession().createCriteria(Apk.class);
		criteria.setFirstResult(0);
		criteria.setMaxResults(16);
		return criteria.list();
	}

	public int count() {
		Criteria criteria = getSession().createCriteria(Apk.class);
		criteria.setProjection(Projections.rowCount());
		return (Integer) criteria.uniqueResult();
	}
	public Apk findapkById(Apk oneapk) {
		return (Apk) this.getHibernateTemplate().get(Apk.class,
				oneapk.getId());
	}
	public List<Apk> findapkByKeyword(String keyword) {
		String hql = "from Apk where title like ? or intro like ?";
		return this.getHibernateTemplate().find(hql,
				new Object[] { "%" + keyword + "%", "%" + keyword + "%" });
	}

	public void updateComment(Comment comment) {
		this.getHibernateTemplate().save(comment);
	}

}
