-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/d1lyl5
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Influenza_Data" (
    "REGION" VARCHAR   NOT NULL,
    "YEAR" DATE   NOT NULL,
    "AGE 0-4" INTEGER   NOT NULL,
    "AGE 25-49" VARCHAR   NOT NULL,
    "AGE 25-64" INTEGER   NOT NULL,
    "AGE 5-24" INTEGER   NOT NULL,
    "AGE 50-64" INTEGER   NOT NULL,
    "AGE 65" INTEGER   NOT NULL,
    "ILITOTAL" INTEGER   NOT NULL,
    "TOTAL PATIENTS" INTEGER   NOT NULL
);

CREATE TABLE "Population_Data" (
    "Region" VARCHAR   NOT NULL,
    "NAME" VARCHAR   NOT NULL,
    "POPESTIMATE2018" INTEGER   NOT NULL,
    CONSTRAINT "pk_Population_Data" PRIMARY KEY (
        "Region"
     )
);

ALTER TABLE "Influenza_Data" ADD CONSTRAINT "fk_Influenza_Data_REGION" FOREIGN KEY("REGION")
REFERENCES "Population_Data" ("Region");

