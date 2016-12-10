use join_test_db;
#Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
  ('Fer', 'fer@example.com', NULL),
  ('Ryan', 'ryan@example.com', 2),
  ('Zach', 'zach@example.com', 2),
  ('Luis', 'luis@example.com', 2);

select * from users where role_id = 4;

#Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results
SELECT *
FROM users u
  JOIN roles r ON r.id = u.role_id;

SELECT *
FROM users u
  LEFT JOIN roles r ON r.id = u.role_id;

SELECT *
FROM users u
  RIGHT JOIN roles r ON r.id = u.role_id;


# if you want to fixed the nulls we can assign the role number 4 - commenter with this query
-- update users SET  role_id = 4 where role_id is null;

#Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.
SELECT
  count(*) as 'Users in that role',
  r.name
FROM roles r
  left JOIN users u ON u.role_id = r.id
GROUP BY r.name

