-- liquibase formatted sql

-- changeset mon2:1723459216873-1
CREATE TABLE make (id BIGINT AUTO_INCREMENT NOT NULL, country VARCHAR(255) NULL, name ENUM('FORD', 'AUDI', 'BMW', 'MAZDA', 'TOYOTA', 'FERRARI', 'HOLDEN', 'HONDA', 'HYUNDIA', 'KIA', 'LAMBORGHINI', 'LANDROVER', 'LEXUS', 'MERCEDESBENZ', 'MITSUBISHI', 'NISSAN', 'SUBARU', 'SUZUKI', 'VOLKSWAGEN', 'VOLVO') NULL, CONSTRAINT PK_MAKE PRIMARY KEY (id), UNIQUE (name));

-- changeset mon2:1723459216873-2
CREATE TABLE model (id BIGINT AUTO_INCREMENT NOT NULL, make_id BIGINT NOT NULL, name VARCHAR(255) NULL, type ENUM('SEDAN', 'SUV', 'HATCHBACK', 'PERFORMANCE', 'COMMERCIAL', 'UTE') NULL, CONSTRAINT PK_MODEL PRIMARY KEY (id));

-- changeset mon2:1723459216873-3
CREATE INDEX FKfvdrvechg4dtwo64ut3g01hu4 ON model(make_id);

-- changeset mon2:1723459216873-4
ALTER TABLE model ADD CONSTRAINT FKfvdrvechg4dtwo64ut3g01hu4 FOREIGN KEY (make_id) REFERENCES make (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

