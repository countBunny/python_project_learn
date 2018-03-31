DROP DATABASE IF EXISTS awesome;

CREATE DATABASE awesome;

USE awesome;

GRANT SELECT, INSERT, UPDATE, DELETE on awesome.* to 'www-data'@'localhost'
identified by 'www-data';

create table users (
    `id` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `passwd` VARCHAR(50) NOT NULL,
    `admin` bool not NULL,
    `name` VARCHAR(50) NOT NULL,
    `image` VARCHAR(500) NOT NULL,
    `created_at` REAL NOT NULL,
    UNIQUE KEY `idx_email` (`email`),
    key `idx_created_at` (`created_at`),
    PRIMARY KEY (`id`)
) engine=innodb DEFAULT charset=utf8;

CREATE TABLE blogs(
    `id` VARCHAR(50) NOT NULL,
    `user_id` VARCHAR(50) NOT NULL,
    `user_name` VARCHAR(50) not NULL,
    `user_image` VARCHAR(500) not NULL,
    `name` VARCHAR(50) NOT NULL,
    `summary` varchar(200) NOT NULL,
    `content` mediumtext not NULL,
    `created_at` real NOT NULL,
    key `idx_created_at` (`created_at`),
    PRIMARY KEY (`id`)
) engine=innodb DEFAULT charset=utf8;

CREATE TABLE comments (
    `id` varchar(50) NOT NULL,
    `blog_id` VARCHAR(50) NOT NULL,
    `user_id` VARCHAR(50) NOT NULL,
    `user_name` VARCHAR(50) NOT NULL,
    `user_image` VARCHAR(500) NOT NULL,
    `content` mediumtext not NULL,
    `created_at` REAL NOT NULL,
    key `idx_created_at` (`created_at`),
    PRIMARY KEY (`id`)
) engine=innodb DEFAULT charset=utf8;
