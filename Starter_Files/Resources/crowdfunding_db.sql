CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(100)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(100)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(100)  NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    "subcategory_id" VARCHAR(100)   NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE "category" (
    "category_id" VARCHAR(100) PRIMARY KEY  NOT NULL,
    "category" VARCHAR(100)   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT PRIMARY KEY  NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(100)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(100) PRIMARY KEY  NOT NULL,
    "subcategory" VARCHAR(100)   NOT NULL
);


SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;