# prime-solo-sql


--1
SELECT *
FROM accounts
WHERE city = 'chicago';

--2
SELECT *
FROM accounts
WHERE username LIKE '%a%';

--3
UPDATE accounts
SET account_balance = 10.00
WHERE transactions_attempted = 0 AND account_balance = 0;

--4
SELECT *
FROM accounts
WHERE transactions_attempted >= 9;

--5
SELECT username, account_balance
FROM accounts
ORDER BY account_balance DESC
LIMIT 3;

--6
SELECT username, account_balance
FROM accounts
ORDER BY account_balance ASC
LIMIT 3;

--7
SELECT *
FROM accounts
WHERE account_balance > 100;

--8
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('daniel', 'minneapolis', 6, 12, 100.17);

--9
DELETE FROM accounts
WHERE transactions_completed < 5 AND (city = 'phoenix' OR city = 'miami');
