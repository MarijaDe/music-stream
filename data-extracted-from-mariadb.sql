-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.4.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table musicstream.albums: ~0 rows (approximately)
INSERT INTO `albums` (`album_id`, `album_title`, `artist_id`, `album_genre`, `album_release_date`) VALUES
	(1, 'IMPERA', 1000, 'Metal', '2022-01-01'),
	(2, 'Prequelle', 1000, 'Metal', '2018-01-01'),
	(11, 'The Great War', 1001, 'Metal', '2019-01-01'),
	(12, 'The Last Stand', 1001, 'Metal', '2016-01-01'),
	(21, 'Unleashed', 1002, 'Rock', '2016-01-01'),
	(22, 'Rise', 1002, 'Rock', '2009-01-01'),
	(31, 'Once', 1003, 'Metal', '2004-01-01'),
	(32, 'Imaginaerum', 1003, 'Metal', '2011-01-01'),
	(41, 'Smite and Ignite', 1004, 'Metal', '2014-01-01'),
	(42, 'III: Lost Chapter', 1004, 'Metal', '2021-01-01'),
	(51, 'Will of the People', 1005, 'Rock', '2022-01-01'),
	(52, 'The Resistance', 1005, 'Rock', '2009-01-01'),
	(61, 'Resist', 1008, 'Rock', '2019-01-01'),
	(62, 'Hydra', 1008, 'Rock', '2014-01-01');

-- Dumping data for table musicstream.artists: ~9 rows (approximately)
INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_genre`) VALUES
	(1000, 'Ghost', 'Metal'),
	(1001, 'Sabaton', 'Metal'),
	(1002, 'Skillet', 'Rock'),
	(1003, 'Nightwish', 'Metal'),
	(1004, 'Pentakill', 'Metal'),
	(1005, 'Muse', 'Rock'),
	(1006, 'Brothers of Metal', 'Metal'),
	(1007, 'All Good Things', 'Rock'),
	(1008, 'Within Temptation', 'Rock');

-- Dumping data for table musicstream.contains: ~0 rows (approximately)
INSERT INTO `contains` (`playlist_id`, `song_id`) VALUES
	(11213, 11),
	(11331, 11),
	(11213, 12),
	(11331, 12),
	(11213, 13),
	(11331, 13),
	(11213, 101),
	(11331, 101),
	(11213, 102),
	(11331, 102),
	(11213, 103),
	(11331, 103),
	(11213, 111),
	(11331, 111),
	(11213, 112),
	(11331, 112),
	(11222, 201),
	(11331, 201),
	(11222, 202),
	(11331, 202),
	(11222, 211),
	(11331, 211),
	(11222, 212),
	(11331, 212),
	(11213, 301),
	(11331, 301),
	(11213, 302),
	(11331, 302),
	(11213, 311),
	(11331, 311),
	(11213, 312),
	(11331, 312),
	(11213, 401),
	(11331, 401),
	(11213, 402),
	(11331, 402),
	(11213, 411),
	(11331, 411),
	(11213, 412),
	(11331, 412),
	(11213, 413),
	(11331, 413),
	(11222, 501),
	(11331, 501),
	(11222, 502),
	(11331, 502),
	(11222, 511),
	(11331, 511),
	(11222, 512),
	(11331, 512),
	(11222, 601),
	(11331, 601),
	(11222, 602),
	(11331, 602),
	(11222, 611),
	(11331, 611),
	(11222, 612),
	(11331, 612);

-- Dumping data for table musicstream.playlists: ~0 rows (approximately)
INSERT INTO `playlists` (`playlist_id`, `playlist_title`, `user_id`) VALUES
	(11213, 'Metal Miks', 33004),
	(11222, 'Rock Miks', 33009),
	(11331, 'Mesano', 33007),
	(11332, 'Chill Vibes', 33006),
	(11333, 'Study Session', 33013),
	(11334, 'Road Trip Mix', 33002),
	(11335, 'Workout Beats', 33012),
	(11336, 'Party Playlist', 33008),
	(11337, 'Morning Coffee', 33003),
	(11338, 'Relaxation Station', 33010),
	(11339, 'Summer Jams', 33011),
	(11340, 'Throwback Hits', 33005),
	(11341, 'Weekend Anthems', 33004);

-- Dumping data for table musicstream.songs: ~0 rows (approximately)
INSERT INTO `songs` (`song_id`, `song_title`, `artist_id`, `album_id`, `song_genre`, `song_length`, `song_release_date`) VALUES
	(1, 'Kaiserion', 1000, 1, 'Metal', 5, '2022-01-01'),
	(2, 'Spillways', 1000, 1, 'Metal', 3, '2022-01-01'),
	(11, 'Miasma', 1000, 2, 'Metal', 5, '2018-01-01'),
	(12, 'Pro Memoria', 1000, 2, 'Metal', 5, '2018-01-01'),
	(13, 'Life Eternal', 1000, 2, 'Metal', 3, '2018-01-01'),
	(101, 'The Attack of the Dead Men', 1001, 11, 'Metal', 4, '2019-01-01'),
	(102, 'Great War', 1001, 11, 'Metal', 5, '2019-01-01'),
	(103, 'The Red Baron', 1001, 11, 'Metal', 3, '2019-01-01'),
	(111, 'Sparta', 1001, 12, 'Metal', 4, '2016-01-01'),
	(112, 'Winged Hussars', 1001, 12, 'Metal', 4, '2016-01-01'),
	(201, 'Feel Invincible', 1002, 21, 'Rock', 4, '2016-01-01'),
	(202, 'I Want to Live', 1002, 21, 'Rock', 3, '2016-01-01'),
	(211, 'Rise', 1002, 22, 'Rock', 4, '2009-01-01'),
	(212, 'What I Believe', 1002, 22, 'Rock', 3, '2009-01-01'),
	(301, 'Wish I Had an Angel', 1003, 31, 'Metal', 4, '2004-01-01'),
	(302, 'Ghost Love Score', 1003, 31, 'Metal', 10, '2004-01-01'),
	(311, 'Storytime', 1003, 32, 'Metal', 5, '2011-01-01'),
	(312, 'Ghost River', 1003, 32, 'Metal', 5, '2011-01-01'),
	(401, 'Lightbringer', 1004, 41, 'Metal', 5, '2014-01-01'),
	(402, 'Last Whisper', 1004, 41, 'Metal', 3, '2014-01-01'),
	(411, 'Lost Chapter', 1004, 42, 'Metal', 4, '2021-01-01'),
	(412, 'Conqueror', 1004, 42, 'Metal', 4, '2021-01-01'),
	(413, 'Gathering Storm', 1004, 42, 'Metal', 4, '2021-01-01'),
	(501, 'Compliance', 1005, 51, 'Rock', 4, '2022-01-01'),
	(502, 'Verona', 1005, 51, 'Rock', 5, '2022-01-01'),
	(511, 'Uprising', 1005, 52, 'Rock', 5, '2009-01-01'),
	(512, 'Unnatural Selection', 1005, 52, 'Rock', 7, '2009-01-01'),
	(601, 'The Reckoning', 1008, 61, 'Rock', 4, '2019-01-01'),
	(602, 'Supernova', 1008, 61, 'Rock', 5, '2019-01-01'),
	(611, 'Dangerous', 1008, 62, 'Rock', 5, '2014-01-01'),
	(612, 'Paradise', 1008, 62, 'Rock', 5, '2014-01-01');

-- Dumping data for table musicstream.users: ~12 rows (approximately)
INSERT INTO `users` (`user_id`, `user_name`, `user_email`) VALUES
	(33002, 'Marija Dejanoska', 'md321@gmail.com'),
	(33003, 'Romana Stojceska', 'rs223@tmail.com'),
	(33004, 'Aleksandar Petrovski', 'ap123@gmail.com'),
	(33005, 'Viktorija Trajkovska', 'vt234@tmail.com'),
	(33006, 'Filip Georgievski', 'fg345@gmail.com'),
	(33007, 'Elena Stojanovska', 'es456@tmail.com'),
	(33008, 'Nikola Ivanovski', 'ni567@gmail.com'),
	(33009, 'Ana Pavlovska', 'ap678@tmail.com'),
	(33010, 'Stefan Andonovski', 'sa789@gmail.com'),
	(33011, 'Tamara Kostovska', 'tk890@tmail.com'),
	(33012, 'Marko Stavrevski', 'ms901@gmail.com'),
	(33013, 'Jovana Jovanovska', 'jj012@tmail.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
