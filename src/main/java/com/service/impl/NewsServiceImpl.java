package com.service.impl;

import com.dao.NewsDao;
import com.po.News;
import com.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    @Resource
    private NewsDao newsDao;

    @Override
    public int upNews(News news) {
        return newsDao.upNews(news);
    }

    @Override
    public int delNews(News news) {
        return newsDao.delNewsById(news);
    }

    @Override
    public List queryNewsBySee() {
        return newsDao.queryNewsBySee();
    }

    @Override
    public List allNews() {
        return newsDao.allNews();
    }

    @Override
    public int addNews(News news) {
        newsDao.addNews(news);
        return 0;
    }


}
