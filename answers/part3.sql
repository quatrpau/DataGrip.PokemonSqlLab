#What is each pokemon's primary type?
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.primary_type = t.id;
#What is Rufflet's secondary type?
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.secondary_type =
t.id WHERE p.name RLIKE 'Rufflet';
#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pt.trainerID, p.name FROM pokemon_trainer pt JOIN pokemons p ON pt.pokemon_id = p.id WHERE pt.trainerID=303;
#How many pokemon have a secondary type Poison
SELECT COUNT(p.id) FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE t.name RLIKE "POISON";
#What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(p.id) FROM types t JOIN pokemons p ON t.id=p.primary_type GROUP BY t.name;
#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT count(pt.pokemon_id) FROM pokemon_trainer pt WHERE pt.pokelevel = 100;   
#How many pokemon only belong to one trainer and no other?(legendaries?)
SELECT COUNT(legendary_pokemon.pokemon_id) FROM(SELECT pt.pokemon_id FROM
 pokemon_trainer pt GROUP BY pt.pokemon_id HAVING COUNT(pt.trainerID) = 1) legendary_pokemon;
