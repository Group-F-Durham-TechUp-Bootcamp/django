  
USE mytest;
DROP TABLE users;
CREATE TABLE users(
id int PRIMARY KEY,
first_name varchar (25) NOT NULL,
last_name varchar(25) NOT NULL,
created_at timestamp NOT NULL,
email_address varchar (25) NOT NULL,
password varchar(20) NOT NULL,
DOB date NOT NULL,
chosen_diets varchar(255) NULL,
intolerances TEXT NULL, 
Desired_meal_plan_lenght datetime NOT NULL, 
Desired_meal_type TEXT NULL
);
DROP TABLE Recipes;
 CREATE TABLE Recipes (
 id INTEGER PRIMARY KEY,
 API_Plugin_id int NOT NULL,
 all_meals_imported text NULL ,
 recipe_name text NULL,
 meal_description text NULL,
 ingredients_and_quatity text NULL,
 cooking_time time NULL,
 meal_recipe_full_calories float NULL);
 
DROP TABLE Meal_planner;
CREATE TABLE Meal_planner(
  meal_plan INT NOT NULL,
  user_id int PRIMARY KEY ,
  recipe_id VARCHAR(45) NULL,
  meals_within_diet INT NULL,
  shopping_basket VARCHAR(45) NULL,
  total_recipe_portions FLOAT NULL,
  consumed_portion_size FLOAT NULL,
  calories_per_serving FLOAT NULL,
  total_daily_calories FLOAT NULL,
  total_weekly_calories FLOAT NULL,
  total_motly_calories FLOAT NULL,
  cooking_time_per_meal TIME NULL,
  total_cooking_time_per_day TIME NULL,
  day_meals_were_consumed DATETIME NULL);

DROP TABLE Api_plugin;
  
  CREATE TABLE API_plugin(id int,
  recipe_websites varchar(300) NULL,
  recipe_hyperlinks varchar (300) NULL,
  supermarket_websites varchar(300) NULL );


INSERT INTO users (id, first_name, last_name, created_at, email_address, password, DOB, chosen_diets, intolerances, desired_meal_type, desired_meal_plan_lenght) VALUES (1, 'ana','nick',121220, 'ana@gmail.com', 'ana', 010121, 'vegan', 'gluten', 'vegan',050522);
INSERT INTO users (id, first_name, last_name, created_at, email_address, password, DOB, chosen_diets, intolerances, desired_meal_type, desired_meal_plan_lenght) VALUES (2, 'rob', 'botten', 030120, 'rob@gmail.com', 'rob', 020621, 'vegetarian', 'nuts', 'vegan', 070822);
INSERT INTO users (id, first_name, last_name, created_at, email_address, password, DOB, chosen_diets, intolerances, desired_meal_type, desired_meal_plan_lenght) VALUES (3, 'rona', 'ascd', 040520, 'rona@gmail.com', 'rona', 200121, 'vegetarian','gluten', 'vegan', 070822);
SELECT * FROM users;
COMMIT;









