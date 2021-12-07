#Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.
SELECT p.name AS Pokemon_Name,
t.trainername AS Trainer_Name,
pt.pokelevel AS Level,
u.name AS Primary_Type,
v.name AS Secondary_Type 
FROM pokemon_trainer pt 
JOIN pokemons p ON pt.pokemon_id=p.id
JOIN trainers t ON pt.trainerID=t.trainerID
JOIN types u ON p.primary_type=u.id
JOIN types v ON p.secondary_type=v.id
ORDER BY pt.pokelevel;

In my Opinion, Myth Trainer Infin because they have the most dragon type pokemon ;they have 4 pokemon and all those pokemon are level 100;
