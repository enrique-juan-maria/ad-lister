-- for a given ad, what is the email address of the user that created it

select email from users
where id in (
    select user_id from ads
    where id in(
        select id from ads
        where title = 'given title'
    )
);

select category from category
where id in (
    select category_id from ads_category
    where ad_id in(
        select id from ads
        where title = 'given title'
    )
);