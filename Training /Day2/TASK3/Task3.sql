CREATE DATABASE TASK3;
USE TASK3;


CREATE TABLE IF NOT EXISTS accounts(
id INT PRIMARY KEY , 
username varchar(25) NOT NULL
);

drop table accounts;

CREATE TABLE IF NOT EXISTS ITEMS (
id INT PRIMARY KEY,
type ENUM('sword', 'shield', 'armor') 
,name varchar(255) NOT NULL
);

DROP TABLE ITEMS;

CREATE TABLE accounts_items (
    account_id INT,
    item_id INT,
    quality ENUM('common', 'rare', 'epic') NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
);


-- inserting the given values 
INSERT INTO accounts (id, username) VALUES
(1, 'cmunns1'),
(2, 'yworcs0');

SELECT * FROM accounts;

INSERT INTO items (id, type, name) VALUES
(1, 'sword', 'Sword of Solanaceae'),
(2, 'shield', 'Shield of Rosaceae'),
(3, 'shield', 'Shield of Fagaceae'),
(5, 'shield', 'Shield of Lauraceae'),
(6, 'sword', 'Sword of Loasaceae'),
(7, 'armor', 'Armor of Myrtaceae'),
(8, 'shield', 'Shield of Rosaceae'),
(10, 'shield', 'Shield of Rosaceae');

SELECT * FROM items;

INSERT INTO accounts_items (account_id, item_id, quality) VALUES
(1, 10, 'epic'),
(1, 2, 'rare'),
(1, 2, 'rare'),
(1, 7, 'rare'),
(1, 1, 'common'),
(1, 2, 'common'),
(1, 3, 'common'),
(1, 5, 'common'),
(1, 8, 'common'),
(2, 8, 'epic'),
(2, 5, 'rare'),
(2, 3, 'common'),
(2, 6, 'common');
insert into accounts_items(account_id, item_id, quality) values
(1,6, 'common'),
(2,3, 'epic'),
(1,3, 'epic');

SELECT * FROM ITEMS;
    
    
CREATE VIEW joined_items AS
SELECT 
    a.username, 
    it.type, 
    ai.item_id, 
    ai.quality, 
    it.name,
    RANK() OVER (PARTITION BY a.username, it.type ORDER BY 
        CASE 
            WHEN ai.quality = 'rare' THEN 2
            WHEN ai.quality = 'epic' THEN 1
            WHEN ai.quality = 'common' THEN 3
        END
    ) AS ranked
FROM accounts_items AS ai 
JOIN accounts AS a ON ai.account_id = a.id
JOIN items AS it ON ai.item_id = it.id;


SELECT 
    username, 
    type, 
    quality AS advised_quality,
    GROUP_CONCAT(DISTINCT name ORDER BY name SEPARATOR ', ') AS advised_name
FROM joined_items
WHERE ranked = 1
GROUP BY username, type, quality
ORDER BY username, type;

    
