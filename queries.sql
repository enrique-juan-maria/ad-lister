select email from users
where id in (
  select user_id from ads
  where id in(
      select id from ads
      where title = 'first post'
      )
  );

select category from category
where id in (
  select category_id from ads_category
  where ad_id in(
      select id from ads
      where title = 'first post'
      )
  );

SELECT * FROM ads
WHERE id IN (
    SELECT ad_id FROM ads_category
    WHERE category_id IN (
        SELECT id FROM category
        WHERE category = 'category4'
        )
    );

select * from ads
where user_id = (
           select id from users
           where username = 'username2'
           );