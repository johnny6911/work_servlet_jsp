# no : 회원번호
# email : 이메일 (아이디 용도)
# password : 비밀번호
# name : 이름
DROP TABLE users;

CREATE TABLE users (
	no			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email		VARCHAR(255) NOT NULL,
	password	VARCHAR(255) NOT NULL,
	name		VARCHAR(255) NOT NULL,
	UNIQUE (email)
);
	
INSERT INTO users (email, password, name)
	VALUES ('jse69111@gmail.com', '1234', 'johnny');
INSERT INTO users (email, password, name)
	VALUES ('jse6911@gmail.com', '5678', 'john');
INSERT INTO users (email, password, name)
	VALUES ('jse69@gmail.com', '6478', 'james');