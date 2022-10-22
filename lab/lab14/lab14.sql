create table pizzas as
  select "Pizzahhh" as name, 12 as open, 15 as close union
  select "La Val's"        , 11        , 22          union
  select "Sliver"          , 11        , 20          union
  select "Cheeseboard"     , 16        , 23          union
  select "Emilia's"        , 13        , 18;

create table meals as
  select "breakfast" as meal, 11 as time union
  select "lunch"            , 13         union
  select "dinner"           , 19         union
  select "snack"            , 22;


-- Pizza places that open before 1pm in alphabetical order
create table opening as
SELECT name from pizzas where open < 13;


-- Two meals at the same place
create table double as
SELECT a.meal,b.meal,c.name from meals as a,meals as b, pizzas as c
where   b.time-a.time > 6 and c.open <= a.time and c.close >= b.time;

