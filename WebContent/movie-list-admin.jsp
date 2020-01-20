<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> Movie Cruiser <img src="images\logo.png" height="40" width="40"> </header>
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav>
    <p id="admin-title">Movies</p>
    <br>
    <table id="admin-table">
        <col width="700px" />
        <col width="180px" />
        <col width="180px" />
        <col width="380px" />
        <col width="420px" />
        <col width="370px" />
        <col width="200px" />
        <tr>
            <th align="left"><label for="Title">Title</label></th>
            <th align="right"><label for="Box Office">Box Office</label></th>
            <th align="center"><label for="Active">Active</label></th>
            <th align="center"><label for="Date of Launch">Date of Launch</label></th>
            <th align="center"><label for="Genre">Genre</label></th>
            <th align="center"><label for="Has Teaser">Has Teaser</label></th>
            <th align="center"><label for="Action">Action</label></th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency" minFractionDigits="0"
                        value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy"></f:formatDate></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <p class="copyrights">Copyright &copy; 2019</p>
    </footer>
</body>
</html>