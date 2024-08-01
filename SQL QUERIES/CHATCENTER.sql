CREATE DATABASE CHATCENTER;
USE CHATCENTER;
CREATE TABLE chat_center (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    message TEXT,
    timestamp DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL,
    user_id INT UNIQUE,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME
);

INSERT INTO chat_center (id, username, email, message, timestamp, status, user_id, rating, created_at, updated_at)
VALUES
(1, 'user1', 'user1@example.com', 'Hello World', NOW(), 'active', 101, 5, NOW(), NOW()),
(2, 'user2', 'user2@example.com', 'Hi there', NOW(), 'inactive', 102, 4, NOW(), NOW()),
(3, 'user3', 'user3@example.com', 'Good morning', NOW(), 'active', 103, 3, NOW(), NOW()),
(4, 'user4', 'user4@example.com', 'How are you?', NOW(), 'active', 104, 5, NOW(), NOW()),
(5, 'user5', 'user5@example.com', 'I am fine', NOW(), 'inactive', 105, 2, NOW(), NOW()),
(6, 'user6', 'user6@example.com', 'What\'s up?', NOW(), 'active', 106, 1, NOW(), NOW()),
(7, 'user7', 'user7@example.com', 'Good night', NOW(), 'active', 107, 4, NOW(), NOW()),
(8, 'user8', 'user8@example.com', 'See you', NOW(), 'inactive', 108, 3, NOW(), NOW()),
(9, 'user9', 'user9@example.com', 'Take care', NOW(), 'active', 109, 5, NOW(), NOW()),
(10, 'user10', 'user10@example.com', 'Good luck', NOW(), 'inactive', 110, 2, NOW(), NOW()),
(11, 'user11', 'user11@example.com', 'Happy day', NOW(), 'active', 111, 4, NOW(), NOW()),
(12, 'user12', 'user12@example.com', 'What\'s new?', NOW(), 'inactive', 112, 1, NOW(), NOW()),
(13, 'user13', 'user13@example.com', 'See you later', NOW(), 'active', 113, 5, NOW(), NOW()),
(14, 'user14', 'user14@example.com', 'Good morning', NOW(), 'inactive', 114, 2, NOW(), NOW()),
(15, 'user15', 'user15@example.com', 'Nice to meet you', NOW(), 'active', 115, 3, NOW(), NOW()),
(16, 'user16', 'user16@example.com', 'Take care', NOW(), 'active', 116, 4, NOW(), NOW()),
(17, 'user17', 'user17@example.com', 'Good evening', NOW(), 'inactive', 117, 5, NOW(), NOW()),
(18, 'user18', 'user18@example.com', 'See you soon', NOW(), 'active', 118, 1, NOW(), NOW()),
(19, 'user19', 'user19@example.com', 'Goodbye', NOW(), 'inactive', 119, 2, NOW(), NOW()),
(20, 'user20', 'user20@example.com', 'Take care', NOW(), 'active', 120, 3, NOW(), NOW());




ALTER TABLE chat_center
MODIFY status VARCHAR(20) NOT NULL;


ALTER TABLE chat_center
ADD CONSTRAINT unique_username UNIQUE (username);


ALTER TABLE chat_center
ADD CONSTRAINT chk_rating CHECK (rating BETWEEN 1 AND 5);

ALTER TABLE chat_center
ADD CONSTRAINT chk_timestamp CHECK (timestamp IS NOT NULL);