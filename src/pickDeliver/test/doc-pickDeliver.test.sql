/*
TODO code to create the eucledian matrix table and to modify the orders
*/

\echo --q1
SELECT * FROM _pgr_pickDeliver(
    'SELECT * FROM orders ORDER BY id',
    'SELECT * from vehicles',
    'SELECT * from dist_matrix',
    30);

\echo --q2
SELECT * FROM _pgr_pickDeliver(
    'select * from customer order by id', 25, 200, 1, 30);
\echo --q3

SELECT * FROM _pgr_pickDeliver(
    'SELECT * FROM orders ORDER BY id',
    'SELECT * FROM vehicles',
    30);
\echo --q4
