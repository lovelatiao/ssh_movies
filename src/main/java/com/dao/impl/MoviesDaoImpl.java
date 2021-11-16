package com.dao.impl;

import com.dao.MoviesDao;
import com.po.Movies;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
@Repository
public class MoviesDaoImpl implements MoviesDao {
    @Autowired
    @Resource
    private HibernateTemplate hibernateTemplate;
    @Override
    public List AllMovie() {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Movies ");
        return query.list();
    }

    @Override
    public List selectMovieByName(String name) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Movies where mName = ?");
        query.setParameter(0,name);
        return query.list();
    }

    @Override
    public List selectMovieByCountry(String country) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Movies where mCountry = ?");
        query.setParameter(0,country);
        return query.list();
    }

    @Override
    public List selectMovieByLanguage(String language) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Movies where mLanguage = ?");
        query.setParameter(0,language);
        return query.list();
    }

    @Override
    public List selectMovieByType(String type) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Movies where mType=?");
        query.setParameter(0,type);
        return query.list();
    }

    @Override
    public int AddFilm(Movies movies) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        session.save(movies);
        return 0;
    }

    @Override
    public int upFilm(Movies movies) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        session.update(movies);
        return 0;
    }

    @Override
    public int DelFilm(String id) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("delete from Movies where id = ?");
        query.setParameter(0,id);
        query.executeUpdate();
        return 0;
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
