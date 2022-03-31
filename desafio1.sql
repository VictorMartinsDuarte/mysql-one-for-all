DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE plan (
  plan_id INT AUTO_INCREMENT PRIMARY KEY,
  plan VARCHAR(50),
  price DEC(3, 2)
) engine = InnoDB;

INSERT INTO plan(plan, price) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99),
('pessoal', 6.99);

CREATE TABLE users (
  id_user INT AUTO_INCREMENT PRIMARY KEY,
  user VARCHAR(50),
  age INT,
  plan_id INT,
  FOREIGN KEY (plan_id)
    REFERENCES plan (plan_id)
) engine = InnoDB;

INSERT INTO users(user, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 4),
('Roger', 45, 3),
('Norman', 58, 3),
('Patrick', 33, 2),
('Vivian', 26, 4),
('Carol', 19, 4),
('Angelina', 42, 2),
('Paul', 46, 2);

CREATE TABLE artists (
  artist_id INT AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(50)
) engine = InnoDB;

INSERT INTO artists(artist) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon'),
('Tyler Isle'),
('Fog');

CREATE TABLE albums (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  album VARCHAR(50),
  artist_id INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists (artist_id)
) engine = InnoDB;

INSERT INTO albums(album, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4),
('Library of Leberty', 4),
('Chained Down', 5),
('Cabinet of fools', 5),
('No guarantees', 5),
('Apparatus', 6);

CREATE TABLE songs (
  music_id INT AUTO_INCREMENT PRIMARY KEY,
  music VARCHAR(50),
  album_id INT,
  seconds INT,
  FOREIGN KEY (album_id)
    REFERENCES albums (album_id)
) engine = InnoDB;

INSERT INTO songs(music, album_id, seconds) VALUES
('Soul For Us', 1, 200),
('Reflections of Magic', 1, 163),
('Dance With Her Own', 1, 116),
('Troubles Of My Inner Fire', 2, 203),
('Time Fireworks', 2, 152),
('Magic Circus', 3, 105),
('Honey, So Do I', 3, 207),
("Sweetie, Let's Go Wild", 3, 139),
('She Knows', 3, 244),
('Fantasy For Me', 4, 100),
('Celebration of More', 4, 146),
('Rock His Everything', 4, 223),
('Home Forever', 4, 231),
('Diamond Power', 4, 241),
("Let's Be Silly", 4, 132),
('Thang of Thunder', 5, 240),
('Words of Her Life', 5, 185),
('Without My Streets', 5, 176),
('Need of The Evening', 6, 190),
('History of My Roses', 6, 222),
('Without My Love', 6, 111),
('Walking And Game', 6, 123),
('Young And Father', 6, 197),
('Finding My Traditions', 7, 179),
('Walking And Man', 7, 229),
('Hard And Time', 7, 135),
("Honey, I'm A Lone Wolf", 7, 150),
("She Thinks I Won't Stay Tonight", 8, 166),
("He Heard You're Bad For Me", 8, 154),
("He Hopes We Can't Stay", 8, 210),
('I Know I Know', 8, 117),
("He's Walking Away", 9, 159),
("He's Trouble", 9, 138),
('I Heard I Want To Bo Alone', 9, 120),
('I Ride Alone', 9, 151),
('Honey', 10, 79),
('You Cheated On Me', 10, 95),
("Wouldn't It Be Nice", 10, 213),
('Baby', 10, 136),
('You Make Me Feel So..', 10, 83);