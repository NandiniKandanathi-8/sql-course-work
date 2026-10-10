-- CHAR_LENGTH(str) or CHARACTER_LENGTH(str)
SELECT CHAR_LENGTH('Hello'); 
SELECT CHAR_LENGTH('😊');

-- CONCAT(str1, str2, ....)
SELECT CONCAT('My', 'SQL');
SELECT CONCAT('Python', ' ', 'Programming ','lang');

-- CONCAT_WS(SEPARATOR, str1,str2, ....)
SELECT CONCAT_WS('-', '2025', '09', '23');
SELECT CONCAT_WS(', ','python', 'java', 'dsa','html');

-- UPPER(str)
SELECT UPPER('hello');

-- LOWER(str) / LCASE(str)
SELECT LOWER('HELLO');

-- LEFT(str, len)
SELECT LEFT('database',5);

-- RIGHT(str,len)
SELECT RIGHT('database', 3);

-- SUBSTRING(str, start, length)
SELECT SUBSTRING('Database',5); 
SELECT SUBSTRING('Python Programming lang', 10,7);

-- LOCATE(substr, str)
SELECT LOCATE('a', 'Database');

-- REPLACE(str, from_str, to_str)
SELECT REPLACE('XXXXXXXXXXXXXXXXXHeXXXXXlloXXXX', 'X', '');

-- TRIM([LEADING | TRAILING | BOTH] remstr FROM str)
SELECT TRIM(' Hello     world     ');

-- LTRIM(str)
SELECT LTRIM(' Hello');

-- RTRIM(str)
SELECT RTRIM('Hello ');

-- REVERSE(str)
SELECT REVERSE('MySQL');

-- LPAD(str, len, padstr)
SELECT LPAD('1238', 10, '-');

-- RPAD(str, len, padstr)
SELECT RPAD('123', 8, '*');

-- REPEAT(str, count)
SELECT REPEAT('MySQL-', 3);
