CREATE TABLE categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(300) NOT NULL
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(300) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(300),
    last_name VARCHAR(300),
    email VARCHAR(300)
);

CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(300),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(50),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(50) REFERENCES categories(category_id),
    subcategory_id VARCHAR(50) REFERENCES subcategories(subcategory_id)
);


SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM contacts;
SELECT * FROM campaigns;