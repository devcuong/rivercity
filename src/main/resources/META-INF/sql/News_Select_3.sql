SELECT news_title, news_short_title, news_date, news_alias
FROM news_real 
ORDER BY news_view_count DESC LIMIT 6