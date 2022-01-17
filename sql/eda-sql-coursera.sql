--Q1 
select unique(launch_site) from spacex;
--Q2 
select * from spacex where launch_site  like 'CCA%' limit 5;
--Q3
select sum(payload_mass__kg_) from spacex where customer = 'NASA (CRS)';
--Q4
select avg(payload_mass__kg_) from spacex where booster_version='F9 v1.1';
--Q5
select min(date) from spacex where landing__outcome='Success (ground pad)';
--Q6
select unique(booster_version) from spacex where landing__outcome='Success (drone ship)' and payload_mass__kg_ between 4000 and 6000;
--Q7
select mission_outcome,count(mission_outcome) from spacex group by mission_outcome;
--Q8
select unique(booster_version) from spacex where payload_mass__kg_ = (select max(payload_mass__kg_) from spacex);
--Q9
select booster_version,launch_site from spacex where year(date)=2015 and landing__outcome='Failure (drone ship)';
--Q10
select landing__outcome,count(landing__outcome) as counts from spacex where date between '2010-06-04' and '2017-03-20' group by landing__outcome order by counts desc
--select unique(booster_version) from spacex
--select unique(landing__outcome) from spacex;
--select unique(mission_outcome) from spacex
--genqselect * from spacex limit 3;
--select booster_version, sum(payload_mass__kg_) from spacex group by booster_version
--select unique(customer) from spacex
