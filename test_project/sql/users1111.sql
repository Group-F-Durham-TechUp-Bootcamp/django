SELECT * FROM users;
INSERT INTO users (id, first_name, last_name, created_at, email_address, password, DOB, chosen_diets, intolerances, Desired_meal_plan_lenght, Desired_meal_type)
VALUES (4, 'nick', 'abc', 310122, 'nick@gamil.com', 'nick', 010620, 'vegetarian', ' gluten' , 121122, 'vegetarian');
INSERT INTO users (id, first_name, last_name, created_at, email_address, password, DOB, chosen_diets, intolerances, Desired_meal_plan_lenght, Desired_meal_type)
VALUES (5, 'ada', 'haris', 310122, 'ada@gmail.com', 'ada', 230120, 'vegan', 'no ', 050622, 'vegan');
commit;
UPDATE users SET first_name = 'LORA'  WHERE id =3 ;
commit;
DELETE FROM users WHERE Desired_meal_plan_lenght  BETWEEN 010122 AND 020222;
COMMIT;
SELECT * FROM users;
SELECT * FROM users WHERE DOB = '2001-01-21';

SHOW DATABASES;
SELECT * FROM users;
ALTER TABLE users ADD intolerances1 varchar (100);
commit;
ALTER TABLE users DROP COLUMN intolerances1;
commit;
SELECT first_name, last_name FROM users WHERE chosen_diets ='vegan';
commit;
SELECT * FROM users
WHERE chosen_diet = 'vegan' AND intolerances = 'gluten';
commit;
SHOW databases;

SHOW tables;




