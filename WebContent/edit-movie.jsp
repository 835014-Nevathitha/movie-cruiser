<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/script.js"></script>
<title>Edit Movies</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <c:set var="movie" value="${movie}"></c:set>
    <header> Movie Cruiser <img src="images\logo.png" height="40" width="40"> </header>
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav>
    <p id="edit-title">Edit Movie</p>
  
    <form name="movieForm" action="EditMovie" method="post" onsubmit="return validateMovieForm()">
       
       
        <input type="hidden" name="movieId" value="${movie.getMovieId()}" />
        <table id="title-row">
            <tr>
                <td><label for="title"><b>Title</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="title" size="97" placeholder="Avengers - End Game"
                    value="${movie.getTitle()}" /></td>
            </tr>
        </table>
        <table id="edit-movie-table">
            <tr>
                <td><label for="boxOffice"><b>Gross ($)</b></label></td>
                <td><label for="active"><b>Active</b></label></td>
                <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                <td><label for="genre"><b>Genre</b></label></td>
            </tr>
            <tr>
                <td><input name="boxOffice" type="text" placeholder="2787965087"
                    value="${movie.getBoxOffice()}" /></td>
                <c:choose>
                    <c:when test="${movie.isActive()==true }">
                        <td><input type="radio" name="active" value="Yes" id="active"
                            checked>Yes <input type="radio" name="active"
                            value="No">No</td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="radio" name="active" value="Yes" id="active">Yes
                            <input type="radio" name="active" value="No" checked>No</td>
                    </c:otherwise>
                </c:choose>
                <td><f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /><input type="text" name="dateOfLaunch"
                    value="${dateOfLaunch}" placeholder="27/04/2022" /></td>
                <td><select name="genre" id="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option value="Science Fiction">Science Fiction</option>
                        <option value="Superhero">Superhero</option>
                        <option value="Romance">Romance</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Adventure">Adventure</option>
                        <option value="Thriller">Thriller</option>
                </select></td>
            </tr>
            <!-- <tr></tr> -->
            <tr>
                <c:choose>
                    <c:when test="${movie.isHasTeaser()==true}">
                        <td><input type="checkbox" value="Yes" name="hasTeaser"
                            checked="checked" /><b>Has Teaser</b></td>
                    </c:when>
                    <c:otherwise>
                        <td><input type="checkbox" value="No" name="hasTeaser" /><b>Has
                                Teaser</b></td>
                    </c:otherwise>
                </c:choose>
                <label for="del" />
                <!--   <br /> -->
            </tr>
            <!--  <tr></tr> -->
            <tr>
                <td><a><input type="submit" value="Save" id="save" /></a></td>
            </tr>
        </table>
    </form>
    <footer>Copyright &copy; 2019 </footer>
</body>
</html>