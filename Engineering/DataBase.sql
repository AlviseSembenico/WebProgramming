# Create schemas

# Create tables
CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    avatar_path VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS shops
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) unique,
    description VARCHAR(12000),
    web_site VARCHAR(255),
    global_value INT,
    owner_id INT,
    creator_id INT,
    latitude DOUBLE,
    longitude DOUBLE,
    shipping_method INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS products
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(20000),
    price DOUBLE,
    shops_id INT,
    category VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS pictures
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description 12000,
    path VARCHAR(255),
    products_id INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS cart
(
    id INT NOT NULL AUTO_INCREMENT,
    users_id INT,
    products_id INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS purchase
(
    id INT NOT NULL AUTO_INCREMENT,
    status INT,
    products_id INT,
    users_id INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS reviews
(
    id INT NOT NULL AUTO_INCREMENT,
    global_value BIGINT,
    quality INT,
    service INT,
    description VARCHAR(12000),
    creation_date INT,
    creator_id INT,
    products_id INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS anomalies
(
    id INT NOT NULL AUTO_INCREMENT,
    purchase_id INT,
    status INT,
    description VARCHAR(12000),
    solution INT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS timetables
(
	id INT NOT NULL AUTO_INCREMENT,
	close_day VARCHAR(255),
	open_time TIME,
	close_time TIME,
	shops_id INT
);



# Create FKs
ALTER TABLE shops
    ADD    FOREIGN KEY (users_id)
    REFERENCES users(id) 
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE shops
    ADD    FOREIGN KEY (users_id)
    REFERENCES users(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE shops
    ADD    FOREIGN KEY (creator_id)
    REFERENCES users(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE products
    ADD    FOREIGN KEY (shops_id)
    REFERENCES shops(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE pictures
    ADD    FOREIGN KEY (products_id)
    REFERENCES products(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE cart
    ADD    FOREIGN KEY (users_id)
    REFERENCES users(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE cart
    ADD    FOREIGN KEY (products_id)
    REFERENCES products(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE purchase
    ADD    FOREIGN KEY (products_id)
    REFERENCES products(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE purchase
    ADD    FOREIGN KEY (users_id)
    REFERENCES users(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE reviews
    ADD    FOREIGN KEY (creator_id)
    REFERENCES users(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE reviews
    ADD    FOREIGN KEY (products_id)
    REFERENCES products(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    
ALTER TABLE anomalies
    ADD    FOREIGN KEY (purchase_id)
    REFERENCES purchase(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;

ALTER TABLE timetables
	ADD FOREIGN KEY(shops_is)
	REFERENCES shops(id)
	ON UPDATE CASCADE ON DELETE CASCADE
;
    

# Create Indexes

