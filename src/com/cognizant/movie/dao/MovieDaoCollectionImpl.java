package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImpl implements MovieDao {

    public static List<Movie> movieList; // instance variable

    public MovieDaoCollectionImpl() {
        Movie item1 = new Movie(1, "Avatar", 2787965087L, true,
                DateUtil.convertToDate("15/03/2017"), "Science Fiction", true);
        Movie item2 = new Movie(2, "The Avengers", 1518812988L, true,
                DateUtil.convertToDate("23/12/2017"), "Superhero", false);
        Movie item3 = new Movie(3, "Titanic", 2187463944L, true,
                DateUtil.convertToDate("21/08/2018"), "Romance", false);
        Movie item4 = new Movie(4, "Jurassic World", 1671713208L, false,
                DateUtil.convertToDate("02/07/2017"), "Science Fiction", true);
        Movie item5 = new Movie(5, "Avengers: EndGame", 2750760348L, true,
                DateUtil.convertToDate("02/11/2022"), "Superhero", true);
        movieList = new ArrayList<Movie>();
        movieList.add(item1);
        movieList.add(item2);
        movieList.add(item3);
        movieList.add(item4);
        movieList.add(item5);

    }

    @Override
    public Movie getMovieById(long movieId) {
        for (Movie movie : movieList) {
            if (movie.getMovieId() == movieId) {
                return movie;
            }
        }
        return null;
    }

    @Override
    public void modifyMovieList(Movie movieLists) {
        for (int i = 0; i < movieList.size(); i++) {
            if (movieList.get(i).getMovieId() == movieLists.getMovieId()) {
                movieList.set(i, movieLists);
            }
        }

    }

    @Override
    public List<Movie> getMovieListAdmin() {
        return movieList;
    }

    @Override
    public List<Movie> getMovieListCustomer() {
        ArrayList<Movie> movies = new ArrayList<Movie>();
        for (Movie Movie : movieList) {
            if (((Movie.getDateOfLaunch().before(new Date()))
                    || Movie.getDateOfLaunch().equals(new Date())) && Movie.isActive() == true) {
                movies.add(Movie);
            }
        }
        return movies;
    }
}
