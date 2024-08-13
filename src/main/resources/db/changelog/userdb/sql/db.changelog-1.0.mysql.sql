-- liquibase formatted sql

-- changeset mon2:1723525232177-1
CREATE TABLE appuser (is_active BIT(1) NULL, is_verified BIT(1) NULL, created_date datetime NULL, id BIGINT AUTO_INCREMENT NOT NULL, last_login_date datetime NULL, email VARCHAR(255) NULL, firstname VARCHAR(255) NULL, lastname VARCHAR(255) NULL, password VARCHAR(255) NULL, CONSTRAINT PK_APPUSER PRIMARY KEY (id));

