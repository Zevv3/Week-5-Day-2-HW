-- I used a random movie generator to get 5 movie titles and then found their runtimes
SELECT *
FROM movies;

INSERT INTO movies(
	movie_id,
	title,
	runtime
)VALUES(
	1,
	'Dancer in the Dark',
	'140min'
);

INSERT INTO movies(
	title,
	runtime
)VALUES(
	'The Dark Knight',
	'152min'
);

INSERT INTO movies(
	title,
	runtime
)VALUES(
	'Edward Scissorhands',
	'104min'
);

INSERT INTO movies(
	title,
	runtime
)VALUES(
	'SAW',
	'103'
);

INSERT INTO movies(
	title,
	runtime
)VALUES(
	'Snakes on a Plane',
	'105min'
);

-- Making tickets

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	7,
	'4:03PM'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	9,
	'4:51PM'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	1,
	'5:14'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	8,
	'5:00'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	9,
	'4:51'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	6,
	'6:05'
);

INSERT INTO tickets(
	price,
	movie_id,
	showtime
)VALUES(
	12.00,
	9,
	'4:51'
);

SELECT *
FROM tickets;

-- concessions
INSERT INTO concessions(
	concessions_id,
	snack_name,
	price
)VALUES(
	1,
	'popcorn',
	8.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'candy',
	6.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'nachos',
	9.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'soft pretzels',
	8.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'water',
	5.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'soda',
	8.00
);

INSERT INTO concessions(
	snack_name,
	price
)VALUES(
	'hot dog',
	12.00
);

SELECT *
FROM concessions;

SELECT *
FROM tickets;

INSERT INTO customers(
	customer_id,
	ticket_id
)VALUES(
	1,
	3
);

INSERT INTO customers(
	ticket_id
)VALUES(
	4
);

INSERT INTO customers(
	ticket_id
)VALUES(
	5
);

INSERT INTO customers(
	ticket_id
)VALUES(
	6
);

INSERT INTO customers(
	ticket_id
)VALUES(
	7
);

INSERT INTO customers(
	ticket_id
)VALUES(
	8
);

INSERT INTO customers(
	ticket_id
)VALUES(
	9
);

SELECT *
FROM customers;

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	1,
	1,
	3,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	2,
	1,
	4,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	3,
	1,
	5,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	4,
	1,
	6,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	5,
	1,
	7,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	6,
	1,
	8,
	20.00
);

INSERT INTO purchases(
	customer_id,
	concessions_id,
	ticket_id,
	amount_paid
)VALUES(
	7,
	1,
	9,
	20.00
);

SELECT *
FROM purchases;
