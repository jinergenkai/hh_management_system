CREATE TYPE weighing_status AS ENUM ('new', 'processing', 'done');
  
CREATE TABLE weighing_history (
    wh_id SERIAL PRIMARY KEY,
    customer_name varchar(100) DEFAULT 'Vô Danh',
    address varchar(255) ,
    goods_type varchar(200),
    license_plate varchar(20),
    total_weight int NULL ,
    vehicle_weight int NULL ,
    goods_weight int NULL ,
    total_weighing_date timestamp NULL ,
    vehicle_weighing_date timestamp NULL ,
    note TEXT NULL ,
    vehicle_images text[] NULL ,
    weighing_status weighing_status,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by int DEFAULT 0,
    updated_by int DEFAULT 0
);