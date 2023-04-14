SELECT * FROM city;
ALTER TABLE employee ADD COLUMN city_id INTEGER;
ALTER TABLE employee
    ADD CONSTRAINT fk_city_id
        FOREIGN KEY (city_id) REFERENCES city(city_id);
INSERT INTO city (city_name) VALUES
                                 ('Москва'),
                                 ('Санкт-Петербург'),
                                 ('Новосибирск'),
                                 ('Екатеринбург'),
                                 ('Красноярск');
UPDATE employee SET city_id = 1 WHERE id = 1;
SELECT first_name, last_name, city_name
FROM employee
LEFT JOIN city
 ON employee.city_id = city.city_id;
SELECT city_name, first_name, last_name
FROM city
LEFT JOIN employee
ON city.city_id = employee.city_id;
SELECT first_name, last_name, city_name
FROM employee
         FULL OUTER JOIN city
                         ON employee.city_id = city.city_id;

