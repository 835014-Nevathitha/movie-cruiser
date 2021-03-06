package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavoritesById();
        testGetAllFavorites();
        testRemoveFavoritesById();
        testGetAllFavorites();

    }

    public static void testAddFavoritesById() {
        System.out.println("Movie added into Favorites");
        favoriteDao.addFavoritesById(1, 3);
        favoriteDao.addFavoritesById(1, 2);
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the Movies from Favorite");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            System.out.printf("%-10s%-24s%-16s%-10s%-19s%-17s%s\n", "MovieId", "Title",
                    "Box Office", "Active", "Date Of Launch", "Genre", "Has Teaser");
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println(
                    "No Of Favorites:" + favoriteDao.getAllFavorites(1).getNoOfFavorites());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);
        }
    }

    public static void testRemoveFavoritesById() {
        System.out.println("Remove Favorite");
        favoriteDao.removeFavoritesById(1, 3);
    }
}
