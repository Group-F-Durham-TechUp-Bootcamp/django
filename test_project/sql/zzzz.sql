USE mytest;
CREATE TABLE USERS(
id int PRIMARY KEY,
first_name int,
last_name varchar(25) NOT NULL,
created_at timestamp,
email_address varchar (25) NOT NULL,
password varchar(20),
DOB date,
chosen_diets varchar(30),
intolerances TEXT, 
Desired_meal_plan_lenght datetime, 
Desired_meal_type TEXT);
 
 CREATE TABLE Recipes(
 id INTEGER PRIMARY KEY,
 API_Plugin_id int,
 all_meals_imported text,
 recipe_name text,
 meal_description text,
 ingredients_and_quantity text,
 cooking_time time,
 meal_recipe_full_calories float);
 
 
CREATE TABLE Meal_planner(
  meal_plan INT,
  user_id INT ,
  recipe_id VARCHAR(45),
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
   
  CREATE TABLE API_plugin(
  id int primary KEY ,
  recipe_websites varchar(50),
  recipe_hyperlinks varchar (50),
  supermarket_websites varchar(50) );