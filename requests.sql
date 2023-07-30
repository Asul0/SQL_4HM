-- Запрос для подсчета количества групп (сообществ), в которые вступил каждый пользователь:

SELECT u.user_id, u.firstname, COUNT(gu.group_id) AS count_of_groups
FROM users u
LEFT JOIN group_users gu ON u.user_id = gu.user_id
GROUP BY u.user_id, u.firstname;


-- Запрос для подсчета количества пользователей в каждом сообществе:

SELECT g.group_id, g.group_name, COUNT(gu.user_id) AS count_of_users
FROM groups g
LEFT JOIN group_users gu ON g.group_id = gu.group_id
GROUP BY g.group_id, g.group_name;


-- Запрос для поиска пользователя, который больше всех общался с заданным пользователем (по числу отправленных сообщений):

SELECT m.sender_id, u.firstname, COUNT(m.message_id) AS count_of_messages
FROM messages m
JOIN users u ON m.sender_id = u.user_id
WHERE m.receiver_id = 2
GROUP BY m.sender_id, u.firstname
ORDER BY count_of_messages DESC
LIMIT 1;


-- Запрос для подсчета общего количества лайков, которые получили пользователи младше 18 лет:

SELECT SUM(likes) AS total_likes_under_18
FROM users
WHERE age < 18;


-- Запрос для определения, кто больше всего поставил лайков (всего): мужчины или женщины:

SELECT gender, SUM(likes) AS total_likes
FROM users
GROUP BY gender
ORDER BY total_likes DESC
LIMIT 1;

