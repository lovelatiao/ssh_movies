package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.po.News;
import com.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

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

    public String oneNews(){
        List list = newsService.queryNewsBySee();
        ActionContext actionContext = ActionContext.getContext();
        Map<String,Object> request = (Map) actionContext.get("request");
        request.put("oneNews",list);
        return "one";
    }

    public String queryNews(){
        List list = newsService.queryNews(news.getId());
        news = (News) list.get(0);
        news.setnSee(news.getnSee()+1);
        newsService.upNews(news);
        ActionContext actionContext = ActionContext.getContext();
        Map<String,Object> request = (Map) actionContext.get("request");
        request.put("queryNews",list);
        return SUCCESS;
    }
    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
