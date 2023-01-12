-- Active: 1673273831710@@localhost@5432@lab2_Netflix_Top

-- Функція, що виводить країну, назву введеного шоу та дату, коли шоу було на першому місці у топі.
CREATE OR REPLACE FUNCTION where_when_show_top1(show_arg char)
RETURNS TABLE(country char, show_title char , date date)
LANGUAGE PLPGSQL
AS $$
BEGIN
    RETURN QUERY
        SELECT top10_by_contries.country_iso2, shows.show_title, top10_by_contries.week
        FROM top10_by_contries
            JOIN shows ON shows.show_id = top10_by_contries.show_id
        WHERE top10_by_contries.cumulative_weeks_in_top_10 = 1 AND
            shows.show_title = show_arg;
END;
$$;
