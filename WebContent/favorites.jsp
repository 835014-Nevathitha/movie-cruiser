<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Favorite</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> Movie Cruiser <img src="images\logo.png" height="40" width="40"> </header>
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav>
    <p id="fav-heading">Favorites</p>
    <c:if test="${removeFavoritestatus==true}">
        <p id="remove-from-fav">
            <b>Movie removed from Favorites successfully</b>
        </p>
    </c:if>
    <table id="fav-notification-table">
        <col width="200px" />
        <col width="190px" />
        <col width="2400px" />

        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>

        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency" currencySymbol="$"
                        maxFractionDigits="0" value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td align="left"><b>No.Of.Favorite</b></td>
            <td><b>${favorite.getNoOfFavorites()}</b></td>
        </tr>
    </table>
    <footer>
    <p class="copyrights">Copyright &copy; 2019</p>
    </footer>
</body>
</html>