CREATE TABLE mini_board( -- 게시판
	num NUMBER PRIMARY KEY, -- 글 번호
	writer VARCHAR2(20) NOT NULL, -- 글 작성자 이름
	title VARCHAR2(50) NOT NULL, -- 글 제목
	content CLOB, -- 글 내용
	viewCount NUMBER DEFAULT 0, -- 글 조회수
	createdAt DATE DEFAULT SYSDATE -- 글 게시일
);

CREATE SEQUENCE mini_board_seq;


CREATE TABLE mini_users(
	num NUMBER PRIMARY KEY, -- 회원의 고유번호
	userName VARCHAR2(20) UNIQUE, -- 아이디
	password VARCHAR2(100) NOT NULL, -- 비밀번호 
	email VARCHAR2(50) UNIQUE, -- 이메일
	addr VARCHAR2(50) NOT NULL, -- 주
	profileImage VARCHAR2(100), -- 프로필 이미지 정보 (처음 가입시 null)
	role VARCHAR2(10) DEFAULT 'ROLE_USER', -- 역활 ROLE_USER(일반사용자) | ROLE_ADMIN(관리자 계정)
	updatedAt DATE, -- 수정 날짜
	createdAt DATE -- 가입 날짜
);

CREATE SEQUENCE mini_users_seq;
