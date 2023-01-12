-- Active: 1673273831710@@localhost@5432@lab2_Netflix_Top@public

-- Функція, що змінює нові дані текстових полей таблиці на дані у верхньому регістрі
CREATE OR REPLACE FUNCTION country_upper()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS $$
    BEGIN
        UPDATE countries
        SET country_iso2 = upper(country_iso2),
        country_name = upper(country_name)
        WHERE countries.country_iso2 = NEW.country_iso2;
        RETURN NULL;
    END;
$$;

-- Тригер, що викликає функцію створену вище після додавання новго рядку таблиці
CREATE OR REPLACE Trigger upper_iso2_name
AFTER INSERT ON countries
FOR EACH ROW EXECUTE FUNCTION country_upper();

