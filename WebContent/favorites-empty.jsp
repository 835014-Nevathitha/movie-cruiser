<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Empty Favorite</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> Movie Cruiser <img src="images\logo.png" height="40" width="40"> </header>
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorites" href="ShowFavorite">Favorites</a>
    </nav>
    <p id="fav-heading">Favorites</p>
    <p id="add-fav">
        No items in Favorites. Use 'Add to Favorite' option in <a href="ShowMovieListCustomer"
            id="movie-list-link">Movie List.</a>
    </p>
    <footer>
    <p class="copyrights">Copyright &copy; 2019</p>
    </footer>
</body>
</html>