package com.dao.impl;

import com.dao.UserDao;
import com.po.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    @Resource
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    @Override
    public List adminLogin(String username, String password) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from Admin where aName=? and aPassword=?");
        query.setParameter(0,username);
        query.setParameter(1,password);
        return query.list();
    }

    @Override
    public List userLogin(String username, String password) {
        Session session = hibernateTemplate.getSessionFactory().openSession();
        Query query = session.createQuery("from User where uName = ? and uPassword=?");
        query.setParameter(0,username);
        query.setParameter(1,password);
        return query.list();
    }

    @Override
    public boolean userRegister(User user) {
        return false;
    }


}
