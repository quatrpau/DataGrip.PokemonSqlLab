#What are all the types of pokemon that a pokemon can have?
SELECT name FROM types;
#What is the name of the pokemon with id 45?
SELECT * FROM pokemons WHERE id=45;    
#How many pokemon are there?
SELECT COUNT(id) FROM pokemons;
#How many types are there?
SELECT COUNT(id) FROM types;
#How many pokemon have a secondary type?
SELECT COUNT(secondary_type) FROM pokemons;
