package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.po.News;
import com.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.sql.Date;
import java.sql.Timestamp;

@Controller
public class NewsAction extends ActionSupport {
    @Autowired
    @Resource
    private NewsService newsService;

    private News news;

    public String addNews(){
        news.setnTime(new Date(System.currentTimeMillis()));
        news.setnSee(0);
        newsService.addNews(news);
        return SUCCESS;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
