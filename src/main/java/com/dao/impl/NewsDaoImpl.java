package com.dao.impl;

import com.dao.NewsDao;
import com.po.News;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
@Repository
public class NewsDaoImpl implements NewsDao {
    @Autowired
    @Resource
    private HibernateTemplate hibernateTemplate;

    @Override
    public List queryNewsBySee() {
        List list;
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from News order by nSee DESC ");
        query.setMaxResults(10);
        list = query.list();
        return list;
    }
    @Override
    public List allNews() {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from News order by nTime DESC ");
        return query.list();
    }

    @Override
    public int addNews(News news) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        session.save(news);
        return 0;
    }

    @Override
    public int upNews(News news) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        session.update(news);
        return 0;
    }

    @Override
    public int delNewsById(News news) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        session.delete(news);
        return 0;
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
