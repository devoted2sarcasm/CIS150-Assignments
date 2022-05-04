-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ERnBT7
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "MOVIE" (
    "movie_name" varchar(40)  NOT NULL ,
    "movie_id" char(7)  NOT NULL ,
    "year" int(4)  NOT NULL ,
    "duration" int  NOT NULL ,
    CONSTRAINT "pk_MOVIE" PRIMARY KEY (
        "movie_name"
    )
)

GO

CREATE TABLE "CUSTOMER" (
    "cust_first_name" varchar(20)  NOT NULL ,
    "cust_last_name" varchar(20)  NOT NULL ,
    "cust_middle_name" varchar(20)  NOT NULL ,
    "cust_dob" blob  NOT NULL ,
    "cust_ssn" char(9)  NOT NULL ,
    "cust_email" varchar(40)  NOT NULL ,
    "cust_credit" int  NOT NULL ,
    "cust_id" char(7)  NOT NULL ,
    CONSTRAINT "pk_CUSTOMER" PRIMARY KEY (
        "cust_email"
    )
)

GO

CREATE TABLE "RENTAL" (
    "rental_id" char(7)  NOT NULL ,
    "movie_rent" char(7)  NOT NULL ,
    "cust_rent" char(7)  NOT NULL ,
    "date_out" blob  NOT NULL ,
    "date_due" blob  NOT NULL ,
    CONSTRAINT "pk_RENTAL" PRIMARY KEY (
        "rental_id"
    )
)

GO

CREATE TABLE "REVIEWS" (
    "reviewer_id" char(7)  NOT NULL ,
    "movie_id" char(7)  NOT NULL ,
    "rating" varchar(5)  NOT NULL ,
    "rv_date" blob  NOT NULL ,
    "rv_content" text  NOT NULL 
)

GO

CREATE TABLE "REVIEWER" (
    "reviewer_id" char(7)  NOT NULL ,
    "reviewer_rep" blob  NOT NULL 
)

GO

ALTER TABLE "RENTAL" ADD CONSTRAINT "fk_RENTAL_movie_rent" FOREIGN KEY("movie_rent")
REFERENCES "MOVIE" ("movie_id")
GO

ALTER TABLE "RENTAL" ADD CONSTRAINT "fk_RENTAL_cust_rent" FOREIGN KEY("cust_rent")
REFERENCES "CUSTOMER" ("cust_id")
GO

ALTER TABLE "REVIEWS" ADD CONSTRAINT "fk_REVIEWS_reviewer_id" FOREIGN KEY("reviewer_id")
REFERENCES "CUSTOMER" ("cust_id")
GO

ALTER TABLE "REVIEWS" ADD CONSTRAINT "fk_REVIEWS_movie_id" FOREIGN KEY("movie_id")
REFERENCES "MOVIE" ("movie_id")
GO

ALTER TABLE "REVIEWER" ADD CONSTRAINT "fk_REVIEWER_reviewer_id" FOREIGN KEY("reviewer_id")
REFERENCES "CUSTOMER" ("cust_id")
GO

