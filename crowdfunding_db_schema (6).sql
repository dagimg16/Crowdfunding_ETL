
CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts (
    contact_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE campaign (
    cf_id VARCHAR(10) PRIMARY KEY,
    contact_id VARCHAR(10) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),  
    goal Float NOT NULL ,
    pledged Float NOT NULL,
    outcome VARCHAR(20) NOT NULL, 
    backers_count INT NOT NULL,
    country CHAR(2) NOT NULL, 
    currency CHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id) ON DELETE CASCADE
);