
select salary from users where salary BETWEEN 1000 and 5000
ORDER BY salary ASC;
--configura um salário aleat´roio para users
update users set salary = round(abs(random()) / 9223372036854775807.0 * (10000 - 2000), 2)