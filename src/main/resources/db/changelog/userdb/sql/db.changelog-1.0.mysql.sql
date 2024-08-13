-- liquibase formatted sql

-- changeset mon2:1723546099679-1
CREATE TABLE appuser (is_active BIT(1) NULL, is_verified BIT(1) NULL, created_date datetime NOT NULL, id BIGINT AUTO_INCREMENT NOT NULL, last_login_date datetime NULL, email VARCHAR(255) NOT NULL, firstname VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, CONSTRAINT PK_APPUSER PRIMARY KEY (id), UNIQUE (email));

