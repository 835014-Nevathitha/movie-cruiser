package com.cognizant.movie.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.movie.dao.MovieDao;
import com.cognizant.movie.dao.MovieDaoCollectionImpl;
import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

@WebServlet("/EditMovie")
public class EditMovieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        long movieId = Long.parseLong(request.getParameter("movieId"));
        String title = request.getParameter("title");
        long boxOffice = Long.parseLong(request.getParameter("boxOffice"));
        String isactive = request.getParameter("active");
        String dateOfLaunch = request.getParameter("dateOfLaunch");
        String genre = request.getParameter("genre");
        String isTeaser = request.getParameter("hasTeaser");
        boolean active = false;
        boolean hasTeaser = false;
        if (isactive.equals("No")) {
            active = false;
        } else {
            active = true;
        }
        if (isTeaser == null) {
            hasTeaser = false;
        } else {
            hasTeaser = true;
        }
       // Movie movie = new Movie(movieId, title, boxOffice, active,DateUtil.convertToDate(dateOfLaunch), genre, hasTeaser);
        /*ArrayList<Movie> list=new ArrayList<Movie>();
        Movie movie = new Movie();
        movie.setTitle(title);
        movie.setActive(active);
        movie.setBoxOffice(boxOffice);
        movie.setGenre(genre);
        Date date= DateUtil.convertToDate(dateOfLaunch);
        movie.setDateOfLaunch(date);
        movie.setMovieId(movieId);
        movie.setHasTeaser(hasTeaser);
        list.add(movie);*/
        Movie movie = new Movie(movieId, title, boxOffice, active, DateUtil.convertToDate(dateOfLaunch), genre, hasTeaser);
        MovieDao movieDao = new MovieDaoCollectionImpl();
        movieDao.modifyMovieList(movie);
        request.getRequestDispatcher("edit-movie-status.jsp").forward(request, response);

    }

}
