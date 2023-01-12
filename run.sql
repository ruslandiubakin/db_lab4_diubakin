-- Виклик функції where_when_show_top1()
SELECT where_when_show_top1('Winter on Fire: Ukraine`s Fight for Freedom');

-- Виклик процедури insert_show()
CALL insert_show(10, 'Wednesday', 'TV');

-- Перевірка роботи тригера
INSERT INTO countries(country_iso2, country_name) VALUES ('ar', 'Argentina');
INSERT INTO countries(country_iso2, country_name) VALUES ('My', 'Malaysia');
INSERT INTO countries(country_iso2, country_name) VALUES ('hU', 'Hungary');
INSERT INTO countries(country_iso2, country_name) VALUES ('ie', 'Ireland');
