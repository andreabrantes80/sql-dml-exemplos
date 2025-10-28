--UPDATE - Atualiza registros
update users set first_name = 'Luiz',
last_name = 'Miranda'
 where id=100;

select * from users where id=100;