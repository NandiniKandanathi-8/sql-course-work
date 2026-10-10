-- Absolute value
select abs(-25),abs(30);
-- ceiling/round up
select ceil(12.3),ceil(-12.7);
-- floor/round down
select floor(12.9), floor(-12.3);
-- round 
select round(123.4567,2),round(123.4567,3);
-- truncate
select truncate(123.4567,2),truncate(123.4567,3);
-- power/exponent
select pow(2,3),power(5,2);
-- square root
select sqrt(16),sqrt(2);
-- modulo/remainder
select mod(10,3);
-- random number
select rand(),rand(10);
-- pi constant
select pi();
-- sign
select sign(-25),sign(0),sign(30);
-- greatest values
select greatest(10,25,7,100,56);
-- least values
select least(10,5,25,7,132);