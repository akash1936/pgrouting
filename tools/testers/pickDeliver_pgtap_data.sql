
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS vehicles CASCADE;
CREATE table customer (
                id BIGINT not null primary key,
                x DOUBLE PRECISION,
                y DOUBLE PRECISION,
                demand INTEGER,
                opentime INTEGER,
                closetime INTEGER, 
                servicetime INTEGER, 
                pindex BIGINT,
                dindex BIGINT 
                );

CREATE TABLE orders (
      id BIGINT PRIMARY KEY, 
      demand FLOAT, 
      pick_x FLOAT, 
      pick_y FLOAT, 
      pick_open FLOAT, 
      pick_close FLOAT, 
      pick_service FLOAT, 
      deliver_x FLOAT, 
      deliver_y FLOAT, 
      deliver_open FLOAT, 
      deliver_close FLOAT, 
      deliver_service FLOAT
);

INSERT INTO orders (id,  demand, 
pick_x,  pick_y ,  pick_open,  pick_close,  pick_service, 
deliver_x,  deliver_y ,  deliver_open,  deliver_close,  deliver_service)
VALUES
(3,  10, 42, 66,   65,  146, 90, 45, 65, 997, 1068, 90), 
(5,  10, 42, 65,   15,   67, 90, 40, 66, 170,  225, 90), 
(6,  20, 40, 69,  621,  702, 90, 45, 70, 825,  870, 90), 
(8,  20, 38, 68,  255,  324, 90, 35, 66, 357,  410, 90), 
(9,  10, 38, 70,  534,  605, 90, 42, 68, 727,  782, 90), 
(11, 10, 35, 69,  448,  505, 90, 45, 68, 912,  967, 90), 
(13, 30, 22, 75,   30,   92, 90, 18, 75,  99,  148, 90), 
(16, 40, 20, 85,  475,  528, 90, 22, 85, 567,  620, 90), 
(18, 20, 15, 75,  179,  254, 90, 25, 85, 652,  721, 90), 
(19, 10, 15, 80,  278,  345, 90, 20, 80, 384,  429, 90), 
(20, 10, 30, 50,   10,   73, 90, 25, 50,  65,  144, 90), 
(23, 10, 28, 55,  732,  777,  0, 28, 55, 732,  777, 90), 
(25, 40, 25, 52,  169,  224, 90, 23, 52, 261,  316, 90), 
(28, 20, 23, 55,  546,  593, 90, 28, 52, 812,  883, 90), 
(29, 10, 20, 50,  358,  405, 90, 25, 55, 622,  701, 90), 
(30, 10, 20, 55,  449,  504, 90, 30, 52, 914,  965, 90), 
(32, 30, 10, 40,   31,  100, 90, 10, 35, 200,  237, 90), 
(33, 40,  8, 40,   87,  158, 90,  2, 40, 383,  434, 90), 
(35, 10,  5, 35,  283,  344, 90,  0, 45, 567,  624, 90), 
(36, 10,  5, 45,  665,  716,  0,  5, 45, 665,  716, 90), 
(38, 30,  0, 40,  479,  522, 90,  8, 45, 751,  816, 90), 
(42, 20, 33, 32,   68,  149, 90, 35, 30, 264,  321, 90), 
(43, 10, 33, 35,   16,   80, 90, 35, 32, 166,  235, 90), 
(44, 10, 32, 30,  359,  412, 90, 30, 32, 448,  509, 90), 
(45, 10, 30, 30,  541,  600, 90, 28, 30, 632,  693, 90), 
(49, 10, 28, 35, 1001, 1066, 90, 30, 35,1054, 1127, 90), 
(50, 10, 26, 32,  815,  880, 90, 25, 35, 912,  969, 90), 
(51, 10, 25, 30,  725,  786,  0, 25, 30, 725,  786, 90), 
(53, 20, 44,  5,  286,  347, 90, 38,  5, 471,  534, 90), 
(54, 40, 42, 10,  186,  257, 90, 35,  5, 562,  629, 90), 
(56, 30, 40,  5,  385,  436, 90, 38, 15, 651,  740, 90), 
(57, 40, 40, 15,   35,   87, 90, 42, 15,  95,  158, 90), 
(62, 20, 50, 35,  262,  317, 90, 45, 30, 734,  777, 90), 
(63, 50, 50, 40,  171,  218, 90, 53, 35, 353,  412, 90), 
(64, 10, 48, 30,  632,  693,  0, 48, 30, 632,  693, 90), 
(65, 10, 48, 40,   76,  129, 90, 53, 30, 450,  505, 90), 
(66, 10, 47, 35,  826,  875, 90, 45, 35, 916,  969, 90), 
(67, 10, 47, 40,   12,   77, 90, 50, 30, 531,  610, 90), 
(71, 20, 95, 35,  293,  360, 90, 88, 30, 574,  643, 90), 
(76, 10, 90, 35,  203,  260, 90, 92, 30, 478,  551, 90), 
(78, 20, 88, 35,  109,  170,  0, 88, 35, 109,  170, 90), 
(79, 10, 87, 30,  668,  731, 90, 85, 25, 769,  820, 90), 
(81, 30, 85, 35,   47,  124, 90, 95, 30, 387,  456, 90), 
(82, 20, 75, 55,  369,  420, 90, 68, 60, 555,  612, 90), 
(84, 20, 70, 58,  458,  523, 90, 63, 58, 737,  802, 90), 
(86, 10, 66, 55,  173,  238, 90, 60, 60, 836,  889, 90), 
(87, 20, 65, 55,   85,  144, 90, 72, 55, 265,  338, 90), 
(90, 10, 60, 55,   20,   84, 90, 65, 60, 645,  708, 90), 
(92, 20, 67, 85,  368,  441, 90, 65, 85, 475,  518, 90), 
(96, 10, 60, 80,   95,  156, 90, 65, 82, 285,  336, 90), 
(97, 30, 60, 85,  561,  622,  0, 60, 85, 561,  622, 90), 
(98, 20, 58, 75,   30,   84, 90, 62, 80, 196,  239, 90), 
(100,20, 55, 85,  647,  726, 90, 55, 80, 743,  820, 90);

WITH
pickups AS (
    SELECT id, demand, x AS pick_x, y AS pick_y, opentime AS pick_open, closetime AS pick_close, servicetime AS pick_service
    FROM  customer WHERE pindex = 0 AND id != 0
),
deliveries AS (
    SELECT pindex AS id, x AS deliver_x, y AS deliver_y, opentime AS deliver_open, closetime AS deliver_close, servicetime AS deliver_service
    FROM  customer WHERE dindex = 0 AND id != 0
)
SELECT *, pickups.id AS pick_node_id, deliveries.id AS deliver_node_id INTO orders
FROM pickups JOIN deliveries USING(id)
ORDER BY pickups.id;

SELECT id,
    x AS start_x, y AS start_y, id AS start_node_id,
    opentime AS start_open, closetime AS start_close, 
    25  AS number, 200 AS capacity
INTO vehicles
FROM customer WHERE id = 0;

WITH
A AS (SELECT id AS start_vid, x, y FROM customer),
B AS (SELECT id AS end_vid, x, y FROM customer)
SELECT start_vid, end_vid, sqrt( (a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y)) AS agg_cost
INTO dist_matrix
FROM A, B;

/*
>>>>>>> release/2.5
CREATE TABLE vehicles (
  id BIGSERIAL PRIMARY KEY, 
  start_x FLOAT, 
  start_y FLOAT, 
  start_open FLOAT, 
  start_close FLOAT, 
  "number" integer, 
  capacity FLOAT
);

INSERT INTO vehicles (start_x,  start_y,  start_open,  start_close,  "number",  capacity)
VALUES (40,  50,  0,  1236,  25,  200);
*/
