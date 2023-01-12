-- Active: 1673273831710@@localhost@5432@lab2_Netflix_Top@public

-- Процедура вставлення нового рядку в таблицю shows з назвою категорії шоу у верхньому регістрі
CREATE OR REPLACE PROCEDURE insert_show(show_id_ int, show_title_ char, category_ char)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO shows(show_id, show_title, category) VALUES (show_id_, show_title_, UPPER(category_));
END;
$$;