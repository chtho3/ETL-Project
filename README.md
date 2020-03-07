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

We will need to extensively clean and reduce the tables to the components we are interested in. The Census data is especially robust with extraneous data that we are not necessarily interested in. The Influenza data is not nearly as robust, due in part to HIPAA regulations and related concerns. Had the Influenza data been more robust, we might have been able to draw further conclusions about Influenza vulnerability correllations with factors other than age, like poverty level or region.

<h3>Type of final production database to load the data into </h3>

We will load the data into a relational database, since our comparison points (age groups) are well-defined.

<h3>The final tables or collections that will be used in the production database.</h3>

