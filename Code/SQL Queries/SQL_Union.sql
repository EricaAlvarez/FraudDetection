/*
DROP TABLE Fraud_Train;

CREATE TABLE Fraud_Train (
	trans_date_trans_time timestamp,
	cc_num decimal,
	merchant varchar(100),
	category varchar(100),
	amt decimal,
	first varchar(100),
	last varchar(100),
	gender varchar(100),
	street varchar(100),
	city varchar(100),
	state varchar(100),
	zip int,
	lat decimal,
	long decimal,
	city_pop int,
	job varchar(100),
	dob date,
	trans_num varchar(100),
	unix_time decimal,
	merch_lat decimal,
	merch_long decimal,
	is_fraud boolean
);

SELECT * FROM Fraud_Train

CREATE TABLE Fraud_Test (
	trans_date_trans_time timestamp,
	cc_num decimal,
	merchant varchar(100),
	category varchar(100),
	amt decimal,
	first varchar(100),
	last varchar(100),
	gender varchar(100),
	street varchar(100),
	city varchar(100),
	state varchar(100),
	zip int,
	lat decimal,
	long decimal,
	city_pop int,
	job varchar(100),
	dob date,
	trans_num varchar(100),
	unix_time decimal,
	merch_lat decimal,
	merch_long decimal,
	is_fraud boolean
);

SELECT * FROM Fraud_Test
*/


(
SELECT trans_date_trans_time, cc_num, merchant, category, amt, first, last, gender, street, city, state, zip, lat, long, city_pop, job, dob, trans_num, unix_time, merch_lat, merch_long, is_fraud
FROM Fraud_Train
)
UNION ALL
(
SELECT trans_date_trans_time, cc_num, merchant, category, amt, first, last, gender, street, city, state, zip, lat, long, city_pop, job, dob, trans_num, unix_time, merch_lat, merch_long, is_fraud
FROM Fraud_Test
)

