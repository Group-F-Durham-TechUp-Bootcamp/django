USE mytest;

DROP TABLE IF  exists  users;
CREATE TABLE users(
id int PRIMARY KEY,
first_name varchar(25),
last_name varchar(25) ,
created_at timestamp ,
email_address varchar (25),
password varchar(20),
DOB date,
chosen_diets varchar(255),
intolerances TEXT, 
Desired_meal_plan_lenght datetime , 
Desired_meal_type TEXT );

DROP TABLE IF EXISTS recipes;
 CREATE TABLE Recipes (
 id INTEGER PRIMARY KEY,
 API_Plugin_id int,
 all_meals_imported text ,
 recipe_name text,
 meal_description text ,
 ingredients_and_quatity text,
 cooking_time time ,
 meal_recipe_full_calories float );

DROP TABLE IF EXISTS meal_planner;
 
CREATE TABLE Meal_planner(
  meal_plan INT NOT NULL,
  user_id int PRIMARY KEY ,
  recipe_id VARCHAR(45),
  meals_within_diet INT ,
  shopping_basket VARCHAR(45) ,
  total_recipe_portions FLOAT ,
  consumed_portion_size FLOAT ,
  calories_per_serving FLOAT ,
  total_daily_calories FLOAT,
  total_weekly_calories FLOAT ,
  total_motly_calories FLOAT ,
  cooking_time_per_meal TIME ,
  total_cooking_time_per_day TIME ,
  day_meals_were_consumed DATETIME );
  
  DROP TABLE if exists api_plugin;

  CREATE TABLE API_plugin(
  id int primary KEY ,
  recipe_websites varchar(300),
  recipe_hyperlinks varchar (300) ,
  supermarket_websites varchar(300));
  
  SELECT * FROM users;
  INSERT INTO users VALUES(1, 'ALA', 'BAL', 230120, 'BAL@GMAIL.COM', 'DDD', 020220, 'VEGAN', 'GLUTEN', 050522, 'VEGAN');
  
  
  

  
  
  
  










