TRUNCATE TABLE `covid-schools-323512.covid_dataset.covid_school_cases_summary_persisted`;

INSERT INTO `covid-schools-323512.covid_dataset.covid_school_cases_summary_persisted`
SELECT * 
FROM 
`covid-schools-323512.covid_dataset.covid_school_cases_summary`;