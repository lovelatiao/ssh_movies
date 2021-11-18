package com.service;

import com.po.Movies;

import java.util.List;

public interface MoviesService {
    public List AllMovie();

    public List selectMovieByName(String name);


    public List selectMovieByCountry(String country);

    public List selectMovieByLanguage(String language);

    public List selectMovieByType(String type);

    public int addFilm(Movies movies);

    public int upFilm(Movies movies);

    public int DelFilm(String id);
}
