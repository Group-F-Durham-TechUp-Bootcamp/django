show tables;
SELECT * FROM recipes;
ALTER TABLE recipes
ADD constraint recipe_id
FOREIGN KEY (recipe_id) REFERENCES meal_planner(recipe_id);







