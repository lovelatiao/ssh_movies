package com.service.impl;

import com.dao.MoviesDao;
import com.po.Movies;
import com.service.MoviesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class MoviesServiceImpl implements MoviesService {
    @Autowired
    @Resource
    private MoviesDao moviesDao;
    @Override
    public List AllMovie() {
        return moviesDao.AllMovie();
    }

    @Override
    public List selectMovieByName(String name) {
        return moviesDao.selectMovieByName(name);
    }

    @Override
    public List selectMovieByCountry(String country) {
        return moviesDao.selectMovieByCountry(country);
    }

    @Override
    public List selectMovieByLanguage(String language) {return moviesDao.selectMovieByLanguage(language);}

    @Override
    public List selectMovieByType(String type) {
        return moviesDao.selectMovieByType(type);
    }

    @Override
    public int addFilm(Movies movies) {
        return moviesDao.addFilm(movies);
    }

    @Override
    public int upFilm(Movies movies) {
        return moviesDao.upFilm(movies);
    }

    @Override
    public int DelFilm(String id) {
        return moviesDao.DelFilm(id);
    }
}
