package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao movieDao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testModifyMovieList();
        testGetMovieListAdmin();
        testGetMovieById();
    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin Page");
        List<Movie> movieList = movieDao.getMovieListAdmin();
        System.out.printf("%-10s%-24s%-16s%-10s%-19s%-17s%s\n", "MovieId", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movie : movieList) {
            System.out.println(movie);
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer Page");
        List<Movie> movieItem = movieDao.getMovieListCustomer();
        System.out.printf("%-10s%-24s%-16s%-10s%-19s%-17s%s\n", "MovieId", "Title", "Box Office",
                "Active", "DateOfLaunch", "Genre", "HasTeaser");
        for (Movie movie2 : movieItem) {
            System.out.println(movie2);
        }
    }

    public static void testModifyMovieList() {
        System.out.println("Modify Menu Item");
        Movie movieItem = new Movie(4, "Inside Out", 1671713208L, false,
                DateUtil.convertToDate("13/01/2017"), "Animation", true);
        movieDao.modifyMovieList(movieItem);
    }

    public static void testGetMovieById() {
        System.out.println("Get Movie List");
        System.out.printf("%-10s%-24s%-16s%-10s%-19s%-17s%s\n", "Id ", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movieItem = movieDao.getMovieById(4);
        System.out.println(movieItem);

    }
}
