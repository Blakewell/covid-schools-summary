CREATE OR REPLACE VIEW `covid-schools-323512.covid_dataset.covid_district_summary` as

SELECT
    date_reported,
    district,
    sum(active_cases) as total_active_cases,
    sum(active_cases_previous) as total_active_cases_previous,
    sum(active_cases_difference) as total_active_cases_difference,
    ROUND(sum(active_cases) / sum(total_population) * 100,2) as active_cases_percentage,
    ROUND(sum(active_cases_previous) / sum(total_population) * 100,2) as active_cases_previous_percentage,
    ROUND(sum(active_cases_difference) / sum(total_population) * 100,2) as active_cases_difference_percentage,
    sum(quarantine_total) as total_quarantine,
    sum(quarantine_total_previous) as total_quarantine_previous,
    sum(quarantine_total_difference) as total_quarantine_difference,
    ROUND(sum(quarantine_total) / sum(total_population) * 100,2) as quarantine_total_percentage,
    ROUND(sum(quarantine_total_previous) / sum(total_population) * 100,2) as quarantine_total_previous_percentage,
    ROUND(sum(quarantine_total_difference) / sum(total_population) * 100,2) as quarantine_total_difference_percentage
FROM 
`covid-schools-323512.covid_dataset.covid_school_cases_summary_persisted`
WHERE school != 'EPS Admin Center'
GROUP BY district, date_reported

