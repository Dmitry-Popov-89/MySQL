DROP TABLE IF EXISTS comments;

CREATE TABLE comments(
	to_media_id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
	comment_text TEXT,
	posted_at DATETIME DEFAULT NOW(),
	total_likes_amount BIGINT DEFAULT 0,
	INDEX comments_media_idx (to_media_id),
	FOREIGN KEY (to_media_id) REFERENCES media (id),
	FOREIGN KEY (from_user_id) REFERENCES users (id)
);

INSERT INTO comments VALUES (2, 2, 'Классная фотка!', DEFAULT, DEFAULT);

SELECT * FROM comments;

DROP TABLE IF EXISTS games;

CREATE TABLE games(
	id SERIAL,
	name VARCHAR(120) NOT NULL,
	total_players_amount BIGINT,
	servers_status ENUM('online', 'offline', 'maintanance') NOT NULL
);

INSERT INTO games VALUES (DEFAULT, 'Monsters clash', 4623, 'online');

SELECT * FROM games;

DROP TABLE IF EXISTS likes;

CREATE TABLE likes(
	to_media_id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
	total_likes_amount BIGINT DEFAULT 0,
	INDEX likes_media_idx (to_media_id),
	FOREIGN KEY (to_media_id) REFERENCES media (id),
	FOREIGN KEY (from_user_id) REFERENCES users (id)
);

INSERT INTO likes VALUES (1, 1, 1);

SELECT * FROM likes;