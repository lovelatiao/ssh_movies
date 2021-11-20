package com.dao;

import com.po.Movies;

import java.util.List;

public interface MoviesDao {

    public List AllMovie();

    public List selectMovieByName(String name);


    public List selectMovieByCountry(String country);

    public List selectMovieByLanguage(String language);

    public List selectMovieByType(String type);

    public int addFilm(Movies movies);

    public int upFilm(Movies movies);

    public int DelFilm(String id);

    public List AllMoviesType();
    public List AllMoviesCountry();
    public List AllMoviesLanguage();
}
