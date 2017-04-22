CREATE TABLE CATEGORY ( ID INT NOT NULL AUTO_INCREMENT, CATEGORY_DESCRIPTION VARCHAR(20) NOT NULL, PRIMARY KEY (ID));

CREATE TABLE BOOK (ID INT NOT NULL AUTO_INCREMENT, CATEGORY_ID INT NOT NULL, BOOK_TITLE VARCHAR(60) NOT NULL, PUBLISHER VARCHAR(60) NOT NULL, PRIMARY KEY (ID), CONSTRAINT FK_BOOK_1 FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(ID));

CREATE TABLE AUTHOR (ID INT NOT NULL AUTO_INCREMENT, BOOK_ID INT NOT NULL, FIRST_NAME VARCHAR(20) NOT NULL, LAST_NAME VARCHAR(20) NOT NULL, PRIMARY KEY (ID), CONSTRAINT FK_AUTHOR_1 FOREIGN KEY (BOOK_ID) REFERENCES BOOK (ID));