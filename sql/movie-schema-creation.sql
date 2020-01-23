CREATE DATABASE  IF NOT EXISTS movie_cruiser;
USE movie_cruiser;

CREATE TABLE customer (
    cus_id INT(11) NOT NULL AUTO_INCREMENT,
    cus_name VARCHAR(60),
    PRIMARY KEY (cus_id)
);

CREATE TABLE movie (
    mv_id INT(11) NOT NULL AUTO_INCREMENT,
    mv_title VARCHAR(100),
    mv_box_office BIGINT(20),
    mv_active VARCHAR(3),
    mv_date_of_launch DATE,
    mv_genre VARCHAR(45),
    mv_has_teaser VARCHAR(3),
    PRIMARY KEY (mv_id)
);

CREATE TABLE favorite (
    fav_id INT(11) NOT NULL AUTO_INCREMENT,
    fav_cus_id INT(11),
    fav_mv_id INT(11),
    PRIMARY KEY (fav_id),
    FOREIGN KEY (fav_cus_id)
        REFERENCES customer (cus_id),
    FOREIGN KEY (fav_mv_id)
        REFERENCES movie (mv_id)
);
