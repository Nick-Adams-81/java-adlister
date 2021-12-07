# +----------+             +-------------+
# |  users   |             |    ads      |
# +----------+             +-------------+
# | id       |<------,     | id          |
# | username |       `-----| user_id     | <-- foreign key to users table
# | email    |             | title       |
# | password |             | description |
# +----------+             +-------------+

USE adlister_db;

CREATE TABLE users
(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50)  NOT NULL,
    email VARCHAR(50)  NOT NULL,
    password VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE ads
(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id int UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users (id),
    title VARCHAR(50),
    description VARCHAR(50),
    PRIMARY KEY (id)
);

