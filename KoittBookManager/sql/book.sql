#DDL (Data Definition Language)
DROP TABLE book;

CREATE TABLE book (
	isbn INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(30) NOT NULL,
	author VARCHAR(30) NOT NULL,
	publisher VARCHAR(30) NOT NULL,
	price INT NOT NULL,
	description VARCHAR(255) NULL
);
INSERT INTO book (title, author, publisher, price, description)
	VALUES ('드래곤볼', '토리야마', '반다이', 20000, '찾아라 드래곤볼ㅋ');

INSERT INTO book (title, author, publisher, price, description)
	VALUES ('나루토', '일본', '반다이', 10000, '닌자와 여행');

INSERT INTO book (title, author, publisher, price, description)
	VALUES ('원피스', '일본', '반다이', 18000, '보물을 찾아서');
#DQL
SELECT * FROM book;