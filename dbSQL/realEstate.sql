CREATE TABLE users(
	user_id Integer(15) not null AUTO_INCREMENT,
	user_type varchar(15) CHECK (user_type IN ("Normal","Client")),
	fname varchar(15),
	lname varchar(15),
	country varchar(15),
	district varchar(15),
	area varchar(15),
	postal_code numeric(15),
	house_no varchar(15),
	dob varchar(15) CHECK (dob LIKE "____/__/__"),
	gender varchar(15) CHECK (gender IN ("Male","Female")),
	contact varchar(15),
	mail varchar(15) CHECK (email LIKE "%@%.%"),
    date_joined varchar(8) CHECK (dob LIKE "____/__/__"),
    PRIMARY KEY (user_id)
);

CREATE TABLE apartment(
	apartment_id  Integer(15) not null AUTO_INCREMENT,
	owner_id  Integer(15),
	property_condition varchar(15) CHECK (property_condition IN ("sale","rent","sold","not available")), 
	country varchar(15),
	district varchar(15),
	area varchar(15),
	postal_code numeric(15),
	house_no varchar(15),
	size numeric(15),
	floor  numeric(15),
	lifts numeric(15),
	beds numeric(10),
	baths numeric(10),
    price  numeric(15),
	available_from varchar(15),
	details varchar(200),
    PRIMARY KEY (apartment_id),
    foreign key(owner_id) references users(user_id)
		on delete cascade
);
CREATE TABLE office(
	office_id  Integer(15) not null AUTO_INCREMENT,
	owner_id  Integer(15),
	property_condition varchar(15) CHECK (property_condition IN ("sale","rent","sold","not available")), 
	country varchar(15),
	district varchar(15),
	area varchar(15),
	postal_code numeric(15),
	house_no varchar(15),
	size numeric(15),
	floor  numeric(15),
	lifts numeric(15),
	rooms numeric(15),
	baths numeric(15),
    price  numeric(15),
	available_from varchar(15),
	details varchar(200),
    PRIMARY KEY (office_id),
    foreign key(owner_id) references users(user_id)
		on delete cascade
);
CREATE TABLE house(
	house_id  Integer(15) not null AUTO_INCREMENT,
	owner_id  Integer(15),
	property_condition varchar(15) CHECK (property_condition IN ("sale","rent","sold","not available")), 
	country varchar(15),
	district varchar(15),
	area varchar(15),
	postal_code numeric(15),
	house_no varchar(15),
	size numeric(15),
	floor  numeric(15),
	lifts numeric(15),
	beds numeric(15),
	baths numeric(15),
    price  numeric(15),
	available_from varchar(15),
	details varchar(200),
    PRIMARY KEY (house_id),
    foreign key(owner_id) references users(user_id)
		on delete cascade
);
CREATE TABLE shop(
	shop_id  Integer(15) not null AUTO_INCREMENT,
	owner_id  Integer(15),
	property_condition varchar(15) CHECK (property_condition IN ("sale","rent","sold","not available")), 
	country varchar(15),
	district varchar(15),
	area varchar(15),
	postal_code numeric(15),
	shop_no varchar(15),
	size numeric(15),
	floor  numeric(15),
	lifts numeric(15),
    price  numeric(15),
	available_from varchar(15),
	details varchar(200),
    PRIMARY KEY (shop_id ),
    foreign key(owner_id) references users(user_id)
		on delete cascade
);

CREATE TABLE apart_transaction(
	apartment_id Integer(15),
    user_id Integer(15),
    transaction_date varchar(15) CHECK (transaction_date LIKE "____/__/__"),
    PRIMARY KEY (apartment_id,user_id),
    foreign key(apartment_id) references apartment(apartment_id) on delete cascade,
    foreign key(user_id) references users(user_id) on delete cascade
);

CREATE TABLE shop_transaction(
	shop_id Integer(15),
    user_id Integer(15),
    transaction_date varchar(15) CHECK (transaction_date LIKE "____/__/__"),
    PRIMARY KEY (shop_id,user_id),
    foreign key(shop_id) references shop(shop_id) on delete cascade,
    foreign key(user_id) references users(user_id) on delete cascade
);

CREATE TABLE house_transaction(
	house_id Integer(15),
    user_id Integer(15),
    transaction_date varchar(15) CHECK (transaction_date LIKE "____/__/__"),
    PRIMARY KEY (house_id,user_id),
    foreign key(house_id) references house(house_id) on delete cascade,
    foreign key(user_id) references users(user_id) on delete cascade
);

CREATE TABLE office_transaction(
	office_id Integer(15),
    user_id Integer(15),
    transaction_date varchar(15) CHECK (transaction_date LIKE "____/__/__"),
    PRIMARY KEY (office_id,user_id),
    foreign key(office_id) references office(office_id) on delete cascade,
    foreign key(user_id) references users(user_id) on delete cascade
);