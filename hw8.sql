--Создать таблицу друзей с использованием механизма валидации данных в SQL

Create Table friends (
	id int primary key auto_increment,
	created_at timestamp not null default current_timestamp,
	user_id1 int not null,
    user_id2 int not null,
	foreign key(user_id1) references users(id),
    foreign key(user_id1) references users(id)
    )


--Добавить в таблицу друзей несколько записей
INSERT INTO friends (user_id1, user_id2)
VALUES

('1', '2'),
('1', '3'),
('3', '2'),
 ('5', '2'),   
('1', '5')

--Вывести сумму всех транзакций отдельно по каждой валюте (в упорядоченном виде)
Select Sum(amount)
From txs
Join accounts on txs.sender_account_id = accounts.author_id
Group by currency