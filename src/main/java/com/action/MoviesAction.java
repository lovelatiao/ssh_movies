package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.po.Movies;
import com.service.MoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.applet.AppletContext;
import java.sql.SQLOutput;
import java.util.Map;

@Controller
public class MoviesAction extends ActionSupport {
    @Autowired
    @Resource
    private MoviesService moviesService;
    private Movies movies;


    public String allMovies(){
        return SUCCESS;
    }

    public String addMovies(){
        movies.setmPhoto("D:/shixun/photo/"+movies.getmPhoto());
        movies.setmPath("D:/shixun/movie/"+movies.getmPath());
        moviesService.addFilm(movies);
        ActionContext actionContext = ActionContext.getContext();
        Map<String,Object> request = (Map) actionContext.get("request");
        request.put("msg","电影添加成功");
        return SUCCESS;
    }

    public Movies getMovies() {
        return movies;
    }

    public void setMovies(Movies movies) {
        this.movies = movies;
    }
}
