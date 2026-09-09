-- MinimalShop.NET PostgreSQL schema

CREATE TABLE sys_user (
 id BIGSERIAL PRIMARY KEY,
 openid VARCHAR(64),
 nickname VARCHAR(64),
 avatar VARCHAR(255),
 mobile VARCHAR(20),
 status INT DEFAULT 1,
 create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE product (
 id BIGSERIAL PRIMARY KEY,
 name VARCHAR(200) NOT NULL,
 cover VARCHAR(255),
 status INT DEFAULT 1,
 sales INT DEFAULT 0,
 create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE product_sku (
 id BIGSERIAL PRIMARY KEY,
 product_id BIGINT REFERENCES product(id),
 sku_name VARCHAR(200),
 price NUMERIC(10,2),
 stock INT DEFAULT 0,
 sales INT DEFAULT 0
);

CREATE TABLE orders (
 id BIGSERIAL PRIMARY KEY,
 order_no VARCHAR(64) UNIQUE,
 user_id BIGINT REFERENCES sys_user(id),
 order_type INT DEFAULT 0,
 total_amount NUMERIC(10,2),
 status INT DEFAULT 0,
 create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_item (
 id BIGSERIAL PRIMARY KEY,
 order_id BIGINT REFERENCES orders(id),
 product_id BIGINT,
 sku_id BIGINT,
 quantity INT,
 price NUMERIC(10,2)
);

CREATE TABLE seckill_activity (
 id BIGSERIAL PRIMARY KEY,
 name VARCHAR(200),
 start_time TIMESTAMP,
 end_time TIMESTAMP,
 status INT DEFAULT 1
);

CREATE TABLE group_activity (
 id BIGSERIAL PRIMARY KEY,
 product_id BIGINT,
 group_price NUMERIC(10,2),
 group_people INT,
 status INT DEFAULT 1
);

CREATE TABLE distribution_relation (
 id BIGSERIAL PRIMARY KEY,
 user_id BIGINT,
 parent_id BIGINT,
 level INT
);

CREATE TABLE commission_record (
 id BIGSERIAL PRIMARY KEY,
 user_id BIGINT,
 order_id BIGINT,
 amount NUMERIC(10,2),
 status INT DEFAULT 0
);
