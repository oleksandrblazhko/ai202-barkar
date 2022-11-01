CREATE TABLE user(
	user_id INT PRIMARY KEY,
	user_name VARCHAR NOT NULL,
	user_surname VARCHAR NOT NULL,
  gender VARCHAR NOT NULL,
  user_email VARCHAR NOT NULL,
  purchase_status VARCHAR NOT NULL
);
CREATE TABLE purchase(
	purchase_id INT PRIMARY KEY,
	user_id INT REFERENCES user(user_id),
	purchase_name VARCHAR NOT NULL,
	price DECIMAL(10, 2) NOT NULL,
  purchase_time SMALLDATETIME NOT NULL
);
CREATE TABLE schedule(
	day_id INT PRIMARY KEY,
  user_id INT REFERENCES user(user_id),
  training_date DATE,
  training_time TIME,
  dance_type VARCHAR
);
