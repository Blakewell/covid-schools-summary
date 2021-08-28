CREATE OR REPLACE VIEW `covid-schools-323512.covid_dataset.covid_district_summary_current` as
SELECT sp.* 
FROM `covid-schools-323512.covid_dataset.covid_district_summary` sp
INNER JOIN
(
    select max(date_reported) as date_reported from `covid-schools-323512.covid_dataset.covid_district_summary`
) md on sp.date_reported = md.date_reported