# ETL-Project
<h1>Comparing influenza incidents to census data</h1>

In this ETL Project, we want to compare US incident rate of Influenza to US Census data to better understand the impact flu season has on different age groups. We chose to narrow our scope to the 2017-2018 flu season in order to better align with the most current available US Census data.

Team Flu_Crew: Enjoli Baez, Kaleah French, Chelsea Thompson

<h3>Data Sources</h3>
<ul>
  <li> Flu data from the CDC: https://www.cdc.gov/flu/weekly/fluviewinteractive.htm</li>
  <li> Census data from the US Gov: https://data.census.gov/</li>
</ul>

<h3>Type of Transformations needed for this data</h3>

We will need to extensively clean and reduce the tables to the components we are interested in. The Census data is especially robust with extraneous data that we are not necessarily interested in. The Influenza data is not nearly as robust, due in part to HIPAA regulations and related concerns. Had the Influenza data been more robust, we might have been able to draw further conclusions about Influenza vulnerability correllations with factors other than age and state, like poverty level or insurance status.

<h3>Type of final production database to load the data into pgadmin4</h3>

We will load the data into a relational database, since our comparison points (age groups; state) are well-defined. A more structured database format is helpful in drawing conclusions and correlations between well-defined datasets.

<h3>The final tables or collections that will be used in the production database.</h3>

The production database will end up with two tables, one for each dataset we pulled from our two sources. The first table will detail the influenza data, broken down by state into age groups and totals. The second table will detail census data, broken down in a similiar manner.

<h3>Project Constraints</h3>

Flu season is categorized by week number, and the datasets provided are adjusted from the calendar year to better portray the brunt of flu season that usually occurs from November to April of each year. For the 2017-2018 flu data, the set started on Oct 2, 2017, and ended on Sept 30, 2018. Instead of attempting to adjust census predictions to match this range exactly, we decided to use 2018 census data as a comparison. We postulate herein that populations did not significantly change in either span of three months preceding and following our matching data for both sets, from Jan 1, 2018, to Sept 30, 2018.
