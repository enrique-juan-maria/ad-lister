-- for a given ad, what is the email address of the user that created it
insert into users (username, email, password)
values ('username', 'email', 'password1');

insert into ads (title, description, user_id)
values ('first post', 'description', 1);

insert into category (category)
values ('category1');

insert into category (category)
values ('category2'),
       ('category3'),
       ('category4');

insert into ads_category (ad_id, category_id)
values (1, 1);

insert into ads_category (ad_id, category_id)
values (1, 2),
       (1, 4);

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
        WHERE category = 'category1'
        )
    );