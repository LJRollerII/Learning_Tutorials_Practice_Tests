-- Visualizations will be on Looker Studio report named Average Global Temperature--

--Test to make sure query runs correctly--
/*SELECT *
FROM `bigquery-public-data.noaa_gsod.gsod1929`*/

--What was the average temperature in 1929?--
/*SELECT AVG(temp) AS mean_temp
FROM `bigquery-public-data.noaa_gsod.gsod1929`*/

--What is the average temperature for the entire dataset?--
/*SELECT AVG(temp) AS mean_temp
FROM `bigquery-public-data.noaa_gsod.gsod*`--Use asterik to select every dataset--*/

--Let's look at the average temperature by year--
/*SELECT AVG(temp) AS mean_temp, year
FROM `bigquery-public-data.noaa_gsod.gsod*`
GROUP BY year
ORDER BY year ASC */
--Visualization on Page 2 in Looker Studio--

--Let's write a query to get the location/country data--
/*SELECT temp, year, country
FROM `bigquery-public-data.noaa_gsod.gsod194*`AS gsod
JOIN `bigquery-public-data.noaa_gsod.stations` AS stations
    ON gsod.stn = stations.usaf */

--Let's get the data specifically for the average temperatures in the US, UK and India--
/*SELECT AVG(temp) AS mean_temp, year, country
FROM `bigquery-public-data.noaa_gsod.gsod194*`AS gsod
JOIN `bigquery-public-data.noaa_gsod.stations` AS stations
    ON gsod.stn = stations.usaf
WHERE country IN ('US','UK','IN')
GROUP BY year, country
ORDER BY year, country */
--Visualization on Page 3 in Looker Studio--

--Let's use a string function to get the decades of all years--
/*SELECT
    AVG(temp) AS mean_temp,
    year,
    SUBSTR(year,1,3) || "0s" AS decade, --First part allows string to stop at thrid letter/ number--
    country
FROM `bigquery-public-data.noaa_gsod.gsod19*`AS gsod
JOIN `bigquery-public-data.noaa_gsod.stations` AS stations
    ON gsod.stn = stations.usaf
WHERE country IN ('US','UK','IN')
GROUP BY year, country
ORDER BY year, country */
-- Note "||" is another way to concatenate--
--Visualization on Page 4 in Looker Studio--

--Let's run a query to get data make a Geo chart visualization--
/*SELECT
    AVG(temp) AS mean_temp,
    English_short_name_lower_case,
    ANY_VALUE(Alpha_2_code) AS location
FROM `bigquery-public-data.noaa_gsod.gsod2022` AS gsod
JOIN `bigquery-public-data.noaa_gsod.stations` AS stations ON stations.usaf = gsod.stn
JOIN `bigquery-lookerstudio-434916.avg_temp_globally_by_year.iso_country_codes` AS iso ON stations.country=iso.Alpha_2_code
WHERE English_short_name_lower_case IS NOT NULL
GROUP BY English_short_name_lower_case
ORDER BY English_short_name_lower_case */
--Visualization on Page 5 in Looker Studio--

--Let's write a query that allows us to plot a geo chart that shows the temperature change for each country over the years compared to a baseline year--
/*WITH temperature_data AS(
SELECT
    country AS country_code,
    CAST(year AS INT) AS year_int,
    AVG(temp) AS mean_temp,
FROM `bigquery-public-data.noaa_gsod.gsod*` AS gsod
JOIN `bigquery-public-data.noaa_gsod.stations` AS stations ON stations.usaf = gsod.stn
WHERE country IS NOT NULL
GROUP BY year, country
)
SELECT
        country_code,
        DATETIME(year_int,1,1,0,0,0) AS year_datetime,
        year_int,
        mean_temp,
        baseline_temp,
        mean_temp - baseline_temp AS temp_delta
    FROM temperature_data
    JOIN (
        SELECT
            AVG(mean_temp) AS baseline_temp,
            country_code
        FROM temperature_data
        WHERE year_int>=1973
        GROUP BY country_code
    ) USING (country_code)
    ORDER BY year_int, country_code */
--Visualization on Page 6 in Looker Studio--