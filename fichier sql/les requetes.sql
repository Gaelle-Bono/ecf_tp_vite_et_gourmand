
CREATE DATABASE ecf_tp_vite_et_gourmand;
USE ecf_tp_vite_et_gourmand;



CREATE TABLE user (
    id INT AUTO_INCREMENT NOT NULL,
    role_id INT NOT NULL,
    email VARCHAR(180) NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(50) NOT NULL,
    address TEXT NOT NULL,
    zip_code VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id),
    UNIQUE KEY UNIQ_USER_EMAIL (email),

    CONSTRAINT FK_USER_ROLE
        FOREIGN KEY (role_id)
        REFERENCES role (id)
        ON DELETE RESTRICT
);

ou bien ????

CREATE TABLE user (
	id INT AUTO_INCREMENT NOT NULL, 
	email VARCHAR(180) NOT NULL, 
	password VARCHAR(255) NOT NULL, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL, 
	phone_number VARCHAR(50) NOT NULL, 
	address LONGTEXT NOT NULL, 
	zip_code VARCHAR(50) NOT NULL, 
	city VARCHAR(50) NOT NULL, 
	country VARCHAR(50) NOT NULL, 
    
	role_id INT NOT NULL, 
	
    UNIQUE KEY UNIQ_USER_EMAIL (email),
	INDEX IDX_8D93D649D60322AC (role_id), 
	PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id)
);


INSERT INTO role (name) VALUES
('ADMIN_ROLE'),
('USER_ROLE'),
('EMPLOYEE_ROLE');


