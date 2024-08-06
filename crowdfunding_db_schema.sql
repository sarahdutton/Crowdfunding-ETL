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
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL
);

CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(300) NOT NULL,
    description text NOT NULL,
    goal NUMERIC (10, 2) NOT NULL,
    pledged NUMERIC (10, 2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) REFERENCES categories(category_id),
    subcategory_id VARCHAR(50) REFERENCES subcategories(subcategory_id)
);

SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM contacts;
SELECT * FROM campaigns;