-- The notes on my ERD didn't show up in the PDF so I'll explain a little here
-- I created the tables suggested by the assignment and also a purchases table
-- as a way of organizing data. Other than that, I think it's pretty self-explanatory,
-- I only have customer_id and ticket_id for customer because I figured a movie theater wouldn't
-- really keep the names of their customers. 

CREATE TABLE "movies" (
  "movie_id" SERIAL,
  "title" VARCHAR(100),
  "runtime" VARCHAR(7),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "tickets" (
  "ticket_id" SERIAL,
  "price" NUMERIC(5,2),
  "movie_id" INTEGER,
  "showtime" VARCHAR(8),
  PRIMARY KEY ("ticket_id"),
    FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id")
);

CREATE TABLE "concessions" (
  "concessions_id" SERIAL,
  "snack_name" VARCHAR(50),
  "price" NUMERIC(5,2),
  PRIMARY KEY ("concessions_id")
);

CREATE TABLE "customers" (
  "customer_id" SERIAL,
  "ticket_id" INTEGER,
  PRIMARY KEY ("customer_id"),
	FOREIGN KEY ("ticket_id") REFERENCES "tickets"(ticket_id)
);

CREATE TABLE "purchases" (
  "purchase_id" SERIAL,
  "customer_id" INTEGER,
  "concessions_id" INTEGER,
  "ticket_id" INTEGER,
  "amount_paid" NUMERIC(6,2),
  PRIMARY KEY ("purchase_id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id"),
	FOREIGN KEY ("ticket_id") REFERENCES "tickets"("ticket_id"),
	FOREIGN KEY ("concessions_id") REFERENCES "concessions"("concessions_id")
);



