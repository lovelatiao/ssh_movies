package com.dao;

import com.po.News;

import java.util.List;

public interface NewsDao {
    //根据点击量查询新闻
    public List queryNewsBySee();
    public List queryNews(int id);
    //查询全部新闻
    public List allNews();
    //添加新闻
    public int addNews(News news);
    //更新新闻
    public int upNews(News news);
    //删除新闻
    public int delNewsById(News news);
    public int addSee(String id);
}
