-- In 10.sql, write SQL query to answer a question of your choice. This query should:
--      - Make use of AS to rename a column
--      - Involve at least condition, using WHERE
--      - Sort by at least one column using ORDER BY
select last_name as apellido, 
        first_name as nombre, 
        ifnull(bats, "no hay datos") as "batea a la", 
        ifnull(throws, "no hay datos") as "tira con",
        birth_city || ", " || birth_country as "nacion en",
        ifnull(debut, "no hay datos") as "debuto el"
from players
where birth_country = "Cuba"
order by last_name, first_name;