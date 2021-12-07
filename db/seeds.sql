USE adlister_db;

INSERT INTO users(username, email, password)
VALUES ('Test User 1', 'Test1@test.com', 'test1'),
       ('Test user 2', 'Test2@test.com', 'test2'),
       ('Test user 3', 'Test3@test.com', 'test3');

INSERT INTO ads(user_id, title, description)
VALUES (1, 'Test ad 1', 'This is the first test ad'),
       (2, 'Test ad 2', 'This is the second test ad'),
       (3, 'Test ad 3', 'This is the third test ad');
