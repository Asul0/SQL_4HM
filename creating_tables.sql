-- Создание таблицы users
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    firstname TEXT,
    lastname TEXT,
    age INTEGER,
    gender TEXT
);

-- Вставка данных в таблицу users
INSERT INTO users (user_id, firstname, lastname, age, gender) VALUES
    (1, 'John', 'Doe', 40, 'male'),
    (2, 'Jane', 'Smith', 30, 'female'),
    (3, 'Michael', 'Johnson', 50, 'male'),
    (4, 'Emily', 'Williams', 25, 'female');

-- Создание таблицы groups
CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY,
    group_name TEXT
);

-- Вставка данных в таблицу groups
INSERT INTO groups (group_id, group_name) VALUES
    (101, 'Group A'),
    (102, 'Group B'),
    (103, 'Group C');

-- Создание таблицы group_users
CREATE TABLE group_users (
    group_id INTEGER,
    user_id INTEGER
);

-- Вставка данных в таблицу group_users
INSERT INTO group_users (group_id, user_id) VALUES
    (101, 1),
    (101, 2),
    (101, 4),
    (102, 1),
    (102, 3),
    (103, 3);

-- Создание таблицы messages
CREATE TABLE messages (
    message_id INTEGER PRIMARY KEY,
    sender_id INTEGER,
    receiver_id INTEGER
);

-- Вставка данных в таблицу messages
INSERT INTO messages (message_id, sender_id, receiver_id) VALUES
    (1, 1, 3),
    (2, 2, 1),
    (3, 3, 1),
    (4, 3, 2),
    (5, 4, 1),
    (6, 4, 2),
    (7, 1, 2),
    (8, 2, 1),
    (9, 1, 4),
    (10, 3, 1);
