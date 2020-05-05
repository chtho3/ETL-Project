-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kUU1sP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Influenza_Data" (
    "REGION" VARCHAR,
    "YEAR" DATE,
    "AGE 0-4" INTEGER,
    "AGE 25-49" VARCHAR,
    "AGE 25-64" INTEGER,
    "AGE 5-24" INTEGER,
    "AGE 50-64" INTEGER,
    "AGE 65" INTEGER,
    "ILITOTAL" INTEGER,
    "TOTAL PATIENTS" INTEGER
);

CREATE TABLE "Population_Data" (
    "Region" VARCHAR,
    "NAME" VARCHAR,
    "POPESTIMATE2018" INTEGER,
    CONSTRAINT "pk_Population_Data" PRIMARY KEY (
        "NAME"
     )
);

ALTER TABLE "Influenza_Data" ADD CONSTRAINT "fk_Influenza_Data_REGION" FOREIGN KEY("REGION")
REFERENCES "Population_Data" ("NAME");
